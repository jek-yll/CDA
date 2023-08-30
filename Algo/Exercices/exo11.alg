<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_ALGORITHME" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2" totalAffichages="1000" arrondiAuto="vrai" nbDecimales="8" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="c EST_DU_TYPE NOMBRE" code="1#NOMBRE#c"/>
        <item algoitem="t EST_DU_TYPE NOMBRE" code="1#NOMBRE#t"/>
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="g EST_DU_TYPE NOMBRE" code="1#NOMBRE#g"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Montant du capital : &quot;" code="4#Montant du capital : #0"/>
        <item algoitem="LIRE c" code="2#c#pasliste"/>
        <item algoitem="AFFICHER &quot;taux d'intérêt (%) : &quot;" code="4#taux d'intérêt (%) : #1"/>
        <item algoitem="LIRE t" code="2#t#pasliste"/>
        <item algoitem="TANT_QUE (g &lt; 2*c) FAIRE" code="15#g &lt; 2*c">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;année : &quot;" code="4#année : #0"/>
            <item algoitem="AFFICHER n" code="3#n#1#pasliste"/>
            <item algoitem="AFFICHER &quot;capital : &quot;" code="4#capital : #0"/>
            <item algoitem="AFFICHERCALCUL g=c*(1+t/100)**n" code="20#g=c*(1+t/100)**n#1"/>
            <item algoitem="n PREND_LA_VALEUR n+1" code="5#n#n+1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;---------------------&quot;" code="4#---------------------#1"/>
        <item algoitem="AFFICHER &quot;Il vous faudra attendre &quot;" code="4#Il vous faudra attendre #0"/>
        <item algoitem="AFFICHERCALCUL n-1" code="20#n-1#0"/>
        <item algoitem="AFFICHER &quot; ans pour doubler votre capital &quot;" code="4# ans pour doubler votre capital #0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
