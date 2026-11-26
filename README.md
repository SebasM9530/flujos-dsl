# flujos — DSL con razonador para procesos de negocio (JetBrains MPS 2026.2)

`flujos` es un Lenguaje de Dominio Específico para modelar **procesos de negocio** (flujos de trabajo con
roles, tareas, decisiones y transiciones con guardas) y **razonar automáticamente** sobre ellos.

El razonador trata cada proceso como un **sistema de transición de estados** (un grafo dirigido) y:

- **Verifica consistencia**: estados inalcanzables, bloqueos (*deadlocks*), ciclos infinitos sin salida
  (*livelocks*), estados desde los que no se puede terminar, transiciones no deterministas y decisiones mal formadas.
- **Infiere información nueva**: duración mínima y ruta más corta (Dijkstra), camino crítico / duración máxima
  (programación dinámica sobre orden topológico) y carga de trabajo por rol.
- **Genera** un reporte JSON por proceso con el modelo y todas las deducciones.

## Requisitos

- JetBrains MPS **2026.2** (trae su propio JDK).

## Cómo abrir y ejecutar

1. En MPS: **File → Open** y seleccionar la carpeta del repositorio (`flujos-dsl`).
2. **Build → Rebuild Project** (la primera vez compila el lenguaje).
3. En el panel *Logical View* abrir `flujos.sandbox` → modelos:
   - `flujos.sandbox.validos`: `SolicitudCredito`, `SoporteTecnico`, `PedidoEnLinea` (sin errores).
   - `flujos.sandbox.invalidos`: `ProcesoConBloqueo`, `ProcesoCicloInfinito`, `ProcesoMalTipado`
     (el editor subraya en rojo/amarillo cada problema detectado; pasar el mouse muestra el mensaje).
4. **Generar el reporte**: clic derecho sobre un modelo de la sandbox → *Make Model* (o *Rebuild Model*).
   Los reportes quedan en `languages/flujos.sandbox/source_gen/flujos/sandbox/<validos|invalidos>/<Proceso>.json`.
5. **Pruebas automatizadas**: clic derecho sobre el modelo `flujos.tests@tests` (solución `flujos.tests`)
   → *Run Tests*. Son 31 pruebas (9 de inferencia + 22 verificaciones de errores, advertencias y tipos).

## Cómo escribir un proceso nuevo

En un modelo de la sandbox: clic derecho → *New → flujos → proceso*. Dentro del editor se escribe con
`Ctrl+Espacio` (autocompletado). Ejemplo de la notación:

```
proceso SolicitudCredito
  roles:        rol Cliente   rol Analista   rol Gerente
  variables:    variable monto : entero   variable aprobado : booleano
  estados:
    inicial Inicio
    tarea RegistrarSolicitud por Cliente duracion 1 h
    tarea EvaluarRiesgo por Analista duracion 4 h
    decision Decidir
    final Aprobada
  transiciones:
    Inicio -> RegistrarSolicitud al evento iniciar si <no guarda>
    Decidir -> Aprobada al evento aprobar si monto <= 1000
  matriz de adyacencia (fila = origen, columna = destino):
    [tabla generada automáticamente; Enter en una celda vacía crea la transición]
```

## Estructura del repositorio

| Ruta | Contenido |
|---|---|
| `languages/flujos/models/flujos.structure.mps` | Metamodelo (AST): 20 conceptos, 1 interfaz, 1 enumeración |
| `languages/flujos/models/flujos.editor.mps` | Proyecciones textuales + tabla `MatrizAdyacencia` (`jetbrains.mps.lang.editor.table`) |
| `languages/flujos/models/flujos.constraints.mps` | Reglas de alcance (scoping) de las referencias |
| `languages/flujos/models/flujos.behavior.mps` | `Proceso.getScope` y la clase `Razonador` (algoritmos sobre grafos) |
| `languages/flujos/models/flujos.typesystem.mps` | Reglas de inferencia de tipos y reglas de verificación |
| `languages/flujos/models/flujos.textGen.mps` | Generador del reporte JSON |
| `languages/flujos.sandbox` | 3 modelos válidos y 3 inválidos |
| `solutions/flujos.tests` | Pruebas `jetbrains.mps.lang.test` |
| `docs/` | Fundamentación teórica |
