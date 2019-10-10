/*
Autor Andres Polanco Ramirez
 */
package iterativas;

import java.util.Scanner;

public class Do_Whilee {

 public static void main(String[] args) {
     
 
 Scanner entrada = new Scanner(System.in);
 
   String ClaveUser="";
   String ClaveDB="1234";
   int numerointentos=1;
 
 System.out.println("login");
 
 do{
     System.out.println("Ingrese la contraseña: ");
     ClaveUser= entrada.next();
     System.out.println("intentos: "+numerointentos);
     numerointentos++;
     
 }while(!ClaveUser.equals(ClaveDB) && numerointentos < 4); 
 
 if(numerointentos == 4 && !ClaveUser.equals(ClaveDB)){
 
 System.out.println("Acceso no permitido");
 
 } 
 else{
     System.out.println("Bienvenido");
 }
 
 }
  }
