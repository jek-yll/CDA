<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot; )&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2defaut="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" totalBoucles="5000000" maxBoucle="500000" totalAffichages="1000" arrondiAuto="vrai" epaisseurPoint="2" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nbHabitants EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbHabitants"/>
        <item algoitem="annee EST_DU_TYPE NOMBRE" code="1#NOMBRE#annee"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="nbHabitants PREND_LA_VALEUR 96809" code="5#nbHabitants#96809#pasliste"/>
        <item algoitem="TANT_QUE (nbHabitants&lt;=120000) FAIRE" code="15#nbHabitants&lt;=120000">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="annee PREND_LA_VALEUR annee+1" code="5#annee#annee+1#pasliste"/>
            <item algoitem="AFFICHER annee" code="3#annee#1#pasliste"/>
            <item algoitem="nbHabitants PREND_LA_VALEUR nbHabitants*1.0089" code="5#nbHabitants#nbHabitants*1.0089#pasliste"/>
            <item algoitem="AFFICHER nbHabitants" code="3#nbHabitants#1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;La ville de Tourcoing aura atteint les 120000 habitants la &quot;" code="4#La ville de Tourcoing aura atteint les 120000 habitants la #0"/>
        <item algoitem="AFFICHER annee" code="3#annee#0#pasliste"/>
        <item algoitem="AFFICHER &quot; ème année après 2015 (en &quot;" code="4# ème année après 2015 (en #0"/>
        <item algoitem="AFFICHERCALCUL 2015+annee" code="20#2015+annee#0"/>
        <item algoitem="AFFICHER &quot; )&quot;" code="4# )#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
