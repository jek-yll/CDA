const result = document.querySelector(".result")

let phrase,
    phraseTraitement,
    phraseTable,
    affichage
    

phrase = prompt("Veuillez saisir une phrase");

phraseTable = phrase.split(' ');

for (let i = 0; i < phraseTable.length ; i++){
    phraseTable[i] = phraseTable[i].charAt(0).toUpperCase() + phraseTable[i].slice(1);
};



console.log(phraseTable)

phraseTraitement = phraseTable.join(' ');

console.log(phraseTraitement)

affichage = `
<p>Vous avez saisi : ${phrase}</p>
<p>La chaîne en minuscule : ${phrase.toLowerCase()}</p>
<p>Mise en tableau : ${phrase.split('').join(',')}</p>
<p>La chaîne après traitement : ${phraseTraitement}</p>
`;

result.innerHTML = affichage;