

let bouton_envoyer = document.getElementById("Envoyer");
let bouton_submit = document.getElementById("ok");


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



let N = document.getElementById("div_nom");
let P = document.getElementById("div_prenom");
let G = document.getElementById("div_genre");
let D = document.getElementById("div_date");
let C = document.getElementById("div_code");
let A = document.getElementById("div_adresse");
let V = document.getElementById("div_ville");
let E = document.getElementById("div_email");


bouton_submit.addEventListener('click',f_valid);

// email
function f_valid(E){

    if(div_email.validity.valueMissing){
        div_email.preventDefault();
        
    }
    else if(div_email.test(div_email.value) == false){
        div_email.preventDefault();
        
    }
}

f_valid();

// prenom
function f_valid(P){
    if(div-prenom.validity.valueMissing){
        div_prenom.preventDefault();
}
else if (div_prenom.test(div_prenom.value) == false){
        div_prenom.preventDefault();
}
}

f_valid();

//nom
function f_valid(N){
    if(div_nom.validity.valueMissing){
        div_nom.preventDefault();
}
    else if (div_nom.test(div_nom.value) == false){
        div_prenom.preventDefault();

}
}

f_valid();

// date de naissance
function f_valid(D){
    if (div_date.validity.valueMissing){
        div_date.preventDefault();

}
    else if (div_date.test(div_date.value) == false){
        div_date.preventDefault();

}
}

f_valid();

// code postal
function f_valid(C){
    if (div_code.validity.valueMissing){
        div_code.preventDefault();

}
    else if (div_code.test(div_code.value) == false){
        div_code.preventDefault();

}
}
f_valid();

// adresse
function f_valid(A){
    if (div_adresse.validity.valueMissing){
        div_adresse.preventDefault();

    }
        else if (div_adresse.test(div_adresse.value) == false){
            div_adresse.preventDefault();
}
}
f_valid();

// ville
function f_valid(v){

    if (div_ville.validity.valueMissing){
        div_ville.preventDefault();
    }
        else if (div_ville.test(div_ville.value) == false){
            div_ville.preventDefault();
}
}
f_valid();

// genre
function Fctn_GENRE(event)
{
console.log("Fctn_GENRE");

    if ((HOMME.value == "") && (FEMME.value == ""))
        {
        console.log("Sélectionnez le Genre");
        Valid_GENRE = false;
        document.getElementById("div_genre").innerHTML = "Sélectionnez le Genre";
        event.preventDefault();
    } 
    Valid_GENRE = true;
}








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
















