<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot; &quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2defaut="" F2etat="inactif" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" arrondiAuto="vrai" totalBoucles="5000000" maxBoucle="500000" totalAffichages="1000" nbDecimales="8" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#y" algoitem="y EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#x" algoitem="x EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="12#i#1#10" algoitem="POUR i ALLANT_DE 1 A 10">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#i!=10" algoitem="SI (i!=10) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#  #0" algoitem="AFFICHER &quot;  &quot;"/>
                <item code="3#i#1#pasliste" algoitem="AFFICHER i"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="4# #0" algoitem="AFFICHER &quot; &quot;"/>
                    <item code="3#i#1#pasliste" algoitem="AFFICHER i"/>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="4#------#1" algoitem="AFFICHER &quot;------&quot;"/>
            <item code="12#y#0#10" algoitem="POUR y ALLANT_DE 0 A 10">
                <item code="13#debutpour" algoitem="DEBUT_POUR"/>
                <item code="6#i*y&lt;100 ET  i*y>=10" algoitem="SI (i*y&lt;100 ET  i*y>=10) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4# #0" algoitem="AFFICHER &quot; &quot;"/>
                    <item code="20#i*y#1" algoitem="AFFICHERCALCUL i*y"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="6#i*y&lt;10" algoitem="SI (i*y&lt;10) ALORS">
                            <item code="7#debutsi" algoitem="DEBUT_SI"/>
                            <item code="4#  #0" algoitem="AFFICHER &quot;  &quot;"/>
                            <item code="20#i*y#1" algoitem="AFFICHERCALCUL i*y"/>
                            <item code="8#finsi" algoitem="FIN_SI"/>
                            <item code="9#sinon" algoitem="SINON">
                                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                                <item code="20#i*y#1" algoitem="AFFICHERCALCUL i*y"/>
                                <item code="11#finsinon" algoitem="FIN_SINON"/>
                            </item>
                        </item>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="14#finpour" algoitem="FIN_POUR"/>
            </item>
            <item code="4# #0" algoitem="AFFICHER &quot; &quot;"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
