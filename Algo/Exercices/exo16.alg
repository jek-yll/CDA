<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_TANT_QUE" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" totalAffichages="1000" arrondiAuto="vrai" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#notePlusPetite" algoitem="notePlusPetite EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#notePlusGrande" algoitem="notePlusGrande EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#somme" algoitem="somme EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#note" algoitem="note EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#choix" algoitem="choix EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#affichageSaisi" algoitem="affichageSaisi EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Saisir la note n°=1#0" algoitem="AFFICHER &quot;Saisir la note n°=1&quot;"/>
        <item code="2#note#pasliste" algoitem="LIRE note"/>
        <item code="5#somme#note#pasliste" algoitem="somme PREND_LA_VALEUR note"/>
        <item code="5#notePlusPetite#note#pasliste" algoitem="notePlusPetite PREND_LA_VALEUR note"/>
        <item code="5#notePlusGrande#note#pasliste" algoitem="notePlusGrande PREND_LA_VALEUR note"/>
        <item code="12#i#2#20" algoitem="POUR i ALLANT_DE 2 A 20">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#affichageSaisi#&quot;Saisir la note n°=&quot; +i#pasliste" algoitem="affichageSaisi PREND_LA_VALEUR &quot;Saisir la note n°=&quot; +i"/>
            <item code="3#affichageSaisi#0#pasliste" algoitem="AFFICHER affichageSaisi"/>
            <item code="2#note#pasliste" algoitem="LIRE note"/>
            <item code="5#somme#somme+note#pasliste" algoitem="somme PREND_LA_VALEUR somme+note"/>
            <item code="6#notePlusPetite>=note" algoitem="SI (notePlusPetite>=note) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#notePlusPetite#note#pasliste" algoitem="notePlusPetite PREND_LA_VALEUR note"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#notePlusGrande&lt;=note" algoitem="SI (notePlusGrande&lt;=note) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#notePlusGrande#note#pasliste" algoitem="notePlusGrande PREND_LA_VALEUR note"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#--------- MENU -----------#1" algoitem="AFFICHER &quot;--------- MENU -----------&quot;"/>
        <item code="4#Pour afficher la note maximale taper : 1#1" algoitem="AFFICHER &quot;Pour afficher la note maximale taper : 1&quot;"/>
        <item code="4#Pour afficher la note minimale taper : 2#1" algoitem="AFFICHER &quot;Pour afficher la note minimale taper : 2&quot;"/>
        <item code="4#Pour afficher la moyenne taper : 3#1" algoitem="AFFICHER &quot;Pour afficher la moyenne taper : 3&quot;"/>
        <item code="4#Si vous souhaitez quitter le programme, taper : 4#1" algoitem="AFFICHER &quot;Si vous souhaitez quitter le programme, taper : 4&quot;"/>
        <item code="4#---------------------------#1" algoitem="AFFICHER &quot;---------------------------&quot;"/>
        <item code="15#choix!=4" algoitem="TANT_QUE (choix!=4) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#Votre choix :#0" algoitem="AFFICHER &quot;Votre choix :&quot;"/>
            <item code="2#choix#pasliste" algoitem="LIRE choix"/>
            <item code="6#choix==1" algoitem="SI (choix==1) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#La note la plus grande est : #0" algoitem="AFFICHER &quot;La note la plus grande est : &quot;"/>
                <item code="3#notePlusGrande#1#pasliste" algoitem="AFFICHER notePlusGrande"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#choix==2" algoitem="SI (choix==2) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#La note la plus petite est : #0" algoitem="AFFICHER &quot;La note la plus petite est : &quot;"/>
                <item code="3#notePlusPetite#1#pasliste" algoitem="AFFICHER notePlusPetite"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#choix==3" algoitem="SI (choix==3) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#La moyenne est : #0" algoitem="AFFICHER &quot;La moyenne est : &quot;"/>
                <item code="20#somme/20#1" algoitem="AFFICHERCALCUL somme/20"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
