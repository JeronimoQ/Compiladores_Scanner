//User Code
package scaner.jflex.tarea;

%%
//Opciones y definiciones Regulares
%public
%class AnalizadorLexicoTarea
%char
%line
%column
%standalone

//Definición regular
palabra_clave = (public | class | static | void | main | if | true | System | out | println)
identificadores = (EjemploIF | args)
literales = ("Primer Ejemplo de IF" | "Segundo ejemplo de IF")
tipo_de_dato = (String)
signos = [{}();.[]]
espacios_blanco = [\r|\n|\r\n| |\t]

%%
//Reglas léxicas
{palabra_clave} {System.out.println(" palabra clave: " + yytext()
                                     + " Columna: " + yychar
                                     + " fila: " + yyline);}
{identificadores} {System.out.println(" identificador: " + yytext()
                                     + " Columna: " + yychar
                                     + " fila: " + yyline);}
{literales} {System.out.println(" literal: " + yytext()
                                     + " Columna: " + yychar
                                     + " fila: " + yyline);}
{signos} {System.out.println(" signo: " + yytext()
                                     + " Columna: " + yychar
                                     + " fila: " + yyline);}

{tipo_de_dato} {System.out.println(" Tipo de dato: " + yytext()
                                     + " Columna: " + yychar
                                     + " fila: " + yyline);}

{espacios_blanco}   { }

"["                      {System.out.println(" signo: " + yytext()
                                     + " Columna: " + yychar
                                     + " fila: " + yyline);}
"]"                      {System.out.println(" signo: " + yytext()
                                     + " Columna: " + yychar
                                     + " fila: " + yyline);}