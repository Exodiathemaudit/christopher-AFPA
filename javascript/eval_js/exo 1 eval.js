
let jeune = 0;
let moyen = 0;
let vieux = 0;
let AGE = 0;

while (AGE < (100))
{
AGE = parseInt(window.prompt("Entrez age"));

console.log(AGE);

    if (AGE < 20)
{
    jeune++
    console.log("jeune++");
}
    else if(AGE > (40))
{
    vieux++
    console.log("vieux++");
}
    else
{
    moyen++
    console.log("moyen++");
}
}
    window.alert("Vous avez compté : "+ jeune + "moins de 20 ans " + moyen + " de 20 à 40 ans  et " + vieux + " de plus de 40 ans.");
