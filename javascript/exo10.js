// var myTableau = new Array(7); 
// myTableau[0] = ["lundi"];
// myTableau[1] = ["Mardi"];
// myTableau[2] = ["Mercredi"];
// myTableau[3] = ["Jeudi"];
// myTableau[4] = ["Vendredi"];
// myTableau[5] = ["Samedi"];
// myTableau[6] = ["dimanche"];
// var nb = myTableau.length;
// console.log("le tableau contient"+7+ "élèments");
// console.log(myTableau);


////////////////////////////////////////////////EXO 1://////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

pr = window.prompt
cl = console.log
ct = console.table

let t = pr("taille tableau") ;  
let myTableau = new Array(t);  
for(let i = 0; i < t; i++){
    myTableau.push(pr("valeur " + i));

}
ct(myTableau);

////////////////////////////////////////////////exo 2://///////////////////////////////////////////////////////////////////////////


















