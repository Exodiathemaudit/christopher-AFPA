//////////////////////////////////////////////////////////exo 1/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


function affichageImage(img){
    var img = document.createElement('img');
    img.src ="papillon.jpg";

    document.getElementById("p1").innerHTML="<img src = papillon.jpg></img>";
    return;
};
    affichageImage();
    console.log();


    function produit()
{
    let x = window.prompt("entrez un nombre");
    let y = window.prompt("entre un multiplicateur");
    let p = document.createElement('p');
    let resp = x*y;
    console.log("le resultat est :"+ resp);
    document.getElementById("p2").innerHTML="<p>le cube de "+ x + " est égale à "+ x*x*x+ "</p>";
    document.getElementById("p3").innerHTML="<p>le produit de "+ x + "est égale à "+ resp +"</p>";
    return resp;
};
produit();



/////////////////////////////////////////////////////////////////////exo 2/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//const myString = 
//const splits = myString.split()
//console.log(splits)
