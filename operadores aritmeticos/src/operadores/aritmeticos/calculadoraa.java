/*
autor Andres Polanco Ramirez
 */

package operadores.aritmeticos;

import java.util.Scanner;

public class calculadoraa {
    
    public static void main(String [] args){
        
        Scanner input= new Scanner(System.in);
        
        //Declaramos e inicializamos variables
        
         System.out.println("===Calculadora===");
         
         int num1=0;
         int num2=0;
         double Resultado=0;
         int tipoOperacion=0;
          
         //mostramos las opciones al usuario para que escoja una
         
         System.out.println("SELECCIONE EL TIPO DE OPERACION: ");
         System.out.println("1. suma");
         System.out.println("2. resta");
         System.out.println("3. multiplicacion");                 
         System.out.println("4. division"); 
         tipoOperacion= input.nextInt(); 
         
        if(tipoOperacion > 0 && tipoOperacion < 5){
            if(tipoOperacion==1){
              System.out.println("usted ha elegido una suma");

              System.out.println("ingrese el primer numero: ");
              num1=input.nextInt();

              System.out.println("ingrese el segundo numero: ");
             num2=input.nextInt(); 

             Resultado = num1+num2;

              System.out.println("el resultado de la suma es:  " + Resultado);         
            }        
            else if(tipoOperacion==2){
               System.out.println("usted ha elegido una resta: ");

               System.out.println("ingrese el primer numero: ");

                       num1=input.nextInt();

              System.out.println("ingrese el segundo numero: ");

                     num2=input.nextInt();

                     Resultado = num1-num2;

              System.out.println("el resultado de la resta es:  " + Resultado);       
            }
            else if(tipoOperacion==3){
                System.out.println("usted ha elegido una multiplicacion: ");

                System.out.println("ingrese el primer numero: ");

                        num1=input.nextInt();

               System.out.println("ingrese el segundo numero: ");

                      num2=input.nextInt();

                      Resultado = num1*num2;

               System.out.println("el resultado de la multiplicacion es:  " + Resultado);       
            }
            else if(tipoOperacion==4){
                System.out.println("usted ha elegido una division: ");

                System.out.println("ingrese el primer numero: ");

                        num1=input.nextInt();

               System.out.println("ingrese el segundo numero: ");

                      num2=input.nextInt();

                      Resultado = num1/num2;

               System.out.println("el resultado de la division es:  " + Resultado); 

            }
            else{
                System.out.println("Ingrse un dato valido"); 
            }
        }
    }
}
