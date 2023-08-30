<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;veuillez entrer un nombre compris entre 1 et 3&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2defaut="" F2para="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" nbDecimales="8" totalBoucles="5000000" epaisseurLigne="2" epaisseurPoint="2" arrondiAuto="vrai" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nb" algoitem="nb EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#veuillez entrer un nombre compris entre 1 et 3#0" algoitem="AFFICHER &quot;veuillez entrer un nombre compris entre 1 et 3&quot;"/>
        <item code="2#nb#pasliste" algoitem="LIRE nb"/>
        <item code="15#nb&lt;1||nb>3" algoitem="TANT_QUE (nb&lt;1||nb>3) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#Erreur, essayez de nouveau#0" algoitem="AFFICHER &quot;Erreur, essayez de nouveau&quot;"/>
            <item code="2#nb#pasliste" algoitem="LIRE nb"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="4#Merci#0" algoitem="AFFICHER &quot;Merci&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
