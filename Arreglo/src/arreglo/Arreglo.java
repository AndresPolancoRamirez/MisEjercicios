// Autor: Andres Polanco
package arreglo;

import java.util.Scanner;

public class Arreglo {

   
    public static void main(String[] args) {
  
        Scanner input = new Scanner (System.in);
        int [] Notas = new int [5];
        
        for (int Estud = 0; Estud <= 4; Estud++){
            System.out.print("Ingrese la calificacion del estuduante N." + (Estud + 1)+ ":"); 
            Notas [Estud]= input.nextInt();
        }
        for (int Estud = 0; Estud <= 4; Estud++){
         System.out.println("estuduante N." + (Estud + 1)+ ":" + Notas[Estud]);   
        }
        
    }
    
}
