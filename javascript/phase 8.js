////////////////////////////////////////////////exo 1 saisie ///////////////////////////////////////////////////////////////////////////////////::


//let cpt = 0;

//while(true){
//let N = window.prompt("entrer un prénom");
  //if(N)
  // {    
   // N=N;
   // cpt++;
  //  console.log(N)
//}
   // else
  //  {
 //       break;
  //  }
//}
//console.log(cpt++);


////////////////////////////////////////////////////////exo 2 entiers inférieur à N ////////////////////////////////////////////////////////////////////////////////////////


//let N = window.prompt("entrez un nombre");
//let r

//for (i=0; i<=N; i++)

//console.log(i)
//{
//alert(i)
//}


//////////////////////////////////////////////////////exo 3 moyenne ////////////////////////////////////////////////////////////////////////////////////////


//let cpt = 0;
//let somme = 0;
//let ok = true;
//let moyenne
//while(ok)
//{
  //let N = Number(window.prompt ("saisir un nombre "));
    //somme = somme + N;
    //cpt++;
    //console.log(somme);
    //console.log(cpt);
    //ok = true
    //if(N <= 0){
      //ok = false;
    //}else{
    //  continue;
 //   }
//} 

//moyenne = cpt/somme;
//console.log(moyenne);


//////////////////////////////////////////////////////////////exo 4 multiples ////////////////////////////////////////////////////////////////////////////////////////

//let x=window.prompt ("entrez un nombre");
//let N=window.prompt ("entrez un nombre");
//for (i=1; i<=N; i++)
//{
//  let r = i * x;
//  console.log (i + "*" + x + "=" + r);
//}
//////////////////////////////////////////////////////////////exo 5 nombres de voyelles//////////////////////////////////////////////////////////////////////////////////////


let voyelles = window.prompt ("entrez un mot");
let vow=0
let lettre;
for (i=0;i<voyelles.length;i++){
lettre = voyelles.substring(i,i+1)
if (lettre.indexOf("a")!=-1){
vow++;}
if (lettre.indexOf("e")!=-1){
vow++;}
if (lettre.indexOf ("i")!=-1){
vow++;}
if (lettre.indexOf ("o")!=-1){
vow++;}
if (lettre.indexOf ("u")!=-1){
vow++;}
if (lettre.indexOf ("y")!=-1){
vow++;}
}
console.log ("le nombres de voyelles est de "+vow );



























