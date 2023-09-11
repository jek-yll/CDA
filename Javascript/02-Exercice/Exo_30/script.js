const notesSaisies = document.querySelector(".notesSaisies")
const result = document.querySelector(".result")

let noteUser = 0,
    nbNote = 0,
    notes = [],
    noteMax = 0,
    noteMin = 0,
    somme = 0,
    affichageNotes = `<ul>`,
    affichageResult = ""

while (noteUser != 777) {
    noteUser = Number(prompt(`Saisir la note ${nbNote + 1} (777 pour stopper la saisie)`));
    if ( noteUser === 777){
        break
    }
    notes[nbNote] = noteUser
    affichageNotes += `<li><p>En note <b>${nbNote + 1}</b>, vous avez saisi <b>${notes[nbNote]}/20</b>.</p></li>`
    nbNote++
};

affichageNotes += `</ul><hr>`

noteMax = Math.max(...notes)
noteMin = Math.min(...notes)
let moyenne = notes.reduce((x,y) => x+y)/notes.length; 

affichageResult = `
<p>Sur l'ensemble des <b>${nbNote} notes</b> :<p>\n\n
<ul>
    <li style="color: green">La meilleur note est de <b>${noteMax}/20</b></li>
    <li style="color: red">La moins bonne note est de <b>${noteMin}/20</b></li>
    <li>La moyenne des notes est de <b>${moyenne}/20</b></li>
</ul>
<hr>`

// ${Math.round((somme/nbNote)*100)/100}

/* function average(array) {
    return array.reduce((x,y) => x+y)/array.length
}
 */
notesSaisies.innerHTML = affichageNotes
result.innerHTML = affichageResult