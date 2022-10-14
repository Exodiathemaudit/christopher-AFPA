// let bouton_envoyer = document.getElementById("Envoyer");
// bouton_envoyer.addEventListener("click", verif_nom);
// bouton_envoyer.addEventListener("click", verif_prenom);
// bouton_envoyer.addEventListener("click", verif_ville);
// bouton_envoyer.addEventListener("click", verif_adress);
// bouton_envoyer.addEventListener("click", verif_codepostal);
// bouton_envoyer.addEventListener("click", verif_DatedeN);
// bouton_envoyer.addEventListener("click", verif_Email);
// bouton_envoyer.addEventListener("click", verif_HF);
// bouton_envoyer.addEventListener("click", verif_select);
// bouton_envoyer.addEventListener("click", verif_question);
// bouton_envoyer.addEventListener("click", verif_checkbox);

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



let N = document.getElementById("nom");
let P = document.getElementById("prenom");
let G = document.getElementById("genre");
let D = document.getElementById("date de naissance");
let C = document.getElementById("code postal");
let A = document.getElementById("adresse");
let V = document.getElementById("ville");
let E = document.getElementById("email");


validation.addEventListener('click',f_valid);

function f_valid(e){

    if(nom.validity.valueMissing){
        e.preventDefault();
        // nom_m.textContent = " -- Nom manquant";
        // nom_m.style.color = 'rgb(133, 5, 5)';
    }
    else if(N.test(nom.value) == false){
        e.preventDefault();
        // nom_m.textContent = " -- Format incorrect";
        // nom_m.style.color = "orange";
    }
    // else{nom_m.textContent =""}
}

