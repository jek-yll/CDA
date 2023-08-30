<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_POUR" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" maxBoucle="500000" nbDecimales="8" totalBoucles="5000000" epaisseurPoint="2" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nbUtilisateur" algoitem="nbUtilisateur EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#j" algoitem="j EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#tab" algoitem="tab EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#h" algoitem="h EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Saisir un nombre#0" algoitem="AFFICHER &quot;Saisir un nombre&quot;"/>
        <item code="2#nbUtilisateur#pasliste" algoitem="LIRE nbUtilisateur"/>
        <item code="12#j#0#nbUtilisateur-1" algoitem="POUR j ALLANT_DE 0 A nbUtilisateur-1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#tab#j+1#j" algoitem="tab[j] PREND_LA_VALEUR j+1"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="12#h#0#nbUtilisateur-1" algoitem="POUR h ALLANT_DE 0 A nbUtilisateur-1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#tab[h]%3==0 &amp;&amp; tab[h]%5==0" algoitem="SI (tab[h]%3==0 &amp;&amp; tab[h]%5==0) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#FizzBuzz #0" algoitem="AFFICHER &quot;FizzBuzz &quot;"/>
                <item code="4# #0" algoitem="AFFICHER &quot; &quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="6#tab[h]%3==0" algoitem="SI (tab[h]%3==0) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="4#Fizz #0" algoitem="AFFICHER &quot;Fizz &quot;"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                        <item code="9#sinon" algoitem="SINON">
                            <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                            <item code="6#tab[h]%5==0." algoitem="SI (tab[h]%5==0.) ALORS">
                                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                                <item code="4#Buzz #0" algoitem="AFFICHER &quot;Buzz &quot;"/>
                                <item code="8#finsi" algoitem="FIN_SI"/>
                                <item code="9#sinon" algoitem="SINON">
                                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                                    <item code="3#tab#0#h" algoitem="AFFICHER tab[h]"/>
                                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                                </item>
                            </item>
                            <item code="11#finsinon" algoitem="FIN_SINON"/>
                        </item>
                    </item>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
