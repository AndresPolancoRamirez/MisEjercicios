/*
Autor: Andres Polanco Ramirez
 */
package iterativas;

import java.util.Scanner;

public class Whilee {

    public static void main(String[] args) {
        
       Scanner entrada= new Scanner(System.in);
       
       System.out.println("====Registro de participante====");
       System.out.println("Ingrese la cantidad de partcipantes: ");
       int cupomax = entrada.nextInt();
   
       int NumeroParticipantes = 1;
       String NumDocumento = "";

       while(NumeroParticipantes <= cupomax){
            System.out.println("participante N. " + NumeroParticipantes);
            System.out.println("Por favor ingrese su numero de identificacion: ");
            NumDocumento = entrada.next();
            NumeroParticipantes++;
        }
        System.out.println("se ha completado el cupo maximo"); 
    }
}
 