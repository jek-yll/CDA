<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_ALGORITHME"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" arrondiAuto="vrai" totalAffichages="1000" totalBoucles="5000000" maxBoucle="500000" epaisseurPoint="2" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nb" algoitem="nb EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#somme" algoitem="somme EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#message" algoitem="message EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#i#1#pasliste" algoitem="i PREND_LA_VALEUR 1"/>
        <item code="5#somme#i#pasliste" algoitem="somme PREND_LA_VALEUR i"/>
        <item code="4#Veuillez entrer un nombre#0" algoitem="AFFICHER &quot;Veuillez entrer un nombre&quot;"/>
        <item code="2#nb#pasliste" algoitem="LIRE nb"/>
        <item code="5#message#i#pasliste" algoitem="message PREND_LA_VALEUR i"/>
        <item code="12#i#2#nb" algoitem="POUR i ALLANT_DE 2 A nb">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#message#message+&quot; + &quot;+i#pasliste" algoitem="message PREND_LA_VALEUR message+&quot; + &quot;+i"/>
            <item code="5#somme#somme+i#pasliste" algoitem="somme PREND_LA_VALEUR somme+i"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="3#message#0#pasliste" algoitem="AFFICHER message"/>
        <item code="4# = #0" algoitem="AFFICHER &quot; = &quot;"/>
        <item code="3#somme#1#pasliste" algoitem="AFFICHER somme"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
