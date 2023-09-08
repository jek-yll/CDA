const notesSaisies = document.querySelector(".notesSaisies")
const result = document.querySelector(".result")

let nbNotes,
    notes = [],
    noteMax,
    noteMin,
    somme = 0,
    affichageNotes = `<ul>`,
    affichageResult

nbNotes = Number(prompt("Combien de notes souhaitez-vous saisir ?"));

for ( let i = 0 ; i <= nbNotes-1 ; i++){
    notes[i] = Number(prompt(`Saisir la note ${i+1}`));
    affichageNotes += `<li><p>En note <b>${i+1}</b>, vous avez saisi <b>${notes[i]}/20</b>.</p></li>`
    somme += notes[i]
};

affichageNotes += `</ul><hr>`

noteMax = Math.max(...notes)
noteMin = Math.min(...notes)

affichageResult = `
<p>Sur l'ensemble des <b>${nbNotes} notes</b> :<p>\n\n
<ul>
    <li style="color: green">La meilleur note est de <b>${noteMax}/20</b></li>
    <li style="color: red">La moins bonne note est de <b>${noteMin}/20</b></li>
    <li>La moyenne des notes est de <b>${somme / nbNotes}/20</b></li>
</ul>
<hr>`

notesSaisies.innerHTML = affichageNotes
result.innerHTML = affichageResult