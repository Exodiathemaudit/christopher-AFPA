let tab = ["Audrez", "Aurélien", "flavien", "jerémy","laurent","melik","Nouara","Salem", "Samuel","Stéphane"];
let nom = "";
let pre = 0;

nom = window.prompt("entrez le prénom recherché");

if(tab.indexOf(nom) === -1)
{
window.prompt("le prénom n'y est pas");
}
else
{
    pre = tab.indexOf(nom);
    console.log("avant tab.splice:" + tab);
    console.log("pre=" + pre);
    tab.splice((pre),1);
    console.log("apres tab.splice:" + tab);
    tab.push("");
    console.log("aprés tab.push=" + tab );

window.alert("le prénom: "  + nom + " a été retiré de la liste des prénom:");

}
