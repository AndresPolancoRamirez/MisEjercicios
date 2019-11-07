<%-- 
    Document   : index
    Created on : 25/10/2019, 02:23:27 PM
    Author     : Kate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ejercicio 3</title>
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <h1>TRES NUMERO ENTEROS</h1>
     <body>
        
   <form>
            <tr>
            <center>
                <h3>INGRESE TRES NUMEROS ENTEROS</h3>
                <div class="contenedor">
                    <table>
                        <tr><td>HORAS:</td><td><input type="number" id="valor1" min="0" max=""/></td></tr>
                        <tr><td>MINUTOS:</td><td><input type="number" id="valor2" min="0" max="60"/></td></tr>
                          <tr><td>SEGUNDOS:</td><td><input type="number" id="valor3" min="0" max="60" /></td></tr>
                       
                        <tr><td colspan="3" aling="center"><button type="button"class="boton1" onclick="calcular_promedio()">Calcular
                         </button></td>
                        </tr>
                        
                    </table>
                    
                </div>
                <div id="respuesta_servidor"></div>
            </center>
            
        </form>
    </body>
    <script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>

    <script>
    function calcular_promedio(){
        
        var valor1=$("#valor1").val();
        var valor2=$("#valor2").val();
        var valor3=$("#valor3").val();
       
        var Parametros={'valor1':valor1,'valor2':valor2,'valor3':valor3};
        $.ajax({
            type:"POST",
            url: "enteros",
            data:Parametros,
            datatype:"text",
            success:function(resp){
               $('#respuesta_servidor').html(resp); 
            }
        }).fail(function(jqXHR,textStatus,errorThrown){
            alert("ERROR...."+jqXHR.status);
        });
    }
    
    </script>
</html>