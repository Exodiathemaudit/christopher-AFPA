

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
        // // nom_m.style.color = "orange";
    }
    // else{nom_m.textContent =""}

f_valid();
















//Nom
// function verif_nom(N){
//     if(N == 'null'){
//         filtreN;
//         N.preventDefault();
//     }else{
//         filtreN;
//         resultat = filtreN.test(N.value);
//     }if(resultat == false){
//         document.getElementById('1').innerHTML="nom pas conforme";
//         N.preventDefault();
//     }
// }
// verif_nom(N);


//prenom
// function verif_prenom(P){

//     if(P == 'null'){
//         filtreP;
//         P.preventDefault()

//     }

//     else{
//         filtreP;
//         resultat = filtreP.test(P.value);


//     }if(resultat == false){

//         document.getElementById('2').innerHTML="prénom non conforme";
//         P.preventDefault();
//     }


// }
// verif_prenom;


// //genre
// function verif_HF(hf)

//     let hf = document.getElementById("genre");

//     if(hf == 'nul'){
//     filtreHf;
//     resultat = filtreHf.test(hf.value);

//     }if(resultat == false){
//         document.getElementById('1').innerHTML="genre non conforme";
//         hf.preventDefault();
//     }
// verif_HF;


// //date de naissance
// function verif_DatedeN(D)
//     let D = document.getElementById("date de naissance");
//     if(D == 'nul'){
//     filtreD;
//     resultat = filtreD.test(D.value);

// }if(resultat == false){
//     document.getElementById('1').innerhtml="date de naissance non conforme";
//     D.preventDefault();

// }
// verif_DatedeN;


// //code postal
// function verif_codepostal(C)
//     let c = document.getElementById("code postal");
//     if(c == 'nul'){
//     filtreC;
//     resultat = filtreC.test(c.value);

// }if (resultat == false){
//     document.getElementById('1').innerHTML="code postal non conforme";
//     C.preventDefault();


// }
// verif_codepostal;


// //adresse
// function verif_adress(A)
//     let A = document.getElementById("adresse");
//     if(A == 'nul'){
//     filtreA;
//     resultat = filtreA.test(A.value);

// }if (resultat == false){
//     document.getElementById('1').innerHTML="adresse non conforme";
//     A.preventDefault();

// }
// verif_adress;


// //ville
// function verif_ville(V)
//     let V = document.getElementById("ville");
//     if(V == 'nul'){
//     filtreV;
//     resultat = filtreV.test(V.value);

// }if (resultat == false){
//     document.getElementById('1').innerhtml="ville non conforme";
//     V.preventDefault();
// }
// verif_ville;


// //email
// function verif_Email(E)
//     let E = document.getElementById("email");
//     if(E == 'nul'){
//     filtreE;
//     resultat = filtreE.test(E.value);

// }if (resultat == false){
//     document.getElementById('1').innerhtml="email non conforme";
//     E.preventDefault();
// }
// verif_Email;
















