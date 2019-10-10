/*
Autor Andres Polanco
 */
package condicinales;

import java.util.Scanner;

public class If_anidado1 {

    
    public static void main(String[] args) {
        Scanner input= new Scanner(System.in);
        
        String UserDB = "Gemelo";
        String PaswordDB = "1234";
        String UserIng = "";
        String PaswordIng = "";
        
        System.out.println("====Validar Contraseña====");
        System.out.println("Ingrese su usuario por favor");
        UserIng=input.nextLine();
        
        if (UserIng.equals(UserDB)){
            System.out.println("Ingrese su contraseña por favor");
            PaswordIng= input.nextLine();
            
            if (PaswordIng.equals(PaswordDB)){
                System.out.println("====BIENVENIDO====");
            }
            else {
                System.out.println("====Contraseña incorrecta====");
            }
        }
        else {
            System.out.println("====Usuario incorrecto====");
        }
    }
    
}
