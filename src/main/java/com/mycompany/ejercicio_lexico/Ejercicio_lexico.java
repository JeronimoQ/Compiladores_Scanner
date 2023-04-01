/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.ejercicio_lexico;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.logging.Level;
import java.util.logging.Logger;
import scaner.jflex.tarea.AnalizadorLexicoTarea;


/**
 *
 * @author JSIMP
 */
public class Ejercicio_lexico {

    public static void main(String[] args) throws IOException {
        System.out.println("Hello World!");
        try {
            Reader r = new FileReader("prueba.txt");
            AnalizadorLexicoTarea scanner = new AnalizadorLexicoTarea(r);
            scanner.yylex();
            
        } catch (FileNotFoundException ex) {
            Logger.getLogger(Ejercicio_lexico.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
