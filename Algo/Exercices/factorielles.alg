<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;, &quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" totalBoucles="5000000" totalAffichages="1000" epaisseurLigne="2" epaisseurPoint="2" nbDecimales="8" arrondiAuto="vrai"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions">
        <item algoitem="FONCTION factoCustom(nb)" code="201#factoCustom#nb">
            <item algoitem="VARIABLES_FONCTION" code="202#declarationsvariablesfonction">
                <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
                <item algoitem="produit EST_DU_TYPE NOMBRE" code="1#NOMBRE#produit"/>
            </item>
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
            <item algoitem="produit PREND_LA_VALEUR 1" code="5#produit#1#pasliste"/>
            <item algoitem="POUR i ALLANT_DE 1 A nb" code="12#i#1#nb">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="produit PREND_LA_VALEUR produit*i" code="5#produit#produit*i#pasliste"/>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="RENVOYER produit" code="205#produit"/>
            <item algoitem="FIN_FONCTION" code="204#finfonction"/>
        </item>
    </item>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nbUtilisateur EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbUtilisateur"/>
        <item algoitem="j EST_DU_TYPE NOMBRE" code="1#NOMBRE#j"/>
        <item algoitem="tabFactorielle EST_DU_TYPE LISTE" code="1#LISTE#tabFactorielle"/>
        <item algoitem="h EST_DU_TYPE NOMBRE" code="1#NOMBRE#h"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Saisir un nombre&quot;" code="4#Saisir un nombre#0"/>
        <item algoitem="LIRE nbUtilisateur" code="2#nbUtilisateur#pasliste"/>
        <item algoitem="POUR j ALLANT_DE 1 A nbUtilisateur" code="12#j#1#nbUtilisateur">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="tabFactorielle[j-1] PREND_LA_VALEUR factoCustom(j)" code="5#tabFactorielle#factoCustom(j)#j-1"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Liste des factorielles de 1 à &quot;" code="4#Liste des factorielles de 1 à #0"/>
        <item algoitem="AFFICHER nbUtilisateur" code="3#nbUtilisateur#0#pasliste"/>
        <item algoitem="AFFICHER &quot; [&quot;" code="4# [#0"/>
        <item algoitem="POUR h ALLANT_DE 0 A nbUtilisateur-2" code="12#h#0#nbUtilisateur-2">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER tabFactorielle[h]" code="3#tabFactorielle#0#h"/>
            <item algoitem="AFFICHER &quot;, &quot;" code="4#, #0"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER tabFactorielle[nbUtilisateur-1]" code="3#tabFactorielle#0#nbUtilisateur-1"/>
        <item algoitem="AFFICHER &quot;]&quot;" code="4#]#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
