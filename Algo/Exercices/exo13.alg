<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="SI (i==1||nb>=lePlusGrand) ALORS"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2defaut="" F2etat="inactif" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" arrondiAuto="vrai" epaisseurPoint="2" totalAffichages="1000" nbDecimales="8" totalBoucles="5000000" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="lePlusGrand EST_DU_TYPE NOMBRE" code="1#NOMBRE#lePlusGrand"/>
        <item algoitem="nb EST_DU_TYPE NOMBRE" code="1#NOMBRE#nb"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="POUR i ALLANT_DE 1 A 6" code="12#i#1#6">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;Veuillez entrer un nombre&quot;" code="4#Veuillez entrer un nombre#0"/>
            <item algoitem="LIRE nb" code="2#nb#pasliste"/>
            <item algoitem="SI (i==1||nb>=lePlusGrand) ALORS" code="6#i==1||nb>=lePlusGrand">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="lePlusGrand PREND_LA_VALEUR nb" code="5#lePlusGrand#nb#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Voici le plus grand nombre que vous avez entré : &quot;" code="4#Voici le plus grand nombre que vous avez entré : #0"/>
        <item algoitem="AFFICHER lePlusGrand" code="3#lePlusGrand#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
