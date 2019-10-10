/*
Autor Andres Polanco Ramirez
 */
package operadores.aritmeticos;

import java.util.Scanner;


public class OperadoresAritmeticos1 {

  
    public static void main(String[] args) {
          //Suma
    
    Scanner input = new  Scanner (System.in);
    
    System.out.println("===SUMA===");
   
    int Num1=0;
    int Num2=0;
    int Resultado=0;
    
    System.out.print("por favor ingrese el primer numero entero: ");
    
    Num1 = input.nextInt();
    
    System.out.print("por favor ingrese el segundo numero entero: ");
    
    Num2 = input.nextInt();
    
    Resultado = Num1+Num2;
    
    System.out.println("Resultado:  " + Resultado);
    
    //Resta de dos numeros enteros
    
    
     System.out.println("===Resta==="); 
     
     int numero1=0;
     int numero2=0;
     int resultado=0;
     
     System.out.print("por favor ingrese el primer numero entero: ");
     
     numero1= input.nextInt();
     
     System.out.print("por favor ingrese el segundo numero entero: ");
     
     numero2 = input.nextInt();
     
     resultado = numero1-numero2;
     
     System.out.println("resultado:  " + resultado);
     
     // multiplicacion de dos numeros enteros
     
     System.out.println("===Multiplicacion===");
     
     int nu1=0;
     int nu2=0;
     int resul=0;
     
     System.out.print("por favor ingrese el primer numero entero: ");
     
     nu1= input.nextInt();
     
     System.out.print("por favor ingrese el segundo numero entero: ");
     
     nu2= input.nextInt();
     
     resul= nu1*nu2;
     
     System.out.println("El resultado de la multiplicacion es:  " + resul);
     
     // Division de dos numeros enteros
     
     System.out.println("===Division===");
     
     int n1=0;
     int n2=0;
     int r=0;
     
     System.out.print("por favor ingrese el primer numero entero: ");
     
     n1=input.nextInt();
     
     System.out.print("por favor ingrese el segundo numero entero: ");
     
     n2=input.nextInt();
     
     r=n1/n2;
     
     System.out.println("El resultado de la division es: "+ r);
     
    }    
    
}
