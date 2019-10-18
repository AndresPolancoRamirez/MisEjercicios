// Autor: Andres Polanco
package fechas;

import java.util.Scanner;

public class Fechas {
   public static void main(String[] argd){
   
    Scanner input = new Scanner (System.in);
    ValidacionFechas FechaInt = new ValidacionFechas();
   
    
    String DiaTexto = ""; 
    String MesTexto = "";
    String AnyoTexto = "";
    int Dia = 0;
    int Mes = 0;
    int Anyo = 0;
    
    System.out.println("Validacion de Fechas");
    System.out.println("Por favor ingrese en numero el dia de nacimiento");
    DiaTexto = input.next();
    System.out.println("Por favor ingrese en numero el mes de nacimiento");
    MesTexto = input.next();
    System.out.println("Por favor ingrese en numero el año de nacimiento"); 
    AnyoTexto = input.next();
   do{
   Dia = FechaInt.TryparseInt(DiaTexto);
   if (Dia == -1){
    System.out.println("El dia ingresado es incorrecto. Por favor intentelo de nuevo"); 
   }
   }
   while (Dia == -1);{
   
   }
   }       
}

