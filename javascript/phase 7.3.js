///////////////////////////////////////////////////////////phase 7.3/////////////////////////////////////////////////////////////////////////////////////////////////////////
let a= window.prompt ("saisir un nombre");
let b= window.prompt ("saisir un deuxieme nombre");
let o= window.prompt ("saisir un operateur");
let r
if ((o!="+") && (o!="-") && (o!="*") && (o!="/"))
{
    alert("opérateur erroné");
}
else if ((o=="/")&& (b==0)){
    alert ("erreur division par 0")
}

else 
{
if(o=="+")
{
    r= Number(a)+Number(b) ;
    alert (a + " + " + b + " = " + r );
}

if(o=="-")
{
    r= Number(a)-Number(b);
    alert (a + " - " + b + " = " + r );
}

if(o=="*")
{
    r=a*b;
    alert (a + " * " + b + " = " + r );
}

if(o=="/")
{
    r=a/b;
    alert (a + " / " + b + " = " + r );
}
}
