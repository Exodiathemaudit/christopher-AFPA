// let NOM = document.getElementById("nom");
// let PRENOM = document.getElementById("prenom");
// let FEMME = document.getElementById("femme").checked;
// let HOMME = document.getElementById("homme").checked;
// let DATE = document.getElementById("date");
// let CODE = document.getElementById("code");
// let EMAIL = document.getElementById("email");
// let SUJET = document.getElementById("sujet");
// let question = document.getElementById("question");
// let check = document.getElementById("check");

// let Filtre_NOM = new RegExp("^[A-Za-z]+[ -]*$");
// let Filtre_PRENOM = new RegExp("^[A-Za-z -]+$");
// let Filtre_DATE = new RegExp("^[0-9]{4}[-][0-9]{2}[-][0-9]{2}");
// let Filtre_CODE = new RegExp("^[0-9]{5}$");
// let Filtre_EMAIL = new RegExp("^[a-zA-Z0-9.-_]+[@]{1}[a-zA-Z0-9.-_]+[.]{1}[a-z]{2,10}$");

// let valid_CODE = false;
// let Valid_DATE = false;     
// let Valid_EMAIL = false;    
// let Valid_NOM = false;      
// let Valid_PRENOM = false;   
// let Valid_GENRE = false;    

// document.getElementById("nom").onchange = Fctn_NOM;
// document.getElementById("nom").oninput = Fctn_NOM;
// document.getElementById("prenom").onchange = Fctn_PRENOM;
// document.getElementById("prenom").oninput = Fctn_PRENOM;
// document.getElementById("femme").onchange = Fctn_GENRE;
// document.getElementById("homme").onchange = Fctn_GENRE;
// document.getElementById("femme").oninput = Fctn_GENRE;
// document.getElementById("homme").oninput = Fctn_GENRE;
// document.getElementById("code post").onchange = Fctn_CODE;
// document.getElementById("code post").oninput = Fctn_CODE;
// document.getElementById("email").onchange = Fctn_EMAIL;
// document.getElementById("email").oninput = Fctn_EMAIL;
// document.getElementById("date").onchange = Fctn_DATE;
// document.getElementById("date").oninput = Fctn_DATE;
// document.getElementById("ok").onclick = Fctn_ENVOI; 

// function Fctn_ENVOI(event)      
// {   

// if ((!(document.getElementById("check").checked)))
// {
//     console.log(" Case non cochée");
//     document.getElementById("check").innerHTML = "Veuillez cocher la case !";
//     event.preventDefault();

// }
// else 
// {   
//     console.log("Lancement Fctn_ENVOI2");
//     Fctn_envoie2(event);

// }
// }

// function Fctn_ENVOI2(event)

// {
// console.log("  Case cochée");
// console.log("Valid_NOM    = " + Valid_NOM);
// console.log("Valid_PRENOM = " + Valid_PRENOM);
// console.log("Valid_GENRE = " + Valid_GENRE);
// console.log("Valid_DATE  = " + Valid_DATE);
// console.log("Valid_EMAIL = " + Valid_EMAIL);
// console.log("Valid_CODE = " + Valid_CODE );


// if(Valid_NOM == false) 
// {

// console.log("Argument invalide");
// document.getElementById("div_nom").innerHTML = "-->>  Veuillez saisir votre nom";
// event.preventDefault();

// }

// if(valid_prenom == false)
// {

// console.log("Argument invalide =  PRENOM");
// document.getElementById("div_prenom").innerHTML = "Veuillez saisir votre prénom.";
// event.preventDefault();

// }

// if(Valid_GENRE == false)
// {

// console.log("Argument invalide = GENRE");
// document.getElementById("div_genre").innerHTML = ">>>  Veuillez indiquer le genre ! <<<";
// event.preventDefault();

// }

// if(Valid_DATE == false)
// {

// console.log("Argument invalide =  DATE");
// document.getElementById("div_date").innerHTML = ">>>  Veuillez saisir votre date de naissance ! <<<";
// event.preventDefault();

// }


// if(Valid_CODE == false)
// {

// console.log("Argument invalide =  CODE");
// document.getElementById("div_code").innerHTML = "Veuillez saisir le code postal.";
// event.preventDefault();

// }


// if(Valid_EMAIL == false)

// {

// console.log("Argument invalide =  EMAIL");
// document.getElementById("div_email").innerHTML = "Veuillez saisir votre adresse e-mail.";
// event.preventDefault();

// }}




// function Fctn_NOM(event)
// {
// console.log("Fctn_NOM");
//     Valid_NOM = Filtre_NOM.test(NOM.value);
//     console.log("===Valid_NOM = " + Valid_NOM);
// if(NOM == "")
//         {
//         document.getElementById("div_nom").innerHTML = "Veuillez saisir votre nom.";
//         console.log("NOM manquant");
//         event.preventDefault();
//         }
// else
//         {

// if(Valid_NOM == false)
//                 {
//                 console.log("Nom invalide");
//                 document.getElementById("div_nom").innerHTML = "Nom pas bon";
//                 event.preventDefault();
//                 }
// else{
//                 console.log("NOM OK");
//                 console.log("Valid_NOM = " + Valid_NOM);
//                 document.getElementById("div_nom").innerHTML = "NOM  saisi bon ";
// }
// }
// }


let bouton_envoyer = document.getElementById("Envoyer");
bouton_envoyer.addEventListener("click", verif_nom);
bouton_envoyer.addEventListener("click", verif_prenom);
bouton_envoyer.addEventListener("click", verif_ville);
bouton_envoyer.addEventListener("click", verif_adress);
bouton_envoyer.addEventListener("click", verif_codepostal);
bouton_envoyer.addEventListener("click", verif_DatedeN);
bouton_envoyer.addEventListener("click", verif_Email);
bouton_envoyer.addEventListener("click", verif_HF);
bouton_envoyer.addEventListener("click", verif_select);
bouton_envoyer.addEventListener("click", verif_question);
bouton_envoyer.addEventListener("click", verif_checkbox);

//Filtre
let resultat
let filtreN = new RegExp("^[A-Z]+[a-z]+$");
let filtreP = new RegExp("^[A-Z]+[a-z]+$");
let filtreV = new RegExp("^[A-Z]+[a-z]+$");
let filtreA = new RegExp("^[0-9]+.[A-Za-z]+.[A-Za-z]+.[A-Za-z]+$");
let filtreC = new RegExp("^[0-9]+$");
let filtreD = new RegExp("^[0-9]{4}[-]{1}[0-9]{2}[-]{1}[0-9]{2}$");
let filtreE = new RegExp("^[a-z0-9]+[.]?[a-z0-9]*@[a-z]+[.][a-z]{2,4}$");
let filtreQ = new RegExp("^.+");

//Nom
function verif_nom(n){

    let N = document.getElementById("nom");

    if(N == 'null'){
        filtreN;
        n.preventDefault()
    }else{
        filtreN;
        resultat = filtreN.test(N.value);
    }if(resultat == false){

        document.getElementById('1').innerHTML="nom pas conforme";
        n.preventDefault();
    }
}
verif_nom;

//prenom
function verif_prenom(P){

    let P = document.getElementById("prenom");

    if(P == 'null'){
        filtreP;
        P.preventDefault()

    }

    else{
        filtreP;
        resultat = filtreP.test(P.value);


    }if(resultat == false){

        document.getElementById('1').innerHTML="prenom pas conforme";
        P.preventDefault();
    }


}

//genre
function verif_HF(hf)

    let hf = document.getElementById("genre");

    if(hf == 'nul'){
    filtreHf;
    resultat = filtreHf.test(hf.value);

    }if(resultat)









