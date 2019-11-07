<%-- 
    Document   : index
    Created on : 25/10/2019, 03:39:40 PM
    Author     : Kate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
     <body>
        
   <form>
            <tr>
            <center>
                <h3>VELOCIDAD</h3>
                <div class="contenedor">
                    <table>
                        <tr><td>INGRESE LA VELOCIDAD:</td><td><input type="text" id="valor1" /></td></tr>
                       
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
       
        var Parametros={'valor1':valor1};
        $.ajax({
            type:"POST",
            url: "velocidad",
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