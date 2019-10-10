/*
 Autor Andres Polanco
 */
package condicinales;

import java.util.Scanner; 
public class If_else1 {
   
      public static void main(String[] args) {
        
       Scanner input= new Scanner(System.in);
       
       //Para validar contraseña
       
      String PassSystem = "12345";
      String PassIngresada = "";
     
       
       System.out.println("===Validar contraseña===");
       
       System.out.println("ingrese contraseña:  ");
       
      PassIngresada=input.nextLine();
      
      
      if(PassIngresada.equals(PassSystem)){
           System.out.println("bienvenido!!!!");
      }
      
      else{
          System.out.println("contraseña incorrecta");
      }
       
        
    }
    
}


