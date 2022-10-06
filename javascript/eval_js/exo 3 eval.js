let tab = ["Audrez", "Aurélien", "flavien", "jerémy","laurent","melik","Nouara","Salem", "Samuel","Stéphane"];
let nom = "";
let pre = 0;

nom = window.prompt("entrez le prénom recherché");

if(tab.indexOf(nom) === -1)
{
window.prompt("le prénom n'existe pas");
}
else
{
    pre = tab.indexOf(nom);
    console.log()
}
