<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_ALGORITHME" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2para="" F2etat="inactif" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2" totalAffichages="1000" arrondiAuto="vrai" epaisseurPoint="2" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="tailles EST_DU_TYPE NOMBRE" code="1#NOMBRE#tailles"/>
        <item algoitem="poids EST_DU_TYPE NOMBRE" code="1#NOMBRE#poids"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Veuillez entrer votre taille (en cm)&quot;" code="4#Veuillez entrer votre taille (en cm)#1"/>
        <item algoitem="LIRE tailles" code="2#tailles#pasliste"/>
        <item algoitem="AFFICHER &quot;Veuillez entrer votre poids (en kg)&quot;" code="4#Veuillez entrer votre poids (en kg)#1"/>
        <item algoitem="LIRE poids" code="2#poids#pasliste"/>
        <item algoitem="SI (poids&lt;78||poids>=66&amp;&amp;tailles>=160&amp;&amp;tailles&lt;172||poids>=60&amp;&amp;tailles>=163&amp;&amp;tailles&lt;175||poids>=54&amp;&amp;tailles>=166&amp;&amp;tailles&lt;178||poids>=48&amp;&amp;tailles>=169&amp;&amp;tailles&lt;183) ALORS" code="6#poids&lt;78||poids>=66&amp;&amp;tailles>=160&amp;&amp;tailles&lt;172||poids>=60&amp;&amp;tailles>=163&amp;&amp;tailles&lt;175||poids>=54&amp;&amp;tailles>=166&amp;&amp;tailles&lt;178||poids>=48&amp;&amp;tailles>=169&amp;&amp;tailles&lt;183">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;vous portez une taille 2&quot;" code="4#vous portez une taille 2#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (poids>=43&amp;&amp;poids&lt;66||tailles>=145&amp;&amp;tailles&lt;172) ALORS" code="6#poids>=43&amp;&amp;poids&lt;66||tailles>=145&amp;&amp;tailles&lt;172">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;Vous portez une taille 1&quot;" code="4#Vous portez une taille 1#0"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="SI (poids>=54&amp;&amp;poids&lt;78||tailles>=163&amp;&amp;tailles&lt;186) ALORS" code="6#poids>=54&amp;&amp;poids&lt;78||tailles>=163&amp;&amp;tailles&lt;186">
                            <item algoitem="DEBUT_SI" code="7#debutsi"/>
                            <item algoitem="AFFICHER &quot;Vous portez une taille 3&quot;" code="4#Vous portez une taille 3#0"/>
                            <item algoitem="FIN_SI" code="8#finsi"/>
                            <item algoitem="SINON" code="9#sinon">
                                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                                <item algoitem="AFFICHER &quot;Nous n'avons pas de taille a vous proposer&quot;" code="4#Nous n'avons pas de taille a vous proposer#0"/>
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
