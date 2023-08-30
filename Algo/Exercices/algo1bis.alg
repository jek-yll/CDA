<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHERCALCUL 2023-age" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" arrondiAuto="vrai" epaisseurPoint="2" maxBoucle="500000" totalBoucles="5000000" nbDecimales="8" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#nom" algoitem="nom EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#prenom" algoitem="prenom EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#age" algoitem="age EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Quel est votre nom ?#1" algoitem="AFFICHER &quot;Quel est votre nom ?&quot;"/>
        <item code="2#nom#pasliste" algoitem="LIRE nom"/>
        <item code="4#Quel est votre prénom ?#1" algoitem="AFFICHER &quot;Quel est votre prénom ?&quot;"/>
        <item code="2#prenom#pasliste" algoitem="LIRE prenom"/>
        <item code="4#Quel est votre age ?#1" algoitem="AFFICHER &quot;Quel est votre age ?&quot;"/>
        <item code="2#age#pasliste" algoitem="LIRE age"/>
        <item code="4#Bonjour #0" algoitem="AFFICHER &quot;Bonjour &quot;"/>
        <item code="3#prenom#0#pasliste" algoitem="AFFICHER prenom"/>
        <item code="4# #0" algoitem="AFFICHER &quot; &quot;"/>
        <item code="3#nom#0#pasliste" algoitem="AFFICHER nom"/>
        <item code="4# #0" algoitem="AFFICHER &quot; &quot;"/>
        <item code="4#vous avez #0" algoitem="AFFICHER &quot;vous avez &quot;"/>
        <item code="3#age#0#pasliste" algoitem="AFFICHER age"/>
        <item code="4# #0" algoitem="AFFICHER &quot; &quot;"/>
        <item code="4#ans et vous etes sans doutes né en #0" algoitem="AFFICHER &quot;ans et vous etes sans doutes né en &quot;"/>
        <item code="20#2023-age#0" algoitem="AFFICHERCALCUL 2023-age"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
