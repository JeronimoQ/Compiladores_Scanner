//User Code
package com.mycompany.ejercicio_lexico;

%%
//Opciones y definiciones Regulares
%public
%class AnalizadorLexico
%char
%line
%column
%standalone
//Definición regular
letra=[a-zA-Z]

%%
//Reglas léxicas
{letra} {System.out.println(" Lexema: " + yytext()
                         + " Columna: " + yychar
                         + " fila: " + yyline);}