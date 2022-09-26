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

// pr = window.prompt
// cl = console.log
// ct = console.table

// let t = pr("taille tableau") ;  
// let myTableau = new Array(t);  
// for(let i = 0; i < t; i++){
//     myTableau.push(pr("valeur " + i));

// }
// ct(myTableau);

////////////////////////////////////////////////exo 2:///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// let t ;

// function getInteger()
// {
//     let e = Number(window.prompt("entrez un entier"));
//     console.log(e);
// }
// getInteger();


// function InitTab(){

// t = Number(window.prompt("entrez la taille du tableau"));
// tab = new Array
// tab.length = t;
// console.log(tab);
// }
// InitTab();

// function saisieTab()
// {

//     for(let p = 0; p < t; p++ ){
//     let y= window.prompt("saisie des différents postes");
//     tab.push(y);
    
//     }
// }
// saisieTab();

// function afficheTab()
// {
//     alert(tab)

    
// }
// console.table(tab);
// afficheTab();

// function rechercheTab()
// {

// let z =  window.prompt("saisir le numéro de la case");
// tab.indexOf(z)
// console.log(tab.indexOf(z));
// }

// rechercheTab();


// function infoTab()
// {
// let y 

// }

// infoTab();


/////////////////////////////////////////////////////////////////////////exo 3 tri à bulles //////////////////////////////////////////////////////////////////////////////////////////////

function sort(tab){
let changed;
do{
    changed = false;

for(let i=0; i < tab.lenght-1; i++){
if(tab[i] > tab[i+1]){
    let tmp = tab[i];
    tab[i] = tab[i+1];
    tab[i+1] = tmp;
    changed = true;
}
}
}
while(changed);
}
let tab = [5, 8, 11, 6, 1, 9, 3];
sort(tab);
console.log(tab);






















