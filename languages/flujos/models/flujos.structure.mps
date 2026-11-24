<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7cfd2ea4-996d-4cdb-9659-c218fb4fce5e(flujos.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
        <property id="672037151186491528" name="presentation" index="1L1pqM" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="25R3W" id="1Akzb_JggsM">
    <property role="3F6X1D" value="1843252875564746546" />
    <property role="TrG5h" value="OperadorComparacion" />
    <ref role="1H5jkz" node="1Akzb_JggsS" resolve="igual" />
    <node concept="25R33" id="1Akzb_JggsO" role="25R1y">
      <property role="3tVfz5" value="2605170584231523926" />
      <property role="TrG5h" value="menor" />
      <property role="1L1pqM" value="&lt;" />
    </node>
    <node concept="25R33" id="1Akzb_JggsP" role="25R1y">
      <property role="3tVfz5" value="9216228085180163791" />
      <property role="TrG5h" value="menorIgual" />
      <property role="1L1pqM" value="&lt;=" />
    </node>
    <node concept="25R33" id="1Akzb_JggsQ" role="25R1y">
      <property role="3tVfz5" value="5241995893621377834" />
      <property role="TrG5h" value="mayor" />
      <property role="1L1pqM" value="&gt;" />
    </node>
    <node concept="25R33" id="1Akzb_JggsR" role="25R1y">
      <property role="3tVfz5" value="1590493493800165469" />
      <property role="TrG5h" value="mayorIgual" />
      <property role="1L1pqM" value="&gt;=" />
    </node>
    <node concept="25R33" id="1Akzb_JggsS" role="25R1y">
      <property role="3tVfz5" value="1050167708768680571" />
      <property role="TrG5h" value="igual" />
      <property role="1L1pqM" value="==" />
    </node>
    <node concept="25R33" id="1Akzb_JggsT" role="25R1y">
      <property role="3tVfz5" value="4658146680035608421" />
      <property role="TrG5h" value="distinto" />
      <property role="1L1pqM" value="!=" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Akzb_JggCl">
    <property role="EcuMT" value="1843252875564747285" />
    <property role="TrG5h" value="Proceso" />
    <property role="34LRSv" value="proceso" />
    <property role="R4oN_" value="Proceso de negocio modelado como sistema de transicion de estados" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="proceso" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1Akzb_JggCE" role="1TKVEi">
      <property role="IQ2ns" value="1843252875564747306" />
      <property role="20kJfa" value="roles" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="1Akzb_JggCm" resolve="Rol" />
    </node>
    <node concept="1TJgyj" id="1Akzb_JggCF" role="1TKVEi">
      <property role="IQ2ns" value="1843252875564747307" />
      <property role="20kJfa" value="variables" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="1Akzb_JggCn" resolve="Variable" />
    </node>
    <node concept="1TJgyj" id="1Akzb_JggCG" role="1TKVEi">
      <property role="IQ2ns" value="1843252875564747308" />
      <property role="20kJfa" value="estados" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="1Akzb_JggCs" resolve="Estado" />
    </node>
    <node concept="1TJgyj" id="1Akzb_JggCH" role="1TKVEi">
      <property role="IQ2ns" value="1843252875564747309" />
      <property role="20kJfa" value="transiciones" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="1Akzb_JggCx" resolve="Transicion" />
    </node>
    <node concept="PrWs8" id="1Akzb_JggCI" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="1Akzb_Jgsyy" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Akzb_JggCm">
    <property role="EcuMT" value="1843252875564747286" />
    <property role="TrG5h" value="Rol" />
    <property role="34LRSv" value="rol" />
    <property role="R4oN_" value="Actor responsable de tareas" />
    <property role="3GE5qa" value="proceso" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1Akzb_JggCJ" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Akzb_JggCn">
    <property role="EcuMT" value="1843252875564747287" />
    <property role="TrG5h" value="Variable" />
    <property role="34LRSv" value="variable" />
    <property role="R4oN_" value="Variable tipada del proceso" />
    <property role="3GE5qa" value="datos" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1Akzb_JggCK" role="1TKVEi">
      <property role="IQ2ns" value="1843252875564747312" />
      <property role="20kJfa" value="tipo" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1Akzb_JggCo" resolve="TipoDato" />
    </node>
    <node concept="PrWs8" id="1Akzb_JggCL" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Akzb_JggCo">
    <property role="EcuMT" value="1843252875564747288" />
    <property role="TrG5h" value="TipoDato" />
    <property role="R4oN_" value="Tipo de dato del dominio" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="datos" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="1Akzb_JggCp">
    <property role="EcuMT" value="1843252875564747289" />
    <property role="TrG5h" value="TipoEntero" />
    <property role="34LRSv" value="entero" />
    <property role="R4oN_" value="Tipo numerico entero" />
    <property role="3GE5qa" value="datos" />
    <ref role="1TJDcQ" node="1Akzb_JggCo" resolve="TipoDato" />
  </node>
  <node concept="1TIwiD" id="1Akzb_JggCq">
    <property role="EcuMT" value="1843252875564747290" />
    <property role="TrG5h" value="TipoBooleano" />
    <property role="34LRSv" value="booleano" />
    <property role="R4oN_" value="Tipo logico" />
    <property role="3GE5qa" value="datos" />
    <ref role="1TJDcQ" node="1Akzb_JggCo" resolve="TipoDato" />
  </node>
  <node concept="1TIwiD" id="1Akzb_JggCr">
    <property role="EcuMT" value="1843252875564747291" />
    <property role="TrG5h" value="TipoTexto" />
    <property role="34LRSv" value="texto" />
    <property role="R4oN_" value="Tipo cadena de texto" />
    <property role="3GE5qa" value="datos" />
    <ref role="1TJDcQ" node="1Akzb_JggCo" resolve="TipoDato" />
  </node>
  <node concept="1TIwiD" id="1Akzb_JggCs">
    <property role="EcuMT" value="1843252875564747292" />
    <property role="TrG5h" value="Estado" />
    <property role="R4oN_" value="Nodo del grafo de estados" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="estados" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1Akzb_JggCM" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Akzb_JggCt">
    <property role="EcuMT" value="1843252875564747293" />
    <property role="TrG5h" value="EstadoInicial" />
    <property role="34LRSv" value="inicial" />
    <property role="R4oN_" value="Estado donde arranca el proceso" />
    <property role="3GE5qa" value="estados" />
    <ref role="1TJDcQ" node="1Akzb_JggCs" resolve="Estado" />
  </node>
  <node concept="1TIwiD" id="1Akzb_JggCu">
    <property role="EcuMT" value="1843252875564747294" />
    <property role="TrG5h" value="EstadoTarea" />
    <property role="34LRSv" value="tarea" />
    <property role="R4oN_" value="Tarea ejecutada por un rol" />
    <property role="3GE5qa" value="estados" />
    <ref role="1TJDcQ" node="1Akzb_JggCs" resolve="Estado" />
    <node concept="1TJgyj" id="1Akzb_JggCN" role="1TKVEi">
      <property role="IQ2ns" value="1843252875564747315" />
      <property role="20kJfa" value="responsable" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1Akzb_JggCm" resolve="Rol" />
    </node>
    <node concept="PrWs8" id="1Akzb_JggCO" role="PzmwI">
      <ref role="PrY4T" node="1Akzb_JggCD" resolve="IConDuracion" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Akzb_JggCv">
    <property role="EcuMT" value="1843252875564747295" />
    <property role="TrG5h" value="EstadoDecision" />
    <property role="34LRSv" value="decision" />
    <property role="R4oN_" value="Bifurcacion con guardas" />
    <property role="3GE5qa" value="estados" />
    <ref role="1TJDcQ" node="1Akzb_JggCs" resolve="Estado" />
  </node>
  <node concept="1TIwiD" id="1Akzb_JggCw">
    <property role="EcuMT" value="1843252875564747296" />
    <property role="TrG5h" value="EstadoFinal" />
    <property role="34LRSv" value="final" />
    <property role="R4oN_" value="Estado de terminacion" />
    <property role="3GE5qa" value="estados" />
    <ref role="1TJDcQ" node="1Akzb_JggCs" resolve="Estado" />
  </node>
  <node concept="1TIwiD" id="1Akzb_JggCx">
    <property role="EcuMT" value="1843252875564747297" />
    <property role="TrG5h" value="Transicion" />
    <property role="34LRSv" value="transicion" />
    <property role="R4oN_" value="Arco dirigido entre estados con guarda opcional" />
    <property role="3GE5qa" value="proceso" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="1Akzb_JggCP" role="1TKVEl">
      <property role="IQ2nx" value="1843252875564747317" />
      <property role="TrG5h" value="evento" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="1Akzb_JggCQ" role="1TKVEi">
      <property role="IQ2ns" value="1843252875564747318" />
      <property role="20kJfa" value="guarda" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="1Akzb_JggCy" resolve="Expresion" />
    </node>
    <node concept="1TJgyj" id="1Akzb_JggCR" role="1TKVEi">
      <property role="IQ2ns" value="1843252875564747319" />
      <property role="20kJfa" value="origen" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1Akzb_JggCs" resolve="Estado" />
    </node>
    <node concept="1TJgyj" id="1Akzb_JggCS" role="1TKVEi">
      <property role="IQ2ns" value="1843252875564747320" />
      <property role="20kJfa" value="destino" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1Akzb_JggCs" resolve="Estado" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Akzb_JggCy">
    <property role="EcuMT" value="1843252875564747298" />
    <property role="TrG5h" value="Expresion" />
    <property role="R4oN_" value="Expresion tipada usada en guardas" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="expresiones" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="1Akzb_JggCz">
    <property role="EcuMT" value="1843252875564747299" />
    <property role="TrG5h" value="LiteralEntero" />
    <property role="34LRSv" value="numero" />
    <property role="R4oN_" value="Constante entera" />
    <property role="3GE5qa" value="expresiones" />
    <ref role="1TJDcQ" node="1Akzb_JggCy" resolve="Expresion" />
    <node concept="1TJgyi" id="1Akzb_JggCT" role="1TKVEl">
      <property role="IQ2nx" value="1843252875564747321" />
      <property role="TrG5h" value="valor" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Akzb_JggC$">
    <property role="EcuMT" value="1843252875564747300" />
    <property role="TrG5h" value="LiteralVerdadero" />
    <property role="34LRSv" value="verdadero" />
    <property role="R4oN_" value="Constante logica verdadera" />
    <property role="3GE5qa" value="expresiones" />
    <ref role="1TJDcQ" node="1Akzb_JggCy" resolve="Expresion" />
  </node>
  <node concept="1TIwiD" id="1Akzb_JggC_">
    <property role="EcuMT" value="1843252875564747301" />
    <property role="TrG5h" value="LiteralFalso" />
    <property role="34LRSv" value="falso" />
    <property role="R4oN_" value="Constante logica falsa" />
    <property role="3GE5qa" value="expresiones" />
    <ref role="1TJDcQ" node="1Akzb_JggCy" resolve="Expresion" />
  </node>
  <node concept="1TIwiD" id="1Akzb_JggCA">
    <property role="EcuMT" value="1843252875564747302" />
    <property role="TrG5h" value="RefVariable" />
    <property role="R4oN_" value="Referencia a una variable del proceso" />
    <property role="3GE5qa" value="expresiones" />
    <ref role="1TJDcQ" node="1Akzb_JggCy" resolve="Expresion" />
    <node concept="1TJgyj" id="1Akzb_JggCU" role="1TKVEi">
      <property role="IQ2ns" value="1843252875564747322" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1Akzb_JggCn" resolve="Variable" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Akzb_JggCB">
    <property role="EcuMT" value="1843252875564747303" />
    <property role="TrG5h" value="Comparacion" />
    <property role="34LRSv" value="comparar" />
    <property role="R4oN_" value="Comparacion binaria" />
    <property role="3GE5qa" value="expresiones" />
    <ref role="1TJDcQ" node="1Akzb_JggCy" resolve="Expresion" />
    <node concept="1TJgyi" id="1Akzb_JggCV" role="1TKVEl">
      <property role="IQ2nx" value="1843252875564747323" />
      <property role="TrG5h" value="operador" />
      <ref role="AX2Wp" node="1Akzb_JggsM" resolve="OperadorComparacion" />
    </node>
    <node concept="1TJgyj" id="1Akzb_JggCW" role="1TKVEi">
      <property role="IQ2ns" value="1843252875564747324" />
      <property role="20kJfa" value="izquierda" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1Akzb_JggCy" resolve="Expresion" />
    </node>
    <node concept="1TJgyj" id="1Akzb_JggCX" role="1TKVEi">
      <property role="IQ2ns" value="1843252875564747325" />
      <property role="20kJfa" value="derecha" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1Akzb_JggCy" resolve="Expresion" />
    </node>
  </node>
  <node concept="1TIwiD" id="1Akzb_JggCC">
    <property role="EcuMT" value="1843252875564747304" />
    <property role="TrG5h" value="Conjuncion" />
    <property role="34LRSv" value="y" />
    <property role="R4oN_" value="Conjuncion logica (AND)" />
    <property role="3GE5qa" value="expresiones" />
    <ref role="1TJDcQ" node="1Akzb_JggCy" resolve="Expresion" />
    <node concept="1TJgyj" id="1Akzb_JggCY" role="1TKVEi">
      <property role="IQ2ns" value="1843252875564747326" />
      <property role="20kJfa" value="izquierda" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1Akzb_JggCy" resolve="Expresion" />
    </node>
    <node concept="1TJgyj" id="1Akzb_JggCZ" role="1TKVEi">
      <property role="IQ2ns" value="1843252875564747327" />
      <property role="20kJfa" value="derecha" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1Akzb_JggCy" resolve="Expresion" />
    </node>
  </node>
  <node concept="PlHQZ" id="1Akzb_JggCD">
    <property role="EcuMT" value="1843252875564747305" />
    <property role="TrG5h" value="IConDuracion" />
    <property role="R4oN_" value="Elemento con duracion estimada en horas" />
    <property role="3GE5qa" value="estados" />
    <node concept="1TJgyi" id="1Akzb_JggD0" role="1TKVEl">
      <property role="IQ2nx" value="1843252875564747328" />
      <property role="TrG5h" value="duracion" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
</model>

