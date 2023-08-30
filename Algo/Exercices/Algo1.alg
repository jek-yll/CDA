<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="LIRE B" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" nbDecimales="8" totalBoucles="5000000" totalAffichages="1000" arrondiAuto="vrai" epaisseurPoint="2" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#A" algoitem="A EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#B" algoitem="B EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#C" algoitem="C EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Valeur de A ?#1" algoitem="AFFICHER &quot;Valeur de A ?&quot;"/>
        <item code="2#A#pasliste" algoitem="LIRE A"/>
        <item code="4#Valeur de B ?#1" algoitem="AFFICHER &quot;Valeur de B ?&quot;"/>
        <item code="2#B#pasliste" algoitem="LIRE B"/>
        <item code="5#C#A#pasliste" algoitem="C PREND_LA_VALEUR A"/>
        <item code="5#A#B#pasliste" algoitem="A PREND_LA_VALEUR B"/>
        <item code="5#B#C#pasliste" algoitem="B PREND_LA_VALEUR C"/>
        <item code="4#Voici A : #0" algoitem="AFFICHER &quot;Voici A : &quot;"/>
        <item code="3#A#1#pasliste" algoitem="AFFICHER A"/>
        <item code="4#Voici B :#0" algoitem="AFFICHER &quot;Voici B :&quot;"/>
        <item code="3#B#1#pasliste" algoitem="AFFICHER B"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
