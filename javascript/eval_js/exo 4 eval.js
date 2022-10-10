let TOT = 0;    //TOTAL
let PU = 0;     //PRIX UNITAIRE
let QTE = 0;    //QUANTITE
let REM = 0;    //REMISE
let PAP = 0;    //PRIX À PAYER
let PORT = 0;   //FRAIS DE PORT
let TOTREM = 0; //TOTAL AVEC REMISE

PU = window.prompt("Entrez le prix unitaire");
QTE = window.prompt("saisir la quantité");

TOT = PU*QTE
console.log("TOT ="+ TOT);

if (TOT < (100))
{
    REM = 0;
}
else if(TOT < 500)
{
    REM = (0.95);
}
else
{
    REM = (0.9);
}
console.log("REM = " + REM);

TOTrem = (TOT * REM);
console.log("TOTrem = " + TOTrem);


if(TOTrem > 500)
    {
        PORT = 0;
    }
else
    {
        PORT = (0.02 * TOTrem);
    }
console.log("PORT = " + PORT);

if(PORT < 6)
    {
        PORT = 6;
    }
console.log("PORT = " + PORT);

console.log("PORT ARRONDI = " + PORT);




