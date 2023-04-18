var n = 0;  
var m = 0;  
var i = 0; 

n = window.prompt("inserez un chiffre ?");

function table()
{
    for (i = 1; i <= 10; i++)
{
    m = ( i * n);
    console.log( Number(n) +"  x " + Number(i) + " = " + Number(m));
    document.write( n + " x " + i + " = " + m );
}
}

table(); 
