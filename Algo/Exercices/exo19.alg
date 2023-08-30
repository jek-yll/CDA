<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;Le 9 ème nombre saisi est :&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2etat="inactif" F2defaut="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" maxBoucle="500000" totalAffichages="1000" totalBoucles="5000000" arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#tab" algoitem="tab EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#x" algoitem="x EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="12#i#0#9" algoitem="POUR i ALLANT_DE 0 A 9">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#Saisir le nombre n°= #0" algoitem="AFFICHER &quot;Saisir le nombre n°= &quot;"/>
            <item code="20#i+1#0" algoitem="AFFICHERCALCUL i+1"/>
            <item code="2#x#pasliste" algoitem="LIRE x"/>
            <item code="5#tab#x#i" algoitem="tab[i] PREND_LA_VALEUR x"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Le 9 ème nombre saisi est :#0" algoitem="AFFICHER &quot;Le 9 ème nombre saisi est :&quot;"/>
        <item code="3#tab#0#8" algoitem="AFFICHER tab[8]"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
