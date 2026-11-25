<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a0562a32-1119-4853-80b7-b7be72c22c67(flujos.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
    <use id="e620754c-2c44-4e85-8bc6-53203e48b392" name="flujos" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="ljy1" ref="r:7cfd2ea4-996d-4cdb-9659-c218fb4fce5e(flujos.structure)" />
    <import index="rz2d" ref="r:a109c8f2-432f-41e9-ab12-6819e57c6447(flujos.behavior)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1207055528241" name="jetbrains.mps.lang.typesystem.structure.WarningStatement" flags="nn" index="a7r0C">
        <child id="1207055552304" name="warningText" index="a7wSD" />
      </concept>
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <child id="1180447237840" name="errorString" index="3o8Qv2" />
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="e620754c-2c44-4e85-8bc6-53203e48b392" name="flujos">
      <concept id="1843252875564747289" name="flujos.structure.TipoEntero" flags="ng" index="1QPoqw" />
      <concept id="1843252875564747290" name="flujos.structure.TipoBooleano" flags="ng" index="1QPoqz" />
    </language>
  </registry>
  <node concept="1YbPZF" id="1Akzb_JlNH$">
    <property role="TrG5h" value="typeof_LiteralEntero" />
    <node concept="1YaCAy" id="1Akzb_JlNH_" role="1YuTPh">
      <property role="TrG5h" value="literal" />
      <ref role="1YaFvo" to="ljy1:1Akzb_JggCz" resolve="LiteralEntero" />
    </node>
    <node concept="3clFbS" id="1Akzb_JndKl" role="18ibNy">
      <node concept="1Z5TYs" id="1Akzb_JndKm" role="3cqZAp">
        <node concept="mw_s8" id="1Akzb_JndKn" role="1ZfhK$">
          <node concept="1Z2H0r" id="1Akzb_JndKo" role="mwGJk">
            <node concept="1YBJjd" id="1Akzb_JndKp" role="1Z2MuG">
              <ref role="1YBMHb" node="1Akzb_JlNH_" resolve="literal" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1Akzb_JndKq" role="1ZfhKB">
          <node concept="2c44tf" id="1Akzb_JndKr" role="mwGJk">
            <node concept="1QPoqw" id="1Akzb_JndKt" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="1Akzb_JlNHB">
    <property role="TrG5h" value="typeof_LiteralVerdadero" />
    <node concept="1YaCAy" id="1Akzb_JlNHC" role="1YuTPh">
      <property role="TrG5h" value="literal" />
      <ref role="1YaFvo" to="ljy1:1Akzb_JggC$" resolve="LiteralVerdadero" />
    </node>
    <node concept="3clFbS" id="1Akzb_JndKx" role="18ibNy">
      <node concept="1Z5TYs" id="1Akzb_JndKy" role="3cqZAp">
        <node concept="mw_s8" id="1Akzb_JndKz" role="1ZfhK$">
          <node concept="1Z2H0r" id="1Akzb_JndK$" role="mwGJk">
            <node concept="1YBJjd" id="1Akzb_JndK_" role="1Z2MuG">
              <ref role="1YBMHb" node="1Akzb_JlNHC" resolve="literal" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1Akzb_JndKA" role="1ZfhKB">
          <node concept="2c44tf" id="1Akzb_JndKB" role="mwGJk">
            <node concept="1QPoqz" id="1Akzb_JndKC" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="1Akzb_JlNHE">
    <property role="TrG5h" value="typeof_LiteralFalso" />
    <node concept="1YaCAy" id="1Akzb_JlNHF" role="1YuTPh">
      <property role="TrG5h" value="literal" />
      <ref role="1YaFvo" to="ljy1:1Akzb_JggC_" resolve="LiteralFalso" />
    </node>
    <node concept="3clFbS" id="1Akzb_JndKG" role="18ibNy">
      <node concept="1Z5TYs" id="1Akzb_JndKH" role="3cqZAp">
        <node concept="mw_s8" id="1Akzb_JndKI" role="1ZfhK$">
          <node concept="1Z2H0r" id="1Akzb_JndKJ" role="mwGJk">
            <node concept="1YBJjd" id="1Akzb_JndKK" role="1Z2MuG">
              <ref role="1YBMHb" node="1Akzb_JlNHF" resolve="literal" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1Akzb_JndKL" role="1ZfhKB">
          <node concept="2c44tf" id="1Akzb_JndKM" role="mwGJk">
            <node concept="1QPoqz" id="1Akzb_JndKN" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="1Akzb_JlNHH">
    <property role="TrG5h" value="typeof_RefVariable" />
    <node concept="1YaCAy" id="1Akzb_JlNHI" role="1YuTPh">
      <property role="TrG5h" value="ref" />
      <ref role="1YaFvo" to="ljy1:1Akzb_JggCA" resolve="RefVariable" />
    </node>
    <node concept="3clFbS" id="1Akzb_JndKR" role="18ibNy">
      <node concept="1Z5TYs" id="1Akzb_JndKS" role="3cqZAp">
        <node concept="mw_s8" id="1Akzb_JndKT" role="1ZfhK$">
          <node concept="1Z2H0r" id="1Akzb_JndKU" role="mwGJk">
            <node concept="1YBJjd" id="1Akzb_JndKV" role="1Z2MuG">
              <ref role="1YBMHb" node="1Akzb_JlNHI" resolve="ref" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1Akzb_JndKW" role="1ZfhKB">
          <node concept="2OqwBi" id="1Akzb_JndKX" role="mwGJk">
            <node concept="2OqwBi" id="1Akzb_JndKY" role="2Oq$k0">
              <node concept="1YBJjd" id="1Akzb_JndKZ" role="2Oq$k0">
                <ref role="1YBMHb" node="1Akzb_JlNHI" resolve="ref" />
              </node>
              <node concept="3TrEf2" id="1Akzb_JndL0" role="2OqNvi">
                <ref role="3Tt5mk" to="ljy1:1Akzb_JggCU" resolve="variable" />
              </node>
            </node>
            <node concept="3TrEf2" id="1Akzb_JndL1" role="2OqNvi">
              <ref role="3Tt5mk" to="ljy1:1Akzb_JggCK" resolve="tipo" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="1Akzb_JlNHK">
    <property role="TrG5h" value="typeof_Comparacion" />
    <node concept="1YaCAy" id="1Akzb_JlNHL" role="1YuTPh">
      <property role="TrG5h" value="comparacion" />
      <ref role="1YaFvo" to="ljy1:1Akzb_JggCB" resolve="Comparacion" />
    </node>
    <node concept="3clFbS" id="1Akzb_JndLe" role="18ibNy">
      <node concept="1Z5TYs" id="1Akzb_JndLf" role="3cqZAp">
        <node concept="mw_s8" id="1Akzb_JndLg" role="1ZfhK$">
          <node concept="1Z2H0r" id="1Akzb_JndLh" role="mwGJk">
            <node concept="1YBJjd" id="1Akzb_JndLi" role="1Z2MuG">
              <ref role="1YBMHb" node="1Akzb_JlNHL" resolve="comparacion" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1Akzb_JndLj" role="1ZfhKB">
          <node concept="2c44tf" id="1Akzb_JndLk" role="mwGJk">
            <node concept="1QPoqz" id="1Akzb_JndLl" role="2c44tc" />
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="1Akzb_JndLm" role="3cqZAp">
        <node concept="mw_s8" id="1Akzb_JndLn" role="1ZfhK$">
          <node concept="1Z2H0r" id="1Akzb_JndLo" role="mwGJk">
            <node concept="2OqwBi" id="1Akzb_JndLp" role="1Z2MuG">
              <node concept="1YBJjd" id="1Akzb_JndLq" role="2Oq$k0">
                <ref role="1YBMHb" node="1Akzb_JlNHL" resolve="comparacion" />
              </node>
              <node concept="3TrEf2" id="1Akzb_JndLr" role="2OqNvi">
                <ref role="3Tt5mk" to="ljy1:1Akzb_JggCW" resolve="izquierda" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1Akzb_JndLs" role="1ZfhKB">
          <node concept="1Z2H0r" id="1Akzb_JndLt" role="mwGJk">
            <node concept="2OqwBi" id="1Akzb_JndLu" role="1Z2MuG">
              <node concept="1YBJjd" id="1Akzb_JndLv" role="2Oq$k0">
                <ref role="1YBMHb" node="1Akzb_JlNHL" resolve="comparacion" />
              </node>
              <node concept="3TrEf2" id="1Akzb_JndLw" role="2OqNvi">
                <ref role="3Tt5mk" to="ljy1:1Akzb_JggCX" resolve="derecha" />
              </node>
            </node>
          </node>
        </node>
        <node concept="Xl_RD" id="1Akzb_JndLx" role="3o8Qv2">
          <property role="Xl_RC" value="Los operandos de una comparacion deben tener el mismo tipo" />
        </node>
      </node>
      <node concept="3clFbJ" id="1Akzb_JndLy" role="3cqZAp">
        <node concept="2YIFZM" id="1Akzb_JndLz" role="3clFbw">
          <ref role="1Pybhc" to="rz2d:1Akzb_Jgsy_" resolve="Razonador" />
          <ref role="37wK5l" to="rz2d:1Akzb_JlNI1" resolve="esOperadorDeOrden" />
          <node concept="1YBJjd" id="1Akzb_JndL$" role="37wK5m">
            <ref role="1YBMHb" node="1Akzb_JlNHL" resolve="comparacion" />
          </node>
        </node>
        <node concept="3clFbS" id="1Akzb_JndL_" role="3clFbx">
          <node concept="1Z5TYs" id="1Akzb_JndLA" role="3cqZAp">
            <node concept="mw_s8" id="1Akzb_JndLB" role="1ZfhK$">
              <node concept="1Z2H0r" id="1Akzb_JndLC" role="mwGJk">
                <node concept="2OqwBi" id="1Akzb_JndLD" role="1Z2MuG">
                  <node concept="1YBJjd" id="1Akzb_JndLE" role="2Oq$k0">
                    <ref role="1YBMHb" node="1Akzb_JlNHL" resolve="comparacion" />
                  </node>
                  <node concept="3TrEf2" id="1Akzb_JndLF" role="2OqNvi">
                    <ref role="3Tt5mk" to="ljy1:1Akzb_JggCW" resolve="izquierda" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="1Akzb_JndLG" role="1ZfhKB">
              <node concept="2c44tf" id="1Akzb_JndLH" role="mwGJk">
                <node concept="1QPoqw" id="1Akzb_JndLI" role="2c44tc" />
              </node>
            </node>
            <node concept="Xl_RD" id="1Akzb_JndLJ" role="3o8Qv2">
              <property role="Xl_RC" value="Los operadores &lt;, &lt;=, &gt;, &gt;= solo se aplican a valores enteros" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="1Akzb_JlNHN">
    <property role="TrG5h" value="typeof_Conjuncion" />
    <node concept="1YaCAy" id="1Akzb_JlNHO" role="1YuTPh">
      <property role="TrG5h" value="conjuncion" />
      <ref role="1YaFvo" to="ljy1:1Akzb_JggCC" resolve="Conjuncion" />
    </node>
    <node concept="3clFbS" id="1Akzb_JndMg" role="18ibNy">
      <node concept="1Z5TYs" id="1Akzb_JndMh" role="3cqZAp">
        <node concept="mw_s8" id="1Akzb_JndMi" role="1ZfhK$">
          <node concept="1Z2H0r" id="1Akzb_JndMj" role="mwGJk">
            <node concept="1YBJjd" id="1Akzb_JndMk" role="1Z2MuG">
              <ref role="1YBMHb" node="1Akzb_JlNHO" resolve="conjuncion" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1Akzb_JndMl" role="1ZfhKB">
          <node concept="2c44tf" id="1Akzb_JndMm" role="mwGJk">
            <node concept="1QPoqz" id="1Akzb_JndMn" role="2c44tc" />
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="1Akzb_JndMo" role="3cqZAp">
        <node concept="mw_s8" id="1Akzb_JndMp" role="1ZfhK$">
          <node concept="1Z2H0r" id="1Akzb_JndMq" role="mwGJk">
            <node concept="2OqwBi" id="1Akzb_JndMr" role="1Z2MuG">
              <node concept="1YBJjd" id="1Akzb_JndMs" role="2Oq$k0">
                <ref role="1YBMHb" node="1Akzb_JlNHO" resolve="conjuncion" />
              </node>
              <node concept="3TrEf2" id="1Akzb_JndMt" role="2OqNvi">
                <ref role="3Tt5mk" to="ljy1:1Akzb_JggCY" resolve="izquierda" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1Akzb_JndMu" role="1ZfhKB">
          <node concept="2c44tf" id="1Akzb_JndMv" role="mwGJk">
            <node concept="1QPoqz" id="1Akzb_JndMw" role="2c44tc" />
          </node>
        </node>
        <node concept="Xl_RD" id="1Akzb_JndMx" role="3o8Qv2">
          <property role="Xl_RC" value="El operador 'y' solo se aplica a expresiones booleanas" />
        </node>
      </node>
      <node concept="1Z5TYs" id="1Akzb_JndMy" role="3cqZAp">
        <node concept="mw_s8" id="1Akzb_JndMz" role="1ZfhK$">
          <node concept="1Z2H0r" id="1Akzb_JndM$" role="mwGJk">
            <node concept="2OqwBi" id="1Akzb_JndM_" role="1Z2MuG">
              <node concept="1YBJjd" id="1Akzb_JndMA" role="2Oq$k0">
                <ref role="1YBMHb" node="1Akzb_JlNHO" resolve="conjuncion" />
              </node>
              <node concept="3TrEf2" id="1Akzb_JndMB" role="2OqNvi">
                <ref role="3Tt5mk" to="ljy1:1Akzb_JggCZ" resolve="derecha" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="1Akzb_JndMC" role="1ZfhKB">
          <node concept="2c44tf" id="1Akzb_JndMD" role="mwGJk">
            <node concept="1QPoqz" id="1Akzb_JndME" role="2c44tc" />
          </node>
        </node>
        <node concept="Xl_RD" id="1Akzb_JndMF" role="3o8Qv2">
          <property role="Xl_RC" value="El operador 'y' solo se aplica a expresiones booleanas" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="1Akzb_JlNHQ">
    <property role="TrG5h" value="check_GuardaBooleana" />
    <node concept="1YaCAy" id="1Akzb_JlNHR" role="1YuTPh">
      <property role="TrG5h" value="transicion" />
      <ref role="1YaFvo" to="ljy1:1Akzb_JggCx" resolve="Transicion" />
    </node>
    <node concept="3clFbS" id="1Akzb_JndN1" role="18ibNy">
      <node concept="3clFbJ" id="1Akzb_JndN2" role="3cqZAp">
        <node concept="2OqwBi" id="1Akzb_JndN3" role="3clFbw">
          <node concept="2OqwBi" id="1Akzb_JndN4" role="2Oq$k0">
            <node concept="1YBJjd" id="1Akzb_JndN5" role="2Oq$k0">
              <ref role="1YBMHb" node="1Akzb_JlNHR" resolve="transicion" />
            </node>
            <node concept="3TrEf2" id="1Akzb_JndN6" role="2OqNvi">
              <ref role="3Tt5mk" to="ljy1:1Akzb_JggCQ" resolve="guarda" />
            </node>
          </node>
          <node concept="3x8VRR" id="1Akzb_JndN7" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="1Akzb_JndN8" role="3clFbx">
          <node concept="1Z5TYs" id="1Akzb_JndN9" role="3cqZAp">
            <node concept="mw_s8" id="1Akzb_JndNa" role="1ZfhK$">
              <node concept="1Z2H0r" id="1Akzb_JndNb" role="mwGJk">
                <node concept="2OqwBi" id="1Akzb_JndNc" role="1Z2MuG">
                  <node concept="1YBJjd" id="1Akzb_JndNd" role="2Oq$k0">
                    <ref role="1YBMHb" node="1Akzb_JlNHR" resolve="transicion" />
                  </node>
                  <node concept="3TrEf2" id="1Akzb_JndNe" role="2OqNvi">
                    <ref role="3Tt5mk" to="ljy1:1Akzb_JggCQ" resolve="guarda" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="mw_s8" id="1Akzb_JndNf" role="1ZfhKB">
              <node concept="2c44tf" id="1Akzb_JndNg" role="mwGJk">
                <node concept="1QPoqz" id="1Akzb_JndNh" role="2c44tc" />
              </node>
            </node>
            <node concept="Xl_RD" id="1Akzb_JndNi" role="3o8Qv2">
              <property role="Xl_RC" value="La guarda de una transicion debe ser una expresion booleana" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="1Akzb_JlNHT">
    <property role="TrG5h" value="check_Razonador" />
    <node concept="1YaCAy" id="1Akzb_JlNHU" role="1YuTPh">
      <property role="TrG5h" value="proceso" />
      <ref role="1YaFvo" to="ljy1:1Akzb_JggCl" resolve="Proceso" />
    </node>
    <node concept="3clFbS" id="1Akzb_JlNHV" role="18ibNy">
      <node concept="1DcWWT" id="1Akzb_JndNU" role="3cqZAp">
        <node concept="2YIFZM" id="1Akzb_JndOj" role="1DdaDG">
          <ref role="1Pybhc" to="rz2d:1Akzb_Jgsy_" resolve="Razonador" />
          <ref role="37wK5l" to="rz2d:1Akzb_Ji5ch" resolve="problemas" />
          <node concept="1YBJjd" id="1Akzb_Jnf6y" role="37wK5m">
            <ref role="1YBMHb" node="1Akzb_JlNHU" resolve="proceso" />
          </node>
        </node>
        <node concept="3cpWsn" id="1Akzb_JndOc" role="1Duv9x">
          <property role="TrG5h" value="p" />
          <node concept="10Q1$e" id="1Akzb_JndOf" role="1tU5fm">
            <node concept="3uibUv" id="1Akzb_JndOe" role="10Q1$1">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="1Akzb_JndNW" role="2LFqv$">
          <node concept="3clFbJ" id="1Akzb_JndNX" role="3cqZAp">
            <node concept="2YIFZM" id="1Akzb_JndOl" role="3clFbw">
              <ref role="1Pybhc" to="rz2d:1Akzb_Jgsy_" resolve="Razonador" />
              <ref role="37wK5l" to="rz2d:1Akzb_JlNIr" resolve="esError" />
              <node concept="37vLTw" id="1Akzb_JndOm" role="37wK5m">
                <ref role="3cqZAo" node="1Akzb_JndOc" resolve="p" />
              </node>
            </node>
            <node concept="9aQIb" id="1Akzb_JndO6" role="9aQIa">
              <node concept="3clFbS" id="1Akzb_JndO7" role="9aQI4">
                <node concept="a7r0C" id="1Akzb_Jnf6Q" role="3cqZAp">
                  <node concept="2YIFZM" id="1Akzb_Jnf6R" role="a7wSD">
                    <ref role="1Pybhc" to="rz2d:1Akzb_Jgsy_" resolve="Razonador" />
                    <ref role="37wK5l" to="rz2d:1Akzb_JlNIC" resolve="mensajeDe" />
                    <node concept="37vLTw" id="1Akzb_Jnf6S" role="37wK5m">
                      <ref role="3cqZAo" node="1Akzb_JndOc" resolve="p" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="1Akzb_Jnf6T" role="1urrMF">
                    <ref role="1Pybhc" to="rz2d:1Akzb_Jgsy_" resolve="Razonador" />
                    <ref role="37wK5l" to="rz2d:1Akzb_JlNIP" resolve="nodoDe" />
                    <node concept="37vLTw" id="1Akzb_Jnf6U" role="37wK5m">
                      <ref role="3cqZAo" node="1Akzb_JndOc" resolve="p" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1Akzb_JndO1" role="3clFbx">
              <node concept="2MkqsV" id="1Akzb_Jnf6A" role="3cqZAp">
                <node concept="2YIFZM" id="1Akzb_Jnf6B" role="2MkJ7o">
                  <ref role="1Pybhc" to="rz2d:1Akzb_Jgsy_" resolve="Razonador" />
                  <ref role="37wK5l" to="rz2d:1Akzb_JlNIC" resolve="mensajeDe" />
                  <node concept="37vLTw" id="1Akzb_Jnf6C" role="37wK5m">
                    <ref role="3cqZAo" node="1Akzb_JndOc" resolve="p" />
                  </node>
                </node>
                <node concept="2YIFZM" id="1Akzb_Jnf6D" role="1urrMF">
                  <ref role="1Pybhc" to="rz2d:1Akzb_Jgsy_" resolve="Razonador" />
                  <ref role="37wK5l" to="rz2d:1Akzb_JlNIP" resolve="nodoDe" />
                  <node concept="37vLTw" id="1Akzb_Jnf6E" role="37wK5m">
                    <ref role="3cqZAo" node="1Akzb_JndOc" resolve="p" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="18kY7G" id="1Akzb_JlNHW">
    <property role="TrG5h" value="check_DuracionPositiva" />
    <node concept="1YaCAy" id="1Akzb_JlNHX" role="1YuTPh">
      <property role="TrG5h" value="tarea" />
      <ref role="1YaFvo" to="ljy1:1Akzb_JggCu" resolve="EstadoTarea" />
    </node>
    <node concept="3clFbS" id="1Akzb_JndNC" role="18ibNy">
      <node concept="3clFbJ" id="1Akzb_JndND" role="3cqZAp">
        <node concept="2dkUwp" id="1Akzb_JndNE" role="3clFbw">
          <node concept="2YIFZM" id="1Akzb_JndNF" role="3uHU7B">
            <ref role="1Pybhc" to="rz2d:1Akzb_Jgsy_" resolve="Razonador" />
            <ref role="37wK5l" to="rz2d:1Akzb_Jgs$Y" resolve="duracion" />
            <node concept="1YBJjd" id="1Akzb_JndNG" role="37wK5m">
              <ref role="1YBMHb" node="1Akzb_JlNHX" resolve="tarea" />
            </node>
          </node>
          <node concept="3cmrfG" id="1Akzb_JndNH" role="3uHU7w">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
        <node concept="3clFbS" id="1Akzb_JndNI" role="3clFbx">
          <node concept="2MkqsV" id="1Akzb_JndNJ" role="3cqZAp">
            <node concept="Xl_RD" id="1Akzb_JndNK" role="2MkJ7o">
              <property role="Xl_RC" value="La duracion de una tarea debe ser un entero positivo (horas)" />
            </node>
            <node concept="1YBJjd" id="1Akzb_JndNL" role="1urrMF">
              <ref role="1YBMHb" node="1Akzb_JlNHX" resolve="tarea" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

