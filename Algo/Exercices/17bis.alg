<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="affichage PREND_LA_VALEUR affichage + i + &quot;  &quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2defaut="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" epaisseurLigne="2" maxBoucle="500000" totalAffichages="1000" totalBoucles="5000000" nbDecimales="8" arrondiAuto="vrai"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="affichage EST_DU_TYPE CHAINE" code="1#CHAINE#affichage"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Saisir un nombre &quot;" code="4#Saisir un nombre #0"/>
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="affichage PREND_LA_VALEUR &quot;&quot;" code="5#affichage#&quot;&quot;#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 1 A n" code="12#i#1#n">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="affichage PREND_LA_VALEUR affichage + i + &quot;  &quot;" code="5#affichage#affichage + i + &quot;  &quot;#pasliste"/>
            <item algoitem="AFFICHER affichage" code="3#affichage#1#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
