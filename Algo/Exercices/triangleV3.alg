<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;Le triangle n'est ni isocele en A, ni en B, ni en C&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2para="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" epaisseurLigne="2" totalAffichages="1000" epaisseurPoint="2" nbDecimales="8" arrondiAuto="vrai" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="AB EST_DU_TYPE NOMBRE" code="1#NOMBRE#AB"/>
        <item algoitem="BC EST_DU_TYPE NOMBRE" code="1#NOMBRE#BC"/>
        <item algoitem="AC EST_DU_TYPE NOMBRE" code="1#NOMBRE#AC"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AB PREND_LA_VALEUR ALGOBOX_ALEA_ENT(1,3)" code="5#AB#ALGOBOX_ALEA_ENT(1,3)#pasliste"/>
        <item algoitem="BC PREND_LA_VALEUR ALGOBOX_ALEA_ENT(1,3)" code="5#BC#ALGOBOX_ALEA_ENT(1,3)#pasliste"/>
        <item algoitem="AC PREND_LA_VALEUR ALGOBOX_ALEA_ENT(1,3)" code="5#AC#ALGOBOX_ALEA_ENT(1,3)#pasliste"/>
        <item algoitem="AFFICHER &quot;AB : &quot;" code="4#AB : #0"/>
        <item algoitem="AFFICHER AB" code="3#AB#1#pasliste"/>
        <item algoitem="AFFICHER &quot;BC : &quot;" code="4#BC : #0"/>
        <item algoitem="AFFICHER BC" code="3#BC#1#pasliste"/>
        <item algoitem="AFFICHER &quot;AC : &quot;" code="4#AC : #0"/>
        <item algoitem="AFFICHER AC" code="3#AC#1#pasliste"/>
        <item algoitem="SI (AB==BC) ALORS" code="6#AB==BC">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="SI (AB==AC) ALORS" code="6#AB==AC">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;Le triangle est equilateral&quot;" code="4#Le triangle est equilateral#0"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="AFFICHER &quot;Le triangle est isocèle en B&quot;" code="4#Le triangle est isocèle en B#0"/>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (AB==AC) ALORS" code="6#AB==AC">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;Le triangle est isocèle en A&quot;" code="4#Le triangle est isocèle en A#0"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="SI (AC==BC) ALORS" code="6#AC==BC">
                            <item algoitem="DEBUT_SI" code="7#debutsi"/>
                            <item algoitem="AFFICHER &quot;Le triangle est isocele en C&quot;" code="4#Le triangle est isocele en C#0"/>
                            <item algoitem="FIN_SI" code="8#finsi"/>
                            <item algoitem="SINON" code="9#sinon">
                                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                                <item algoitem="AFFICHER &quot;Le triangle n'est ni isocele en A, ni en B, ni en C&quot;" code="4#Le triangle n'est ni isocele en A, ni en B, ni en C#0"/>
                                <item algoitem="FIN_SINON" code="11#finsinon"/>
                            </item>
                        </item>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
