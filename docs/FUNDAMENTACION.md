# Fundamentación teórica del DSL `flujos`

## 1. Problema y justificación

Los procesos de negocio (aprobación de créditos, soporte técnico, pedidos en línea) suelen documentarse en
diagramas o texto libre. Ninguno de esos formatos permite **detectar automáticamente** errores lógicos como
tareas que nunca se ejecutan, flujos que se quedan bloqueados o ciclos que nunca terminan. Un lenguaje de
propósito general (Java, Python) tampoco expresa el dominio de forma directa.

Un DSL resuelve ambas cosas: el analista escribe el proceso con los conceptos del dominio (rol, tarea,
decisión, guarda) y el **razonador** verifica propiedades formales sobre el modelo antes de ponerlo en producción.

**Pregunta de investigación.** *¿Cómo garantizar, de forma automática y decidible, que un flujo de trabajo
modelado como sistema de transición de estados esté libre de bloqueos, estados inalcanzables y ciclos sin
salida, y cómo deducir a partir de él métricas de costo (duración mínima, camino crítico, carga por rol)?*

## 2. Mapeo MPS ↔ Teoría de la Computación

| Aspecto MPS | Fundamento | Implementación en `flujos` |
|---|---|---|
| **Structure** | Árboles de Sintaxis Abstracta y gramáticas de árboles | 20 conceptos con herencia (`Estado` → `EstadoInicial`/`EstadoTarea`/`EstadoDecision`/`EstadoFinal`), interfaz `IConDuracion`, composición (hijos) y referencias (`origen`, `destino`, `responsable`, `variable`) |
| **Editor** | Sintaxis concreta; la edición proyectiva elimina la ambigüedad porque no hay *parser*: el usuario edita el AST directamente | Notación textual propia del dominio + proyección tabular (matriz de adyacencia con `jetbrains.mps.lang.editor.table`) |
| **Constraints** | Sensibilidad al contexto (una gramática libre de contexto no puede expresar "la referencia debe apuntar a un estado declarado en *este* proceso") | `Proceso` implementa `ScopeProvider`; `origen`/`destino` solo ven estados del mismo proceso, `responsable` solo sus roles, `RefVariable` solo sus variables |
| **Typesystem** | Sistemas de tipos y reglas de inferencia (juicios de tipado Γ ⊢ e : τ) | Reglas `typeof_*` para literales, variables, comparaciones y conjunciones; verificación de que toda guarda es booleana |
| **Razonador** | Grafos, alcanzabilidad (punto fijo), componentes fuertemente conexas, caminos mínimos, decidibilidad | Clase `Razonador` + regla de verificación `check_Razonador` que marca cada problema sobre el nodo exacto |
| **Generator (TextGen)** | Semántica denotacional: traducción del modelo a un artefacto con significado | `Proceso_TextGen` produce `<Proceso>.json` con el modelo y las deducciones del razonador |

## 3. Gramática abstracta (AST)

```
Proceso      ::= nombre  Rol*  Variable*  Estado+  Transicion*
Rol          ::= nombre
Variable     ::= nombre  TipoDato
TipoDato     ::= entero | booleano | texto
Estado       ::= EstadoInicial(nombre)
               | EstadoTarea(nombre, responsable: ↑Rol, duracion: ℕ)     -- implementa IConDuracion
               | EstadoDecision(nombre)
               | EstadoFinal(nombre)
Transicion   ::= origen: ↑Estado  destino: ↑Estado  evento: String  guarda: Expresion?
Expresion    ::= LiteralEntero(ℤ) | LiteralVerdadero | LiteralFalso
               | RefVariable(↑Variable)
               | Comparacion(Expresion, Op, Expresion)        Op ∈ {<, <=, >, >=, ==, !=}
               | Conjuncion(Expresion, Expresion)
```

`↑X` denota una **referencia** (arista no contenedora del AST, resuelta por las reglas de alcance).

## 4. Semántica estática

### 4.1 Reglas de alcance (scoping)

Para una referencia `r` dentro de un proceso `P`:

- `scope(Transicion.origen) = scope(Transicion.destino) = P.estados`
- `scope(EstadoTarea.responsable) = P.roles`
- `scope(RefVariable.variable) = P.variables`

Se implementa con *scoping heredado*: la referencia sube por el árbol hasta el `ScopeProvider` más cercano
(`Proceso.getScope`), que decide según el concepto buscado.

### 4.2 Reglas de tipado

Γ es el entorno de variables del proceso (Γ(x) = tipo declarado de `x`).

```
                                                Γ(x) = τ
 ──────────────────     ───────────────────    ─────────────
  Γ ⊢ n : entero         Γ ⊢ verdadero : booleano    Γ ⊢ x : τ

  Γ ⊢ e1 : τ    Γ ⊢ e2 : τ    op ∈ {==, !=}
 ──────────────────────────────────────────
         Γ ⊢ e1 op e2 : booleano

  Γ ⊢ e1 : entero    Γ ⊢ e2 : entero    op ∈ {<, <=, >, >=}
 ─────────────────────────────────────────────────────────
                Γ ⊢ e1 op e2 : booleano

  Γ ⊢ e1 : booleano    Γ ⊢ e2 : booleano          Γ ⊢ g : booleano
 ───────────────────────────────────────        ─────────────────────────
        Γ ⊢ e1 y e2 : booleano                   transición con guarda g bien tipada
```

Además: toda tarea debe tener `duracion > 0`.

## 5. Semántica del razonador

Un proceso define un grafo dirigido **G = (V, E)** con V = estados, E = {(origen(t), destino(t)) | t transición},
estado inicial s₀ y conjunto de estados finales F ⊆ V.

| Propiedad | Definición formal | Algoritmo | Complejidad |
|---|---|---|---|
| Alcanzables | menor punto fijo: R₀ = {s₀}, Rᵢ₊₁ = Rᵢ ∪ {v \| (u,v) ∈ E, u ∈ Rᵢ} | BFS | O(\|V\| + \|E\|) |
| Inalcanzables (error) | V \ Reach(s₀) | BFS | O(\|V\| + \|E\|) |
| Co-alcanzables | {v \| ∃ camino v →* f, f ∈ F} | BFS sobre el grafo transpuesto | O(\|V\| + \|E\|) |
| Deadlock (error) | v ∉ F ∧ succ(v) = ∅ | recorrido de nodos | O(\|V\| + \|E\|) |
| Sin terminación (advertencia) | v ∈ Reach ∧ v ∉ CoReach ∧ succ(v) ≠ ∅ | combinación de los anteriores | O(\|V\| + \|E\|) |
| Livelock (error) | componente fuertemente conexa C no trivial con C ∩ F = ∅ y sin aristas que salgan de C | Tarjan | O(\|V\| + \|E\|) |
| No determinismo (advertencia) | t₁ ≠ t₂, mismo origen, mismo evento, ambas sin guarda | comparación por pares | O(\|E\|²) |
| Decisión mal formada (advertencia) | decisión con < 2 salidas o alguna salida sin guarda | recorrido | O(\|V\|·\|E\|) |
| Duración mínima / ruta | min Σ d(v) sobre caminos s₀ →* f, con peso w(u,v) = duración(v) ≥ 0 | Dijkstra | O(\|V\|² + \|E\|) |
| Camino crítico | max Σ d(v) sobre caminos s₀ →* f (solo si G es acíclico) | DP en orden topológico (Kahn) | O(\|V\| + \|E\|) |
| Carga por rol | carga(r) = Σ duración(t), t tarea con responsable r | agregación | O(\|V\|) |

## 6. Decidibilidad y limitaciones

- Como **V y E son finitos**, todas las propiedades anteriores son **decidibles** y se calculan en tiempo
  polinomial. El razonador siempre termina.
- **Abstracción de las guardas.** El razonador trata cada guarda como "posiblemente verdadera", es decir,
  hace una **sobre-aproximación** del comportamiento. Si dice que un estado es inalcanzable, lo es con
  certeza. Si dice que es alcanzable, puede no serlo cuando las guardas son contradictorias (por ejemplo,
  `monto > 5 y monto < 3`).
- Evaluar las guardas con exactitud sobre variables enteras no acotadas convierte el modelo en algo
  equivalente a una **máquina de contadores (Minsky)**. Para esa clase de máquinas la alcanzabilidad es
  **indecidible** en general. Por eso la abstracción es una decisión de diseño, no un descuido.
- **Trabajo futuro:**
  - Resolver la satisfacibilidad de guardas con un solucionador SMT (Z3) para dominios acotados.
  - Simular paso a paso con valores concretos.
  - Exportar a un verificador de modelos (por ejemplo, redes de Petri o NuSMV).

## 7. Reparto de roles (4 integrantes)

| Integrante | Responsabilidad |
|---|---|
| 1 | Structure y Editor (metamodelo, notación textual, proyección tabular) |
| 2 | Constraints y Typesystem (scoping, reglas de inferencia de tipos) |
| 3 | Razonador (algoritmos de grafos, complejidad, decidibilidad) |
| 4 | Generator, sandbox y pruebas automatizadas |

Si el grupo es de 3, el integrante 4 se reparte entre el 1 (sandbox) y el 2 (pruebas).
