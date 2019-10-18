// Autor Andres Polanco 
package fechas;


public class ValidacionFechas {
    
    public Integer TryparseInt(String FechaTexto){
        if (FechaTexto != null && !FechaTexto.isEmpty())
        {
            if (FechaTexto.trim().matches("[0-9]")){
                return Integer.valueOf(FechaTexto.trim());
            }
        }
        return -1;
   }
}
