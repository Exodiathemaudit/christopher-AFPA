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


let cpt = 0;
let somme = 0;
let ok = true;
let moyenne
while(ok)
{
  let N = Number(window.prompt ("saisir un nombre "));
    somme = somme + N;
    cpt++;
    console.log(somme);
    console.log(cpt);
    ok = true
    if(N <= 0){
      ok = false;
    }else{
      continue;
    }
} 

moyenne = cpt/somme;
console.log(moyenne);













