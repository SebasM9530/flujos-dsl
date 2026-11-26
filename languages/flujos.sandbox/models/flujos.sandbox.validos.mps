<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fe08295b-2df4-43c3-b1b8-4fda4a7fe94d(flujos.sandbox.validos)">
  <persistence version="9" />
  <languages>
    <use id="e620754c-2c44-4e85-8bc6-53203e48b392" name="flujos" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="e620754c-2c44-4e85-8bc6-53203e48b392" name="flujos">
      <concept id="1843252875564747305" name="flujos.structure.IConDuracion" flags="ngI" index="1QPoqg">
        <property id="1843252875564747328" name="duracion" index="1QPorT" />
      </concept>
      <concept id="1843252875564747304" name="flujos.structure.Conjuncion" flags="ng" index="1QPoqh">
        <child id="1843252875564747327" name="derecha" index="1QPoq6" />
        <child id="1843252875564747326" name="izquierda" index="1QPoq7" />
      </concept>
      <concept id="1843252875564747297" name="flujos.structure.Transicion" flags="ng" index="1QPoqo">
        <property id="1843252875564747317" name="evento" index="1QPoqc" />
        <reference id="1843252875564747320" name="destino" index="1QPoq1" />
        <reference id="1843252875564747319" name="origen" index="1QPoqe" />
        <child id="1843252875564747318" name="guarda" index="1QPoqf" />
      </concept>
      <concept id="1843252875564747296" name="flujos.structure.EstadoFinal" flags="ng" index="1QPoqp" />
      <concept id="1843252875564747299" name="flujos.structure.LiteralEntero" flags="ng" index="1QPoqq">
        <property id="1843252875564747321" name="valor" index="1QPoq0" />
      </concept>
      <concept id="1843252875564747301" name="flujos.structure.LiteralFalso" flags="ng" index="1QPoqs" />
      <concept id="1843252875564747300" name="flujos.structure.LiteralVerdadero" flags="ng" index="1QPoqt" />
      <concept id="1843252875564747303" name="flujos.structure.Comparacion" flags="ng" index="1QPoqu">
        <property id="1843252875564747323" name="operador" index="1QPoq2" />
        <child id="1843252875564747325" name="derecha" index="1QPoq4" />
        <child id="1843252875564747324" name="izquierda" index="1QPoq5" />
      </concept>
      <concept id="1843252875564747302" name="flujos.structure.RefVariable" flags="ng" index="1QPoqv">
        <reference id="1843252875564747322" name="variable" index="1QPoq3" />
      </concept>
      <concept id="1843252875564747289" name="flujos.structure.TipoEntero" flags="ng" index="1QPoqw" />
      <concept id="1843252875564747290" name="flujos.structure.TipoBooleano" flags="ng" index="1QPoqz" />
      <concept id="1843252875564747293" name="flujos.structure.EstadoInicial" flags="ng" index="1QPoq$" />
      <concept id="1843252875564747295" name="flujos.structure.EstadoDecision" flags="ng" index="1QPoqA" />
      <concept id="1843252875564747294" name="flujos.structure.EstadoTarea" flags="ng" index="1QPoqB">
        <reference id="1843252875564747315" name="responsable" index="1QPoqa" />
      </concept>
      <concept id="1843252875564747285" name="flujos.structure.Proceso" flags="ng" index="1QPoqG">
        <child id="1843252875564747307" name="variables" index="1QPoqi" />
        <child id="1843252875564747306" name="roles" index="1QPoqj" />
        <child id="1843252875564747309" name="transiciones" index="1QPoqk" />
        <child id="1843252875564747308" name="estados" index="1QPoql" />
      </concept>
      <concept id="1843252875564747287" name="flujos.structure.Variable" flags="ng" index="1QPoqI">
        <child id="1843252875564747312" name="tipo" index="1QPoq9" />
      </concept>
      <concept id="1843252875564747286" name="flujos.structure.Rol" flags="ng" index="1QPoqJ" />
    </language>
  </registry>
  <node concept="1QPoqG" id="1Akzb_JnzON">
    <property role="TrG5h" value="SolicitudCredito" />
    <node concept="1QPoq$" id="1Akzb_JnzOO" role="1QPoql">
      <property role="TrG5h" value="Inicio" />
    </node>
    <node concept="1QPoqB" id="1Akzb_JnzOP" role="1QPoql">
      <property role="TrG5h" value="RegistrarSolicitud" />
      <property role="1QPorT" value="1" />
      <ref role="1QPoqa" node="1Akzb_JnzOV" resolve="Cliente" />
    </node>
    <node concept="1QPoqB" id="1Akzb_JnzOQ" role="1QPoql">
      <property role="TrG5h" value="EvaluarRiesgo" />
      <property role="1QPorT" value="4" />
      <ref role="1QPoqa" node="1Akzb_JnzOW" resolve="Analista" />
    </node>
    <node concept="1QPoqA" id="1Akzb_JnzOR" role="1QPoql">
      <property role="TrG5h" value="Decidir" />
    </node>
    <node concept="1QPoqB" id="1Akzb_JnzOS" role="1QPoql">
      <property role="TrG5h" value="AprobarGerencia" />
      <property role="1QPorT" value="2" />
      <ref role="1QPoqa" node="1Akzb_JnzOX" resolve="Gerente" />
    </node>
    <node concept="1QPoqp" id="1Akzb_JnzOT" role="1QPoql">
      <property role="TrG5h" value="Aprobada" />
    </node>
    <node concept="1QPoqp" id="1Akzb_JnzOU" role="1QPoql">
      <property role="TrG5h" value="Rechazada" />
    </node>
    <node concept="1QPoqJ" id="1Akzb_JnzOV" role="1QPoqj">
      <property role="TrG5h" value="Cliente" />
    </node>
    <node concept="1QPoqJ" id="1Akzb_JnzOW" role="1QPoqj">
      <property role="TrG5h" value="Analista" />
    </node>
    <node concept="1QPoqJ" id="1Akzb_JnzOX" role="1QPoqj">
      <property role="TrG5h" value="Gerente" />
    </node>
    <node concept="1QPoqI" id="1Akzb_JnzOY" role="1QPoqi">
      <property role="TrG5h" value="monto" />
      <node concept="1QPoqw" id="1Akzb_JnzOZ" role="1QPoq9" />
    </node>
    <node concept="1QPoqI" id="1Akzb_JnzP0" role="1QPoqi">
      <property role="TrG5h" value="aprobado" />
      <node concept="1QPoqz" id="1Akzb_JnzP1" role="1QPoq9" />
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzP2" role="1QPoqk">
      <property role="1QPoqc" value="iniciar" />
      <ref role="1QPoqe" node="1Akzb_JnzOO" resolve="Inicio" />
      <ref role="1QPoq1" node="1Akzb_JnzOP" resolve="RegistrarSolicitud" />
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzP3" role="1QPoqk">
      <property role="1QPoqc" value="enviar" />
      <ref role="1QPoqe" node="1Akzb_JnzOP" resolve="RegistrarSolicitud" />
      <ref role="1QPoq1" node="1Akzb_JnzOQ" resolve="EvaluarRiesgo" />
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzP4" role="1QPoqk">
      <property role="1QPoqc" value="evaluado" />
      <ref role="1QPoqe" node="1Akzb_JnzOQ" resolve="EvaluarRiesgo" />
      <ref role="1QPoq1" node="1Akzb_JnzOR" resolve="Decidir" />
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzP5" role="1QPoqk">
      <property role="1QPoqc" value="revisar" />
      <ref role="1QPoqe" node="1Akzb_JnzOR" resolve="Decidir" />
      <ref role="1QPoq1" node="1Akzb_JnzOS" resolve="AprobarGerencia" />
      <node concept="1QPoqu" id="1Akzb_JnzP6" role="1QPoqf">
        <property role="1QPoq2" value="4yZjRRLmWGE/mayor" />
        <node concept="1QPoqv" id="1Akzb_JnzP7" role="1QPoq5">
          <ref role="1QPoq3" node="1Akzb_JnzOY" resolve="monto" />
        </node>
        <node concept="1QPoqq" id="1Akzb_JnzP8" role="1QPoq4">
          <property role="1QPoq0" value="1000" />
        </node>
      </node>
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzP9" role="1QPoqk">
      <property role="1QPoqc" value="aprobar" />
      <ref role="1QPoqe" node="1Akzb_JnzOR" resolve="Decidir" />
      <ref role="1QPoq1" node="1Akzb_JnzOT" resolve="Aprobada" />
      <node concept="1QPoqu" id="1Akzb_JnzPa" role="1QPoqf">
        <property role="1QPoq2" value="7ZABDOy96rf/menorIgual" />
        <node concept="1QPoqv" id="1Akzb_JnzPb" role="1QPoq5">
          <ref role="1QPoq3" node="1Akzb_JnzOY" resolve="monto" />
        </node>
        <node concept="1QPoqq" id="1Akzb_JnzPc" role="1QPoq4">
          <property role="1QPoq0" value="1000" />
        </node>
      </node>
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzPd" role="1QPoqk">
      <property role="1QPoqc" value="firmar" />
      <ref role="1QPoqe" node="1Akzb_JnzOS" resolve="AprobarGerencia" />
      <ref role="1QPoq1" node="1Akzb_JnzOT" resolve="Aprobada" />
      <node concept="1QPoqu" id="1Akzb_JnzPe" role="1QPoqf">
        <node concept="1QPoqv" id="1Akzb_JnzPf" role="1QPoq5">
          <ref role="1QPoq3" node="1Akzb_JnzP0" resolve="aprobado" />
        </node>
        <node concept="1QPoqt" id="1Akzb_JnzPg" role="1QPoq4" />
      </node>
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzPh" role="1QPoqk">
      <property role="1QPoqc" value="rechazar" />
      <ref role="1QPoqe" node="1Akzb_JnzOS" resolve="AprobarGerencia" />
      <ref role="1QPoq1" node="1Akzb_JnzOU" resolve="Rechazada" />
      <node concept="1QPoqu" id="1Akzb_JnzPi" role="1QPoqf">
        <node concept="1QPoqv" id="1Akzb_JnzPj" role="1QPoq5">
          <ref role="1QPoq3" node="1Akzb_JnzP0" resolve="aprobado" />
        </node>
        <node concept="1QPoqs" id="1Akzb_JnzPk" role="1QPoq4" />
      </node>
    </node>
  </node>
  <node concept="1QPoqG" id="1Akzb_JnzPl">
    <property role="TrG5h" value="SoporteTecnico" />
    <node concept="1QPoq$" id="1Akzb_JnzPm" role="1QPoql">
      <property role="TrG5h" value="Inicio" />
    </node>
    <node concept="1QPoqB" id="1Akzb_JnzPn" role="1QPoql">
      <property role="TrG5h" value="RecibirTicket" />
      <property role="1QPorT" value="1" />
      <ref role="1QPoqa" node="1Akzb_JnzPt" resolve="MesaDeAyuda" />
    </node>
    <node concept="1QPoqB" id="1Akzb_JnzPo" role="1QPoql">
      <property role="TrG5h" value="Diagnosticar" />
      <property role="1QPorT" value="3" />
      <ref role="1QPoqa" node="1Akzb_JnzPu" resolve="Especialista" />
    </node>
    <node concept="1QPoqA" id="1Akzb_JnzPp" role="1QPoql">
      <property role="TrG5h" value="Verificar" />
    </node>
    <node concept="1QPoqB" id="1Akzb_JnzPq" role="1QPoql">
      <property role="TrG5h" value="Escalar" />
      <property role="1QPorT" value="5" />
      <ref role="1QPoqa" node="1Akzb_JnzPu" resolve="Especialista" />
    </node>
    <node concept="1QPoqp" id="1Akzb_JnzPr" role="1QPoql">
      <property role="TrG5h" value="Cerrado" />
    </node>
    <node concept="1QPoqp" id="1Akzb_JnzPs" role="1QPoql">
      <property role="TrG5h" value="Abandonado" />
    </node>
    <node concept="1QPoqJ" id="1Akzb_JnzPt" role="1QPoqj">
      <property role="TrG5h" value="MesaDeAyuda" />
    </node>
    <node concept="1QPoqJ" id="1Akzb_JnzPu" role="1QPoqj">
      <property role="TrG5h" value="Especialista" />
    </node>
    <node concept="1QPoqI" id="1Akzb_JnzPv" role="1QPoqi">
      <property role="TrG5h" value="resuelto" />
      <node concept="1QPoqz" id="1Akzb_JnzPw" role="1QPoq9" />
    </node>
    <node concept="1QPoqI" id="1Akzb_JnzPx" role="1QPoqi">
      <property role="TrG5h" value="intentos" />
      <node concept="1QPoqw" id="1Akzb_JnzPy" role="1QPoq9" />
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzPz" role="1QPoqk">
      <property role="1QPoqc" value="abrir" />
      <ref role="1QPoqe" node="1Akzb_JnzPm" resolve="Inicio" />
      <ref role="1QPoq1" node="1Akzb_JnzPn" resolve="RecibirTicket" />
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzP$" role="1QPoqk">
      <property role="1QPoqc" value="asignar" />
      <ref role="1QPoqe" node="1Akzb_JnzPn" resolve="RecibirTicket" />
      <ref role="1QPoq1" node="1Akzb_JnzPo" resolve="Diagnosticar" />
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzP_" role="1QPoqk">
      <property role="1QPoqc" value="probar" />
      <ref role="1QPoqe" node="1Akzb_JnzPo" resolve="Diagnosticar" />
      <ref role="1QPoq1" node="1Akzb_JnzPp" resolve="Verificar" />
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzPA" role="1QPoqk">
      <property role="1QPoqc" value="cerrar" />
      <ref role="1QPoqe" node="1Akzb_JnzPp" resolve="Verificar" />
      <ref role="1QPoq1" node="1Akzb_JnzPr" resolve="Cerrado" />
      <node concept="1QPoqu" id="1Akzb_JnzPB" role="1QPoqf">
        <node concept="1QPoqv" id="1Akzb_JnzPC" role="1QPoq5">
          <ref role="1QPoq3" node="1Akzb_JnzPv" resolve="resuelto" />
        </node>
        <node concept="1QPoqt" id="1Akzb_JnzPD" role="1QPoq4" />
      </node>
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzPE" role="1QPoqk">
      <property role="1QPoqc" value="escalar" />
      <ref role="1QPoqe" node="1Akzb_JnzPp" resolve="Verificar" />
      <ref role="1QPoq1" node="1Akzb_JnzPq" resolve="Escalar" />
      <node concept="1QPoqh" id="1Akzb_JnzPF" role="1QPoqf">
        <node concept="1QPoqu" id="1Akzb_JnzPG" role="1QPoq7">
          <node concept="1QPoqv" id="1Akzb_JnzPH" role="1QPoq5">
            <ref role="1QPoq3" node="1Akzb_JnzPv" resolve="resuelto" />
          </node>
          <node concept="1QPoqs" id="1Akzb_JnzPI" role="1QPoq4" />
        </node>
        <node concept="1QPoqu" id="1Akzb_JnzPJ" role="1QPoq6">
          <property role="1QPoq2" value="2gBrdvOqFpm/menor" />
          <node concept="1QPoqv" id="1Akzb_JnzPK" role="1QPoq5">
            <ref role="1QPoq3" node="1Akzb_JnzPx" resolve="intentos" />
          </node>
          <node concept="1QPoqq" id="1Akzb_JnzPL" role="1QPoq4">
            <property role="1QPoq0" value="3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzPM" role="1QPoqk">
      <property role="1QPoqc" value="abandonar" />
      <ref role="1QPoqe" node="1Akzb_JnzPp" resolve="Verificar" />
      <ref role="1QPoq1" node="1Akzb_JnzPs" resolve="Abandonado" />
      <node concept="1QPoqh" id="1Akzb_JnzPN" role="1QPoqf">
        <node concept="1QPoqu" id="1Akzb_JnzPO" role="1QPoq7">
          <node concept="1QPoqv" id="1Akzb_JnzPP" role="1QPoq5">
            <ref role="1QPoq3" node="1Akzb_JnzPv" resolve="resuelto" />
          </node>
          <node concept="1QPoqs" id="1Akzb_JnzPQ" role="1QPoq4" />
        </node>
        <node concept="1QPoqu" id="1Akzb_JnzPR" role="1QPoq6">
          <property role="1QPoq2" value="1oi$mvzxQ1t/mayorIgual" />
          <node concept="1QPoqv" id="1Akzb_JnzPS" role="1QPoq5">
            <ref role="1QPoq3" node="1Akzb_JnzPx" resolve="intentos" />
          </node>
          <node concept="1QPoqq" id="1Akzb_JnzPT" role="1QPoq4">
            <property role="1QPoq0" value="3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzPU" role="1QPoqk">
      <property role="1QPoqc" value="reintentar" />
      <ref role="1QPoqe" node="1Akzb_JnzPq" resolve="Escalar" />
      <ref role="1QPoq1" node="1Akzb_JnzPo" resolve="Diagnosticar" />
    </node>
  </node>
  <node concept="1QPoqG" id="1Akzb_JnzPV">
    <property role="TrG5h" value="PedidoEnLinea" />
    <node concept="1QPoq$" id="1Akzb_JnzPW" role="1QPoql">
      <property role="TrG5h" value="Inicio" />
    </node>
    <node concept="1QPoqB" id="1Akzb_JnzPX" role="1QPoql">
      <property role="TrG5h" value="Pagar" />
      <property role="1QPorT" value="1" />
      <ref role="1QPoqa" node="1Akzb_JnzQ2" resolve="Comprador" />
    </node>
    <node concept="1QPoqB" id="1Akzb_JnzPY" role="1QPoql">
      <property role="TrG5h" value="Empacar" />
      <property role="1QPorT" value="2" />
      <ref role="1QPoqa" node="1Akzb_JnzQ3" resolve="Bodega" />
    </node>
    <node concept="1QPoqB" id="1Akzb_JnzPZ" role="1QPoql">
      <property role="TrG5h" value="Despachar" />
      <property role="1QPorT" value="24" />
      <ref role="1QPoqa" node="1Akzb_JnzQ4" resolve="Transportador" />
    </node>
    <node concept="1QPoqp" id="1Akzb_JnzQ0" role="1QPoql">
      <property role="TrG5h" value="Entregado" />
    </node>
    <node concept="1QPoqp" id="1Akzb_JnzQ1" role="1QPoql">
      <property role="TrG5h" value="Cancelado" />
    </node>
    <node concept="1QPoqJ" id="1Akzb_JnzQ2" role="1QPoqj">
      <property role="TrG5h" value="Comprador" />
    </node>
    <node concept="1QPoqJ" id="1Akzb_JnzQ3" role="1QPoqj">
      <property role="TrG5h" value="Bodega" />
    </node>
    <node concept="1QPoqJ" id="1Akzb_JnzQ4" role="1QPoqj">
      <property role="TrG5h" value="Transportador" />
    </node>
    <node concept="1QPoqI" id="1Akzb_JnzQ5" role="1QPoqi">
      <property role="TrG5h" value="pagado" />
      <node concept="1QPoqz" id="1Akzb_JnzQ6" role="1QPoq9" />
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzQ7" role="1QPoqk">
      <property role="1QPoqc" value="comprar" />
      <ref role="1QPoqe" node="1Akzb_JnzPW" resolve="Inicio" />
      <ref role="1QPoq1" node="1Akzb_JnzPX" resolve="Pagar" />
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzQ8" role="1QPoqk">
      <property role="1QPoqc" value="confirmar" />
      <ref role="1QPoqe" node="1Akzb_JnzPX" resolve="Pagar" />
      <ref role="1QPoq1" node="1Akzb_JnzPY" resolve="Empacar" />
      <node concept="1QPoqu" id="1Akzb_JnzQ9" role="1QPoqf">
        <node concept="1QPoqv" id="1Akzb_JnzQa" role="1QPoq5">
          <ref role="1QPoq3" node="1Akzb_JnzQ5" resolve="pagado" />
        </node>
        <node concept="1QPoqt" id="1Akzb_JnzQb" role="1QPoq4" />
      </node>
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzQc" role="1QPoqk">
      <property role="1QPoqc" value="cancelar" />
      <ref role="1QPoqe" node="1Akzb_JnzPX" resolve="Pagar" />
      <ref role="1QPoq1" node="1Akzb_JnzQ1" resolve="Cancelado" />
      <node concept="1QPoqu" id="1Akzb_JnzQd" role="1QPoqf">
        <node concept="1QPoqv" id="1Akzb_JnzQe" role="1QPoq5">
          <ref role="1QPoq3" node="1Akzb_JnzQ5" resolve="pagado" />
        </node>
        <node concept="1QPoqs" id="1Akzb_JnzQf" role="1QPoq4" />
      </node>
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzQg" role="1QPoqk">
      <property role="1QPoqc" value="empacado" />
      <ref role="1QPoqe" node="1Akzb_JnzPY" resolve="Empacar" />
      <ref role="1QPoq1" node="1Akzb_JnzPZ" resolve="Despachar" />
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzQh" role="1QPoqk">
      <property role="1QPoqc" value="entregar" />
      <ref role="1QPoqe" node="1Akzb_JnzPZ" resolve="Despachar" />
      <ref role="1QPoq1" node="1Akzb_JnzQ0" resolve="Entregado" />
    </node>
  </node>
</model>

