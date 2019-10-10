/*
Autor: Andres Polanco Ramirez
 */
package condicinales;

import java.util.Scanner;

public class swicth1 {
   public static void main(String[] args) { 
       
    Scanner entrada = new Scanner(System.in);
    
     
        
        int NumeroEstudiantes = 0;
        int NotaEstudiantes = 0;
        int EstudiatesEvaluados = 1;
        int ContadorExelente = 0;
        int ContadorBueno = 0;
        int ContadorRegular = 0;
        int ContadorMalo = 0;
        int ContadorMalIngresados = 0;
        int ContadorEstudiantes = 1;
        System.out.println("===Registro de estudiantes===");
        System.out.print("Ingrese el numero de estudiantes: ");
        NumeroEstudiantes = entrada.nextInt();
        
        while(EstudiatesEvaluados <= NumeroEstudiantes){
            System.out.println("Ingrese la nota del estudiante numero "+ ContadorEstudiantes);
            NotaEstudiantes = entrada.nextInt();
            EstudiatesEvaluados++;
            ContadorEstudiantes++;
            
            switch(NotaEstudiantes){
                case 10:
                case 9:
                    ContadorExelente++;
                    break;
                case 8:
                case 7:    
                case 6: 
                    ContadorBueno++;
                    break;
                case 5:
                case 4:
                    ContadorRegular++;
                    break;
                case 3:
                case 2:    
                case 1: 
                    ContadorMalo++;
                    break;
                default:
                    ContadorMalIngresados++;
                    break;        
            }
        }
        System.out.println("El numero de estudiantes con el promedio Exelentes son: "+ ContadorExelente);
        System.out.println("El numero de estudiantes con el promedio bueno son: "+ ContadorBueno);
        System.out.println("El numero de estudiantes con el promedio regular son: "+ ContadorRegular);
        System.out.println("El numero de estudiantes con el promedio malo son: "+ ContadorMalo);
        System.out.println("El numero de estudiantes con el promedio mal ingresados son: "+ ContadorMalIngresados);      
    }
    
}