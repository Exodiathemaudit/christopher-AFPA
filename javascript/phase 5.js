// exercice phase 5
//var bouton5= document.getElementById("Id_btn5");
//bouton5.addEventListener("click",clickbtn5);

//function clickbtn5()
var reponse1 = window.prompt("entrez votre nom");
console.log(reponse1);
var reponse2 = window.prompt("entrez votre prénom");
console.log(reponse2);
if (window.confirm("Etes vous un homme ?") == true)
{
    console.log(" homme");
    var genre = " monsieur";
}else{
    console.log(" femme");
    var genre = " madame";
}
alert("bonjour " + genre +" "+ reponse1+" "+ reponse2+"\r bienvenue sur notre site web !");




