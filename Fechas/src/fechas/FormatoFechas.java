// Autor; Andres Polanco
package fechas;

import java.util.Calendar;

public class FormatoFechas {

  
    public static void main(String[] args) {
   
       Calendar FormatoFecha = Calendar.getInstance();
       //jue oct 17 11:40:46 COT 2019
       System.out.printf("%tc\n",FormatoFecha);
       //2019-10-17
       System.out.printf("%tF\n",FormatoFecha);
       //10/17/19
       System.out.printf("%tD\n",FormatoFecha);
       //11:40:46 AM   
       System.out.printf("%tr\n",FormatoFecha);
       //11:40:46
       System.out.printf("%tT\n",FormatoFecha);
       //jueves, octubre,17, 2019
       System.out.printf("%1$tA, %1$tB,%1$td, %1$tY\n",FormatoFecha);   
    }
    
}
