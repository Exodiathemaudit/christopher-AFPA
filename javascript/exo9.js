//////////////////////////////////////////////////////////exo 1/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//function affichageImage(img){
//    var img = document.createElement('img');
//    img.src ="papillon.jpg";
//
//    document.getElementById("p1").innerHTML="<img src = papillon.jpg></img>";
//    return;
//};
//    affichageImage();
//    console.log();
//
//
//  function produit()
//{
//    let x = window.prompt("entrez un nombre");
//    let y = window.prompt("entre un multiplicateur");
//    let p = document.createElement('p');
//    let resp = x*y;
//  console.log("le resultat est :"+ resp);
//    document.getElementById("p2").innerHTML="<p>le cube de "+ x + " est égale à "+ x*x*x+ "</p>";
//    document.getElementById("p3").innerHTML="<p>le produit de "+ x + "est égale à "+ resp +"</p>";
//  return resp;
//};
//  produit();


/////////////////////////////////////////////////////////////////////exo 2/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function strtok(){
    let str2 = ","
    let n = window.prompt("saisir un chiffre");
    let str1 = ("christopher,moreau,Cartigny,80200");
    let worlds = str1.split (str2);
    console.log(str1);
    console.log(str1.split);
    console.log(worlds[n - 1]);
    
}; 
strtok();






    

    