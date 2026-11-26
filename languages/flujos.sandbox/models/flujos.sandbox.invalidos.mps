<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9c7f7589-7f3e-443c-9a83-148a3bf37733(flujos.sandbox.invalidos)">
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
  <node concept="1QPoqG" id="1Akzb_JnzQi">
    <property role="TrG5h" value="ProcesoConBloqueo" />
    <node concept="1QPoq$" id="1Akzb_JnzQj" role="1QPoql">
      <property role="TrG5h" value="Inicio" />
    </node>
    <node concept="1QPoqB" id="1Akzb_JnzQk" role="1QPoql">
      <property role="TrG5h" value="Revisar" />
      <property role="1QPorT" value="3" />
      <ref role="1QPoqa" node="1Akzb_JnzQn" resolve="Auditor" />
    </node>
    <node concept="1QPoqB" id="1Akzb_JnzQl" role="1QPoql">
      <property role="TrG5h" value="Archivar" />
      <property role="1QPorT" value="1" />
      <ref role="1QPoqa" node="1Akzb_JnzQn" resolve="Auditor" />
    </node>
    <node concept="1QPoqp" id="1Akzb_JnzQm" role="1QPoql">
      <property role="TrG5h" value="Fin" />
    </node>
    <node concept="1QPoqJ" id="1Akzb_JnzQn" role="1QPoqj">
      <property role="TrG5h" value="Auditor" />
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzQo" role="1QPoqk">
      <property role="1QPoqc" value="empezar" />
      <ref role="1QPoqe" node="1Akzb_JnzQj" resolve="Inicio" />
      <ref role="1QPoq1" node="1Akzb_JnzQk" resolve="Revisar" />
    </node>
  </node>
  <node concept="1QPoqG" id="1Akzb_JnzQp">
    <property role="TrG5h" value="ProcesoCicloInfinito" />
    <node concept="1QPoq$" id="1Akzb_JnzQq" role="1QPoql">
      <property role="TrG5h" value="Inicio" />
    </node>
    <node concept="1QPoqB" id="1Akzb_JnzQr" role="1QPoql">
      <property role="TrG5h" value="Esperar" />
      <property role="1QPorT" value="1" />
      <ref role="1QPoqa" node="1Akzb_JnzQu" resolve="Robot" />
    </node>
    <node concept="1QPoqB" id="1Akzb_JnzQs" role="1QPoql">
      <property role="TrG5h" value="Reintentar" />
      <property role="1QPorT" value="1" />
      <ref role="1QPoqa" node="1Akzb_JnzQu" resolve="Robot" />
    </node>
    <node concept="1QPoqp" id="1Akzb_JnzQt" role="1QPoql">
      <property role="TrG5h" value="Fin" />
    </node>
    <node concept="1QPoqJ" id="1Akzb_JnzQu" role="1QPoqj">
      <property role="TrG5h" value="Robot" />
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzQv" role="1QPoqk">
      <property role="1QPoqc" value="arrancar" />
      <ref role="1QPoqe" node="1Akzb_JnzQq" resolve="Inicio" />
      <ref role="1QPoq1" node="1Akzb_JnzQr" resolve="Esperar" />
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzQw" role="1QPoqk">
      <property role="1QPoqc" value="arrancar" />
      <ref role="1QPoqe" node="1Akzb_JnzQq" resolve="Inicio" />
      <ref role="1QPoq1" node="1Akzb_JnzQr" resolve="Esperar" />
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzQx" role="1QPoqk">
      <property role="1QPoqc" value="timeout" />
      <ref role="1QPoqe" node="1Akzb_JnzQr" resolve="Esperar" />
      <ref role="1QPoq1" node="1Akzb_JnzQs" resolve="Reintentar" />
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzQy" role="1QPoqk">
      <property role="1QPoqc" value="timeout" />
      <ref role="1QPoqe" node="1Akzb_JnzQs" resolve="Reintentar" />
      <ref role="1QPoq1" node="1Akzb_JnzQr" resolve="Esperar" />
    </node>
  </node>
  <node concept="1QPoqG" id="1Akzb_JnzQz">
    <property role="TrG5h" value="ProcesoMalTipado" />
    <node concept="1QPoq$" id="1Akzb_JnzQ$" role="1QPoql">
      <property role="TrG5h" value="Inicio" />
    </node>
    <node concept="1QPoq$" id="1Akzb_JnzQ_" role="1QPoql">
      <property role="TrG5h" value="OtroInicio" />
    </node>
    <node concept="1QPoqB" id="1Akzb_JnzQA" role="1QPoql">
      <property role="TrG5h" value="Procesar" />
      <property role="1QPorT" value="0" />
      <ref role="1QPoqa" node="1Akzb_JnzQD" resolve="Operador" />
    </node>
    <node concept="1QPoqA" id="1Akzb_JnzQB" role="1QPoql">
      <property role="TrG5h" value="Elegir" />
    </node>
    <node concept="1QPoqp" id="1Akzb_JnzQC" role="1QPoql">
      <property role="TrG5h" value="Fin" />
    </node>
    <node concept="1QPoqJ" id="1Akzb_JnzQD" role="1QPoqj">
      <property role="TrG5h" value="Operador" />
    </node>
    <node concept="1QPoqI" id="1Akzb_JnzQE" role="1QPoqi">
      <property role="TrG5h" value="monto" />
      <node concept="1QPoqw" id="1Akzb_JnzQF" role="1QPoq9" />
    </node>
    <node concept="1QPoqI" id="1Akzb_JnzQG" role="1QPoqi">
      <property role="TrG5h" value="activo" />
      <node concept="1QPoqz" id="1Akzb_JnzQH" role="1QPoq9" />
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzQI" role="1QPoqk">
      <property role="1QPoqc" value="ir" />
      <ref role="1QPoqe" node="1Akzb_JnzQ$" resolve="Inicio" />
      <ref role="1QPoq1" node="1Akzb_JnzQA" resolve="Procesar" />
      <node concept="1QPoqu" id="1Akzb_JnzQJ" role="1QPoqf">
        <property role="1QPoq2" value="4yZjRRLmWGE/mayor" />
        <node concept="1QPoqv" id="1Akzb_JnzQK" role="1QPoq5">
          <ref role="1QPoq3" node="1Akzb_JnzQE" resolve="monto" />
        </node>
        <node concept="1QPoqt" id="1Akzb_JnzQL" role="1QPoq4" />
      </node>
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzQM" role="1QPoqk">
      <property role="1QPoqc" value="ir2" />
      <ref role="1QPoqe" node="1Akzb_JnzQ_" resolve="OtroInicio" />
      <ref role="1QPoq1" node="1Akzb_JnzQA" resolve="Procesar" />
      <node concept="1QPoqu" id="1Akzb_JnzQN" role="1QPoqf">
        <property role="1QPoq2" value="4yZjRRLmWGE/mayor" />
        <node concept="1QPoqv" id="1Akzb_JnzQO" role="1QPoq5">
          <ref role="1QPoq3" node="1Akzb_JnzQG" resolve="activo" />
        </node>
        <node concept="1QPoqq" id="1Akzb_JnzQP" role="1QPoq4">
          <property role="1QPoq0" value="3" />
        </node>
      </node>
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzQQ" role="1QPoqk">
      <property role="1QPoqc" value="listo" />
      <ref role="1QPoqe" node="1Akzb_JnzQA" resolve="Procesar" />
      <ref role="1QPoq1" node="1Akzb_JnzQB" resolve="Elegir" />
      <node concept="1QPoqv" id="1Akzb_JnzQR" role="1QPoqf">
        <ref role="1QPoq3" node="1Akzb_JnzQE" resolve="monto" />
      </node>
    </node>
    <node concept="1QPoqo" id="1Akzb_JnzQS" role="1QPoqk">
      <property role="1QPoqc" value="terminar" />
      <ref role="1QPoqe" node="1Akzb_JnzQB" resolve="Elegir" />
      <ref role="1QPoq1" node="1Akzb_JnzQC" resolve="Fin" />
    </node>
  </node>
</model>

