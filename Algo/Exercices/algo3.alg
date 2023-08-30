<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_SINON" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2para="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" totalAffichages="1000" epaisseurPoint="2" nbDecimales="8" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nbPhotocopie EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbPhotocopie"/>
        <item algoitem="prix EST_DU_TYPE NOMBRE" code="1#NOMBRE#prix"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Combien de photocopies avez-vous besoin ? &quot;" code="4#Combien de photocopies avez-vous besoin ? #1"/>
        <item algoitem="LIRE nbPhotocopie" code="2#nbPhotocopie#pasliste"/>
        <item algoitem="SI (nbPhotocopie>20) ALORS" code="6#nbPhotocopie>20">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Le montant à payer est de : &quot;" code="4#Le montant à payer est de : #0"/>
            <item algoitem="AFFICHERCALCUL prix=nbPhotocopie*0.3" code="20#prix=nbPhotocopie*0.3#0"/>
            <item algoitem="AFFICHER &quot; €&quot;" code="4# €#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (nbPhotocopie>=10) ALORS" code="6#nbPhotocopie>=10">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;Le montant à payer est de : &quot;" code="4#Le montant à payer est de : #0"/>
                    <item algoitem="AFFICHERCALCUL prix=nbPhotocopie*0.4" code="20#prix=nbPhotocopie*0.4#0"/>
                    <item algoitem="AFFICHER &quot; €&quot;" code="4# €#0"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="AFFICHER &quot;Le montant à payer est de : &quot;" code="4#Le montant à payer est de : #0"/>
                        <item algoitem="AFFICHERCALCUL prix=nbPhotocopie*0.5" code="20#prix=nbPhotocopie*0.5#0"/>
                        <item algoitem="AFFICHER &quot; €&quot;" code="4# €#0"/>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
