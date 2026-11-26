<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8a1318c4-11e1-4800-9606-8b5a7f26c0a8(flujos.tests@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="e620754c-2c44-4e85-8bc6-53203e48b392" name="flujos" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="rz2d" ref="r:a109c8f2-432f-41e9-ab12-6819e57c6447(flujos.behavior)" />
    <import index="ljy1" ref="r:7cfd2ea4-996d-4cdb-9659-c218fb4fce5e(flujos.structure)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="1215507671101" name="jetbrains.mps.lang.test.structure.NodeErrorCheckOperation" flags="ng" index="1TM$A" />
      <concept id="1215511704609" name="jetbrains.mps.lang.test.structure.NodeWarningCheckOperation" flags="ng" index="29bkU" />
      <concept id="1215526290564" name="jetbrains.mps.lang.test.structure.NodeTypeCheckOperation" flags="ng" index="30Omv">
        <child id="1215526393912" name="type" index="31d$z" />
      </concept>
      <concept id="1215603922101" name="jetbrains.mps.lang.test.structure.NodeOperationsContainer" flags="ng" index="7CXmI">
        <child id="1215604436604" name="nodeOperations" index="7EUXB" />
      </concept>
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <property id="2616911529524314943" name="accessMode" index="3DII0k" />
        <child id="1217501822150" name="nodesToCheck" index="1SKRRt" />
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1216989428737" name="jetbrains.mps.lang.test.structure.TestNode" flags="ng" index="1qefOq">
        <child id="1216989461394" name="nodeToCheck" index="1qenE9" />
      </concept>
      <concept id="1210673684636" name="jetbrains.mps.lang.test.structure.TestNodeAnnotation" flags="ng" index="3xLA65" />
      <concept id="1210674524691" name="jetbrains.mps.lang.test.structure.TestNodeReference" flags="nn" index="3xONca">
        <reference id="1210674534086" name="declaration" index="3xOPvv" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
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
  <node concept="1lH9Xt" id="1Akzb_JpGM5">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="PruebasRazonador" />
    <node concept="1qefOq" id="1Akzb_JpGM6" role="1SKRRt">
      <node concept="1QPoqG" id="1Akzb_JpGM7" role="1qenE9">
        <property role="TrG5h" value="SolicitudCredito" />
        <node concept="1QPoq$" id="1Akzb_JpGM8" role="1QPoql">
          <property role="TrG5h" value="Inicio" />
        </node>
        <node concept="1QPoqB" id="1Akzb_JpGM9" role="1QPoql">
          <property role="TrG5h" value="RegistrarSolicitud" />
          <property role="1QPorT" value="1" />
          <ref role="1QPoqa" node="1Akzb_JpGMf" resolve="Cliente" />
        </node>
        <node concept="1QPoqB" id="1Akzb_JpGMa" role="1QPoql">
          <property role="TrG5h" value="EvaluarRiesgo" />
          <property role="1QPorT" value="4" />
          <ref role="1QPoqa" node="1Akzb_JpGMg" resolve="Analista" />
        </node>
        <node concept="1QPoqA" id="1Akzb_JpGMb" role="1QPoql">
          <property role="TrG5h" value="Decidir" />
        </node>
        <node concept="1QPoqB" id="1Akzb_JpGMc" role="1QPoql">
          <property role="TrG5h" value="AprobarGerencia" />
          <property role="1QPorT" value="2" />
          <ref role="1QPoqa" node="1Akzb_JpGMh" resolve="Gerente" />
        </node>
        <node concept="1QPoqp" id="1Akzb_JpGMd" role="1QPoql">
          <property role="TrG5h" value="Aprobada" />
        </node>
        <node concept="1QPoqp" id="1Akzb_JpGMe" role="1QPoql">
          <property role="TrG5h" value="Rechazada" />
        </node>
        <node concept="1QPoqJ" id="1Akzb_JpGMf" role="1QPoqj">
          <property role="TrG5h" value="Cliente" />
        </node>
        <node concept="1QPoqJ" id="1Akzb_JpGMg" role="1QPoqj">
          <property role="TrG5h" value="Analista" />
        </node>
        <node concept="1QPoqJ" id="1Akzb_JpGMh" role="1QPoqj">
          <property role="TrG5h" value="Gerente" />
        </node>
        <node concept="1QPoqI" id="1Akzb_JpGMi" role="1QPoqi">
          <property role="TrG5h" value="monto" />
          <node concept="1QPoqw" id="1Akzb_JpGMj" role="1QPoq9" />
        </node>
        <node concept="1QPoqI" id="1Akzb_JpGMk" role="1QPoqi">
          <property role="TrG5h" value="aprobado" />
          <node concept="1QPoqz" id="1Akzb_JpGMl" role="1QPoq9" />
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGMm" role="1QPoqk">
          <property role="1QPoqc" value="iniciar" />
          <ref role="1QPoqe" node="1Akzb_JpGM8" resolve="Inicio" />
          <ref role="1QPoq1" node="1Akzb_JpGM9" resolve="RegistrarSolicitud" />
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGMn" role="1QPoqk">
          <property role="1QPoqc" value="enviar" />
          <ref role="1QPoqe" node="1Akzb_JpGM9" resolve="RegistrarSolicitud" />
          <ref role="1QPoq1" node="1Akzb_JpGMa" resolve="EvaluarRiesgo" />
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGMo" role="1QPoqk">
          <property role="1QPoqc" value="evaluado" />
          <ref role="1QPoqe" node="1Akzb_JpGMa" resolve="EvaluarRiesgo" />
          <ref role="1QPoq1" node="1Akzb_JpGMb" resolve="Decidir" />
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGMp" role="1QPoqk">
          <property role="1QPoqc" value="revisar" />
          <ref role="1QPoqe" node="1Akzb_JpGMb" resolve="Decidir" />
          <ref role="1QPoq1" node="1Akzb_JpGMc" resolve="AprobarGerencia" />
          <node concept="1QPoqu" id="1Akzb_JpGMq" role="1QPoqf">
            <property role="1QPoq2" value="4yZjRRLmWGE/mayor" />
            <node concept="1QPoqv" id="1Akzb_JpGMr" role="1QPoq5">
              <ref role="1QPoq3" node="1Akzb_JpGMi" resolve="monto" />
              <node concept="7CXmI" id="1Akzb_JpGMs" role="lGtFl">
                <node concept="30Omv" id="1Akzb_JpGMt" role="7EUXB">
                  <node concept="1QPoqw" id="1Akzb_JpGMu" role="31d$z" />
                </node>
              </node>
            </node>
            <node concept="1QPoqq" id="1Akzb_JpGMv" role="1QPoq4">
              <property role="1QPoq0" value="1000" />
              <node concept="7CXmI" id="1Akzb_JpGMw" role="lGtFl">
                <node concept="30Omv" id="1Akzb_JpGMx" role="7EUXB">
                  <node concept="1QPoqw" id="1Akzb_JpGMy" role="31d$z" />
                </node>
              </node>
            </node>
            <node concept="7CXmI" id="1Akzb_JpGMz" role="lGtFl">
              <node concept="30Omv" id="1Akzb_JpGM$" role="7EUXB">
                <node concept="1QPoqz" id="1Akzb_JpGM_" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGMA" role="1QPoqk">
          <property role="1QPoqc" value="aprobar" />
          <ref role="1QPoqe" node="1Akzb_JpGMb" resolve="Decidir" />
          <ref role="1QPoq1" node="1Akzb_JpGMd" resolve="Aprobada" />
          <node concept="1QPoqu" id="1Akzb_JpGMB" role="1QPoqf">
            <property role="1QPoq2" value="7ZABDOy96rf/menorIgual" />
            <node concept="1QPoqv" id="1Akzb_JpGMC" role="1QPoq5">
              <ref role="1QPoq3" node="1Akzb_JpGMi" resolve="monto" />
            </node>
            <node concept="1QPoqq" id="1Akzb_JpGMD" role="1QPoq4">
              <property role="1QPoq0" value="1000" />
            </node>
          </node>
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGME" role="1QPoqk">
          <property role="1QPoqc" value="firmar" />
          <ref role="1QPoqe" node="1Akzb_JpGMc" resolve="AprobarGerencia" />
          <ref role="1QPoq1" node="1Akzb_JpGMd" resolve="Aprobada" />
          <node concept="1QPoqu" id="1Akzb_JpGMF" role="1QPoqf">
            <node concept="1QPoqv" id="1Akzb_JpGMG" role="1QPoq5">
              <ref role="1QPoq3" node="1Akzb_JpGMk" resolve="aprobado" />
            </node>
            <node concept="1QPoqt" id="1Akzb_JpGMH" role="1QPoq4">
              <node concept="7CXmI" id="1Akzb_JpGMI" role="lGtFl">
                <node concept="30Omv" id="1Akzb_JpGMJ" role="7EUXB">
                  <node concept="1QPoqz" id="1Akzb_JpGMK" role="31d$z" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGML" role="1QPoqk">
          <property role="1QPoqc" value="rechazar" />
          <ref role="1QPoqe" node="1Akzb_JpGMc" resolve="AprobarGerencia" />
          <ref role="1QPoq1" node="1Akzb_JpGMe" resolve="Rechazada" />
          <node concept="1QPoqu" id="1Akzb_JpGMM" role="1QPoqf">
            <node concept="1QPoqv" id="1Akzb_JpGMN" role="1QPoq5">
              <ref role="1QPoq3" node="1Akzb_JpGMk" resolve="aprobado" />
            </node>
            <node concept="1QPoqs" id="1Akzb_JpGMO" role="1QPoq4" />
          </node>
        </node>
        <node concept="3xLA65" id="1Akzb_JpGMP" role="lGtFl">
          <property role="TrG5h" value="credito" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1Akzb_JpGMQ" role="1SKRRt">
      <node concept="1QPoqG" id="1Akzb_JpGMR" role="1qenE9">
        <property role="TrG5h" value="SoporteTecnico" />
        <node concept="1QPoq$" id="1Akzb_JpGMS" role="1QPoql">
          <property role="TrG5h" value="Inicio" />
        </node>
        <node concept="1QPoqB" id="1Akzb_JpGMT" role="1QPoql">
          <property role="TrG5h" value="RecibirTicket" />
          <property role="1QPorT" value="1" />
          <ref role="1QPoqa" node="1Akzb_JpGMZ" resolve="MesaDeAyuda" />
        </node>
        <node concept="1QPoqB" id="1Akzb_JpGMU" role="1QPoql">
          <property role="TrG5h" value="Diagnosticar" />
          <property role="1QPorT" value="3" />
          <ref role="1QPoqa" node="1Akzb_JpGN0" resolve="Especialista" />
        </node>
        <node concept="1QPoqA" id="1Akzb_JpGMV" role="1QPoql">
          <property role="TrG5h" value="Verificar" />
        </node>
        <node concept="1QPoqB" id="1Akzb_JpGMW" role="1QPoql">
          <property role="TrG5h" value="Escalar" />
          <property role="1QPorT" value="5" />
          <ref role="1QPoqa" node="1Akzb_JpGN0" resolve="Especialista" />
        </node>
        <node concept="1QPoqp" id="1Akzb_JpGMX" role="1QPoql">
          <property role="TrG5h" value="Cerrado" />
        </node>
        <node concept="1QPoqp" id="1Akzb_JpGMY" role="1QPoql">
          <property role="TrG5h" value="Abandonado" />
        </node>
        <node concept="1QPoqJ" id="1Akzb_JpGMZ" role="1QPoqj">
          <property role="TrG5h" value="MesaDeAyuda" />
        </node>
        <node concept="1QPoqJ" id="1Akzb_JpGN0" role="1QPoqj">
          <property role="TrG5h" value="Especialista" />
        </node>
        <node concept="1QPoqI" id="1Akzb_JpGN1" role="1QPoqi">
          <property role="TrG5h" value="resuelto" />
          <node concept="1QPoqz" id="1Akzb_JpGN2" role="1QPoq9" />
        </node>
        <node concept="1QPoqI" id="1Akzb_JpGN3" role="1QPoqi">
          <property role="TrG5h" value="intentos" />
          <node concept="1QPoqw" id="1Akzb_JpGN4" role="1QPoq9" />
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGN5" role="1QPoqk">
          <property role="1QPoqc" value="abrir" />
          <ref role="1QPoqe" node="1Akzb_JpGMS" resolve="Inicio" />
          <ref role="1QPoq1" node="1Akzb_JpGMT" resolve="RecibirTicket" />
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGN6" role="1QPoqk">
          <property role="1QPoqc" value="asignar" />
          <ref role="1QPoqe" node="1Akzb_JpGMT" resolve="RecibirTicket" />
          <ref role="1QPoq1" node="1Akzb_JpGMU" resolve="Diagnosticar" />
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGN7" role="1QPoqk">
          <property role="1QPoqc" value="probar" />
          <ref role="1QPoqe" node="1Akzb_JpGMU" resolve="Diagnosticar" />
          <ref role="1QPoq1" node="1Akzb_JpGMV" resolve="Verificar" />
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGN8" role="1QPoqk">
          <property role="1QPoqc" value="cerrar" />
          <ref role="1QPoqe" node="1Akzb_JpGMV" resolve="Verificar" />
          <ref role="1QPoq1" node="1Akzb_JpGMX" resolve="Cerrado" />
          <node concept="1QPoqu" id="1Akzb_JpGN9" role="1QPoqf">
            <node concept="1QPoqv" id="1Akzb_JpGNa" role="1QPoq5">
              <ref role="1QPoq3" node="1Akzb_JpGN1" resolve="resuelto" />
            </node>
            <node concept="1QPoqt" id="1Akzb_JpGNb" role="1QPoq4" />
          </node>
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGNc" role="1QPoqk">
          <property role="1QPoqc" value="escalar" />
          <ref role="1QPoqe" node="1Akzb_JpGMV" resolve="Verificar" />
          <ref role="1QPoq1" node="1Akzb_JpGMW" resolve="Escalar" />
          <node concept="1QPoqh" id="1Akzb_JpGNd" role="1QPoqf">
            <node concept="1QPoqu" id="1Akzb_JpGNe" role="1QPoq7">
              <node concept="1QPoqv" id="1Akzb_JpGNf" role="1QPoq5">
                <ref role="1QPoq3" node="1Akzb_JpGN1" resolve="resuelto" />
              </node>
              <node concept="1QPoqs" id="1Akzb_JpGNg" role="1QPoq4" />
            </node>
            <node concept="1QPoqu" id="1Akzb_JpGNh" role="1QPoq6">
              <property role="1QPoq2" value="2gBrdvOqFpm/menor" />
              <node concept="1QPoqv" id="1Akzb_JpGNi" role="1QPoq5">
                <ref role="1QPoq3" node="1Akzb_JpGN3" resolve="intentos" />
              </node>
              <node concept="1QPoqq" id="1Akzb_JpGNj" role="1QPoq4">
                <property role="1QPoq0" value="3" />
              </node>
            </node>
            <node concept="7CXmI" id="1Akzb_JpGNk" role="lGtFl">
              <node concept="30Omv" id="1Akzb_JpGNl" role="7EUXB">
                <node concept="1QPoqz" id="1Akzb_JpGNm" role="31d$z" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGNn" role="1QPoqk">
          <property role="1QPoqc" value="abandonar" />
          <ref role="1QPoqe" node="1Akzb_JpGMV" resolve="Verificar" />
          <ref role="1QPoq1" node="1Akzb_JpGMY" resolve="Abandonado" />
          <node concept="1QPoqh" id="1Akzb_JpGNo" role="1QPoqf">
            <node concept="1QPoqu" id="1Akzb_JpGNp" role="1QPoq7">
              <node concept="1QPoqv" id="1Akzb_JpGNq" role="1QPoq5">
                <ref role="1QPoq3" node="1Akzb_JpGN1" resolve="resuelto" />
              </node>
              <node concept="1QPoqs" id="1Akzb_JpGNr" role="1QPoq4" />
            </node>
            <node concept="1QPoqu" id="1Akzb_JpGNs" role="1QPoq6">
              <property role="1QPoq2" value="1oi$mvzxQ1t/mayorIgual" />
              <node concept="1QPoqv" id="1Akzb_JpGNt" role="1QPoq5">
                <ref role="1QPoq3" node="1Akzb_JpGN3" resolve="intentos" />
              </node>
              <node concept="1QPoqq" id="1Akzb_JpGNu" role="1QPoq4">
                <property role="1QPoq0" value="3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGNv" role="1QPoqk">
          <property role="1QPoqc" value="reintentar" />
          <ref role="1QPoqe" node="1Akzb_JpGMW" resolve="Escalar" />
          <ref role="1QPoq1" node="1Akzb_JpGMU" resolve="Diagnosticar" />
        </node>
        <node concept="3xLA65" id="1Akzb_JpGNw" role="lGtFl">
          <property role="TrG5h" value="soporte" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1Akzb_JpGNx" role="1SKRRt">
      <node concept="1QPoqG" id="1Akzb_JpGNy" role="1qenE9">
        <property role="TrG5h" value="ProcesoConBloqueo" />
        <node concept="1QPoq$" id="1Akzb_JpGNz" role="1QPoql">
          <property role="TrG5h" value="Inicio" />
          <node concept="7CXmI" id="1Akzb_JpGN$" role="lGtFl">
            <node concept="29bkU" id="1Akzb_JpGN_" role="7EUXB" />
          </node>
        </node>
        <node concept="1QPoqB" id="1Akzb_JpGNA" role="1QPoql">
          <property role="TrG5h" value="Revisar" />
          <property role="1QPorT" value="3" />
          <ref role="1QPoqa" node="1Akzb_JpGNJ" resolve="Auditor" />
          <node concept="7CXmI" id="1Akzb_JpGNB" role="lGtFl">
            <node concept="1TM$A" id="1Akzb_JpGNC" role="7EUXB" />
          </node>
        </node>
        <node concept="1QPoqB" id="1Akzb_JpGND" role="1QPoql">
          <property role="TrG5h" value="Archivar" />
          <property role="1QPorT" value="1" />
          <ref role="1QPoqa" node="1Akzb_JpGNJ" resolve="Auditor" />
          <node concept="7CXmI" id="1Akzb_JpGNE" role="lGtFl">
            <node concept="1TM$A" id="1Akzb_JpGNF" role="7EUXB" />
          </node>
        </node>
        <node concept="1QPoqp" id="1Akzb_JpGNG" role="1QPoql">
          <property role="TrG5h" value="Fin" />
          <node concept="7CXmI" id="1Akzb_JpGNH" role="lGtFl">
            <node concept="1TM$A" id="1Akzb_JpGNI" role="7EUXB" />
          </node>
        </node>
        <node concept="1QPoqJ" id="1Akzb_JpGNJ" role="1QPoqj">
          <property role="TrG5h" value="Auditor" />
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGNK" role="1QPoqk">
          <property role="1QPoqc" value="empezar" />
          <ref role="1QPoqe" node="1Akzb_JpGNz" resolve="Inicio" />
          <ref role="1QPoq1" node="1Akzb_JpGNA" resolve="Revisar" />
        </node>
        <node concept="3xLA65" id="1Akzb_JpGNL" role="lGtFl">
          <property role="TrG5h" value="bloqueo" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1Akzb_JpGNM" role="1SKRRt">
      <node concept="1QPoqG" id="1Akzb_JpGNN" role="1qenE9">
        <property role="TrG5h" value="ProcesoCicloInfinito" />
        <node concept="1QPoq$" id="1Akzb_JpGNO" role="1QPoql">
          <property role="TrG5h" value="Inicio" />
          <node concept="7CXmI" id="1Akzb_JpGNP" role="lGtFl">
            <node concept="29bkU" id="1Akzb_JpGNQ" role="7EUXB" />
          </node>
        </node>
        <node concept="1QPoqB" id="1Akzb_JpGNR" role="1QPoql">
          <property role="TrG5h" value="Esperar" />
          <property role="1QPorT" value="1" />
          <ref role="1QPoqa" node="1Akzb_JpGO0" resolve="Robot" />
          <node concept="7CXmI" id="1Akzb_JpGNS" role="lGtFl">
            <node concept="1TM$A" id="1Akzb_JpGNT" role="7EUXB" />
          </node>
        </node>
        <node concept="1QPoqB" id="1Akzb_JpGNU" role="1QPoql">
          <property role="TrG5h" value="Reintentar" />
          <property role="1QPorT" value="1" />
          <ref role="1QPoqa" node="1Akzb_JpGO0" resolve="Robot" />
          <node concept="7CXmI" id="1Akzb_JpGNV" role="lGtFl">
            <node concept="1TM$A" id="1Akzb_JpGNW" role="7EUXB" />
          </node>
        </node>
        <node concept="1QPoqp" id="1Akzb_JpGNX" role="1QPoql">
          <property role="TrG5h" value="Fin" />
          <node concept="7CXmI" id="1Akzb_JpGNY" role="lGtFl">
            <node concept="1TM$A" id="1Akzb_JpGNZ" role="7EUXB" />
          </node>
        </node>
        <node concept="1QPoqJ" id="1Akzb_JpGO0" role="1QPoqj">
          <property role="TrG5h" value="Robot" />
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGO1" role="1QPoqk">
          <property role="1QPoqc" value="arrancar" />
          <ref role="1QPoqe" node="1Akzb_JpGNO" resolve="Inicio" />
          <ref role="1QPoq1" node="1Akzb_JpGNR" resolve="Esperar" />
          <node concept="7CXmI" id="1Akzb_JpGO2" role="lGtFl">
            <node concept="29bkU" id="1Akzb_JpGO3" role="7EUXB" />
          </node>
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGO4" role="1QPoqk">
          <property role="1QPoqc" value="arrancar" />
          <ref role="1QPoqe" node="1Akzb_JpGNO" resolve="Inicio" />
          <ref role="1QPoq1" node="1Akzb_JpGNR" resolve="Esperar" />
          <node concept="7CXmI" id="1Akzb_JpGO5" role="lGtFl">
            <node concept="29bkU" id="1Akzb_JpGO6" role="7EUXB" />
          </node>
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGO7" role="1QPoqk">
          <property role="1QPoqc" value="timeout" />
          <ref role="1QPoqe" node="1Akzb_JpGNR" resolve="Esperar" />
          <ref role="1QPoq1" node="1Akzb_JpGNU" resolve="Reintentar" />
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGO8" role="1QPoqk">
          <property role="1QPoqc" value="timeout" />
          <ref role="1QPoqe" node="1Akzb_JpGNU" resolve="Reintentar" />
          <ref role="1QPoq1" node="1Akzb_JpGNR" resolve="Esperar" />
        </node>
        <node concept="3xLA65" id="1Akzb_JpGO9" role="lGtFl">
          <property role="TrG5h" value="ciclo" />
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="1Akzb_JpGOa" role="1SKRRt">
      <node concept="1QPoqG" id="1Akzb_JpGOb" role="1qenE9">
        <property role="TrG5h" value="ProcesoMalTipado" />
        <node concept="1QPoq$" id="1Akzb_JpGOc" role="1QPoql">
          <property role="TrG5h" value="Inicio" />
          <node concept="7CXmI" id="1Akzb_JpGOd" role="lGtFl">
            <node concept="1TM$A" id="1Akzb_JpGOe" role="7EUXB" />
          </node>
        </node>
        <node concept="1QPoq$" id="1Akzb_JpGOf" role="1QPoql">
          <property role="TrG5h" value="OtroInicio" />
          <node concept="7CXmI" id="1Akzb_JpGOg" role="lGtFl">
            <node concept="1TM$A" id="1Akzb_JpGOh" role="7EUXB" />
          </node>
        </node>
        <node concept="1QPoqB" id="1Akzb_JpGOi" role="1QPoql">
          <property role="TrG5h" value="Procesar" />
          <property role="1QPorT" value="0" />
          <ref role="1QPoqa" node="1Akzb_JpGOp" resolve="Operador" />
          <node concept="7CXmI" id="1Akzb_JpGOj" role="lGtFl">
            <node concept="1TM$A" id="1Akzb_JpGOk" role="7EUXB" />
          </node>
        </node>
        <node concept="1QPoqA" id="1Akzb_JpGOl" role="1QPoql">
          <property role="TrG5h" value="Elegir" />
          <node concept="7CXmI" id="1Akzb_JpGOm" role="lGtFl">
            <node concept="29bkU" id="1Akzb_JpGOn" role="7EUXB" />
          </node>
        </node>
        <node concept="1QPoqp" id="1Akzb_JpGOo" role="1QPoql">
          <property role="TrG5h" value="Fin" />
        </node>
        <node concept="1QPoqJ" id="1Akzb_JpGOp" role="1QPoqj">
          <property role="TrG5h" value="Operador" />
        </node>
        <node concept="1QPoqI" id="1Akzb_JpGOq" role="1QPoqi">
          <property role="TrG5h" value="monto" />
          <node concept="1QPoqw" id="1Akzb_JpGOr" role="1QPoq9" />
        </node>
        <node concept="1QPoqI" id="1Akzb_JpGOs" role="1QPoqi">
          <property role="TrG5h" value="activo" />
          <node concept="1QPoqz" id="1Akzb_JpGOt" role="1QPoq9" />
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGOu" role="1QPoqk">
          <property role="1QPoqc" value="ir" />
          <ref role="1QPoqe" node="1Akzb_JpGOc" resolve="Inicio" />
          <ref role="1QPoq1" node="1Akzb_JpGOi" resolve="Procesar" />
          <node concept="1QPoqu" id="1Akzb_JpGOv" role="1QPoqf">
            <property role="1QPoq2" value="4yZjRRLmWGE/mayor" />
            <node concept="1QPoqv" id="1Akzb_JpGOw" role="1QPoq5">
              <ref role="1QPoq3" node="1Akzb_JpGOq" resolve="monto" />
            </node>
            <node concept="1QPoqt" id="1Akzb_JpGOx" role="1QPoq4">
              <node concept="7CXmI" id="1Akzb_JpGOy" role="lGtFl">
                <node concept="1TM$A" id="1Akzb_JpGOz" role="7EUXB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGO$" role="1QPoqk">
          <property role="1QPoqc" value="ir2" />
          <ref role="1QPoqe" node="1Akzb_JpGOf" resolve="OtroInicio" />
          <ref role="1QPoq1" node="1Akzb_JpGOi" resolve="Procesar" />
          <node concept="1QPoqu" id="1Akzb_JpGO_" role="1QPoqf">
            <property role="1QPoq2" value="4yZjRRLmWGE/mayor" />
            <node concept="1QPoqv" id="1Akzb_JpGOA" role="1QPoq5">
              <ref role="1QPoq3" node="1Akzb_JpGOs" resolve="activo" />
              <node concept="7CXmI" id="1Akzb_JpGOB" role="lGtFl">
                <node concept="1TM$A" id="1Akzb_JpGOC" role="7EUXB" />
              </node>
            </node>
            <node concept="1QPoqq" id="1Akzb_JpGOD" role="1QPoq4">
              <property role="1QPoq0" value="3" />
            </node>
          </node>
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGOE" role="1QPoqk">
          <property role="1QPoqc" value="listo" />
          <ref role="1QPoqe" node="1Akzb_JpGOi" resolve="Procesar" />
          <ref role="1QPoq1" node="1Akzb_JpGOl" resolve="Elegir" />
          <node concept="1QPoqv" id="1Akzb_JpGOF" role="1QPoqf">
            <ref role="1QPoq3" node="1Akzb_JpGOq" resolve="monto" />
            <node concept="7CXmI" id="1Akzb_JpGOG" role="lGtFl">
              <node concept="1TM$A" id="1Akzb_JpGOH" role="7EUXB" />
            </node>
          </node>
        </node>
        <node concept="1QPoqo" id="1Akzb_JpGOI" role="1QPoqk">
          <property role="1QPoqc" value="terminar" />
          <ref role="1QPoqe" node="1Akzb_JpGOl" resolve="Elegir" />
          <ref role="1QPoq1" node="1Akzb_JpGOo" resolve="Fin" />
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1Akzb_JpGOJ" role="1SL9yI">
      <property role="TrG5h" value="testDuracionMinimaPorDijkstra" />
      <node concept="3cqZAl" id="1Akzb_JpGOL" role="3clF45" />
      <node concept="3clFbS" id="1Akzb_JpGOM" role="3clF47">
        <node concept="3vlDli" id="1Akzb_JpGON" role="3cqZAp">
          <node concept="3cmrfG" id="1Akzb_JpGOO" role="3tpDZB">
            <property role="3cmrfH" value="5" />
          </node>
          <node concept="2YIFZM" id="1Akzb_JpGOP" role="3tpDZA">
            <ref role="1Pybhc" to="rz2d:1Akzb_Jgsy_" resolve="Razonador" />
            <ref role="37wK5l" to="rz2d:1Akzb_JgXAh" resolve="duracionMinima" />
            <node concept="3xONca" id="1Akzb_JpGOQ" role="37wK5m">
              <ref role="3xOPvv" node="1Akzb_JpGMP" resolve="credito" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1Akzb_JpGOR" role="1SL9yI">
      <property role="TrG5h" value="testCaminoCriticoEnGrafoAciclico" />
      <node concept="3cqZAl" id="1Akzb_JpGOT" role="3clF45" />
      <node concept="3clFbS" id="1Akzb_JpGOU" role="3clF47">
        <node concept="3vlDli" id="1Akzb_JpGOV" role="3cqZAp">
          <node concept="3cmrfG" id="1Akzb_JpGOW" role="3tpDZB">
            <property role="3cmrfH" value="7" />
          </node>
          <node concept="2YIFZM" id="1Akzb_JpGOX" role="3tpDZA">
            <ref role="1Pybhc" to="rz2d:1Akzb_Jgsy_" resolve="Razonador" />
            <ref role="37wK5l" to="rz2d:1Akzb_JgXBR" resolve="duracionMaxima" />
            <node concept="3xONca" id="1Akzb_JpGOY" role="37wK5m">
              <ref role="3xOPvv" node="1Akzb_JpGMP" resolve="credito" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1Akzb_JpGOZ" role="1SL9yI">
      <property role="TrG5h" value="testModeloValidoSinErrores" />
      <node concept="3cqZAl" id="1Akzb_JpGP1" role="3clF45" />
      <node concept="3clFbS" id="1Akzb_JpGP2" role="3clF47">
        <node concept="3vlDli" id="1Akzb_JpGP3" role="3cqZAp">
          <node concept="3cmrfG" id="1Akzb_JpGP4" role="3tpDZB">
            <property role="3cmrfH" value="0" />
          </node>
          <node concept="2YIFZM" id="1Akzb_JpGP5" role="3tpDZA">
            <ref role="1Pybhc" to="rz2d:1Akzb_Jgsy_" resolve="Razonador" />
            <ref role="37wK5l" to="rz2d:1Akzb_Ji5hm" resolve="contar" />
            <node concept="3xONca" id="1Akzb_JpGP6" role="37wK5m">
              <ref role="3xOPvv" node="1Akzb_JpGMP" resolve="credito" />
            </node>
            <node concept="Xl_RD" id="1Akzb_JpGP7" role="37wK5m">
              <property role="Xl_RC" value="error" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1Akzb_JpGP8" role="1SL9yI">
      <property role="TrG5h" value="testCicloConSalidaDetectadoPorTarjan" />
      <node concept="3cqZAl" id="1Akzb_JpGPa" role="3clF45" />
      <node concept="3clFbS" id="1Akzb_JpGPb" role="3clF47">
        <node concept="3vlDli" id="1Akzb_JpGPc" role="3cqZAp">
          <node concept="3cmrfG" id="1Akzb_JpGPd" role="3tpDZB">
            <property role="3cmrfH" value="1" />
          </node>
          <node concept="2YIFZM" id="1Akzb_JpGPe" role="3tpDZA">
            <ref role="1Pybhc" to="rz2d:1Akzb_Jgsy_" resolve="Razonador" />
            <ref role="37wK5l" to="rz2d:1Akzb_JohJ_" resolve="numeroDeCiclos" />
            <node concept="3xONca" id="1Akzb_JpGPf" role="37wK5m">
              <ref role="3xOPvv" node="1Akzb_JpGNw" resolve="soporte" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1Akzb_JpGPg" role="1SL9yI">
      <property role="TrG5h" value="testCicloConSalidaNoEsLivelock" />
      <node concept="3cqZAl" id="1Akzb_JpGPi" role="3clF45" />
      <node concept="3clFbS" id="1Akzb_JpGPj" role="3clF47">
        <node concept="3vlDli" id="1Akzb_JpGPk" role="3cqZAp">
          <node concept="3cmrfG" id="1Akzb_JpGPl" role="3tpDZB">
            <property role="3cmrfH" value="0" />
          </node>
          <node concept="2YIFZM" id="1Akzb_JpGPm" role="3tpDZA">
            <ref role="1Pybhc" to="rz2d:1Akzb_Jgsy_" resolve="Razonador" />
            <ref role="37wK5l" to="rz2d:1Akzb_JohJJ" resolve="numeroDeLivelocks" />
            <node concept="3xONca" id="1Akzb_JpGPn" role="37wK5m">
              <ref role="3xOPvv" node="1Akzb_JpGNw" resolve="soporte" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1Akzb_JpGPo" role="1SL9yI">
      <property role="TrG5h" value="testDuracionMaximaNoAcotadaConCiclos" />
      <node concept="3cqZAl" id="1Akzb_JpGPq" role="3clF45" />
      <node concept="3clFbS" id="1Akzb_JpGPr" role="3clF47">
        <node concept="3vlDli" id="1Akzb_JpGPs" role="3cqZAp">
          <node concept="3cmrfG" id="1Akzb_JpGPt" role="3tpDZB">
            <property role="3cmrfH" value="-1" />
          </node>
          <node concept="2YIFZM" id="1Akzb_JpGPu" role="3tpDZA">
            <ref role="1Pybhc" to="rz2d:1Akzb_Jgsy_" resolve="Razonador" />
            <ref role="37wK5l" to="rz2d:1Akzb_JgXBR" resolve="duracionMaxima" />
            <node concept="3xONca" id="1Akzb_JpGPv" role="37wK5m">
              <ref role="3xOPvv" node="1Akzb_JpGNw" resolve="soporte" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1Akzb_JpGPw" role="1SL9yI">
      <property role="TrG5h" value="testDeadlockDetectado" />
      <node concept="3cqZAl" id="1Akzb_JpGPy" role="3clF45" />
      <node concept="3clFbS" id="1Akzb_JpGPz" role="3clF47">
        <node concept="3vlDli" id="1Akzb_JpGP$" role="3cqZAp">
          <node concept="3cmrfG" id="1Akzb_JpGP_" role="3tpDZB">
            <property role="3cmrfH" value="2" />
          </node>
          <node concept="2YIFZM" id="1Akzb_JpGPA" role="3tpDZA">
            <ref role="1Pybhc" to="rz2d:1Akzb_Jgsy_" resolve="Razonador" />
            <ref role="37wK5l" to="rz2d:1Akzb_JohK3" resolve="numeroDeBloqueos" />
            <node concept="3xONca" id="1Akzb_JpGPB" role="37wK5m">
              <ref role="3xOPvv" node="1Akzb_JpGNL" resolve="bloqueo" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1Akzb_JpGPC" role="1SL9yI">
      <property role="TrG5h" value="testEstadosInalcanzables" />
      <node concept="3cqZAl" id="1Akzb_JpGPE" role="3clF45" />
      <node concept="3clFbS" id="1Akzb_JpGPF" role="3clF47">
        <node concept="3vlDli" id="1Akzb_JpGPG" role="3cqZAp">
          <node concept="3cmrfG" id="1Akzb_JpGPH" role="3tpDZB">
            <property role="3cmrfH" value="2" />
          </node>
          <node concept="2YIFZM" id="1Akzb_JpGPI" role="3tpDZA">
            <ref role="1Pybhc" to="rz2d:1Akzb_Jgsy_" resolve="Razonador" />
            <ref role="37wK5l" to="rz2d:1Akzb_JohJT" resolve="numeroDeInalcanzables" />
            <node concept="3xONca" id="1Akzb_JpGPJ" role="37wK5m">
              <ref role="3xOPvv" node="1Akzb_JpGNL" resolve="bloqueo" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="1Akzb_JpGPK" role="1SL9yI">
      <property role="TrG5h" value="testLivelockDetectado" />
      <node concept="3cqZAl" id="1Akzb_JpGPM" role="3clF45" />
      <node concept="3clFbS" id="1Akzb_JpGPN" role="3clF47">
        <node concept="3vlDli" id="1Akzb_JpGPO" role="3cqZAp">
          <node concept="3cmrfG" id="1Akzb_JpGPP" role="3tpDZB">
            <property role="3cmrfH" value="1" />
          </node>
          <node concept="2YIFZM" id="1Akzb_JpGPQ" role="3tpDZA">
            <ref role="1Pybhc" to="rz2d:1Akzb_Jgsy_" resolve="Razonador" />
            <ref role="37wK5l" to="rz2d:1Akzb_JohJJ" resolve="numeroDeLivelocks" />
            <node concept="3xONca" id="1Akzb_JpGPR" role="37wK5m">
              <ref role="3xOPvv" node="1Akzb_JpGO9" resolve="ciclo" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

