<%-- 
    Document   : index
    Created on : 25/10/2019, 11:56:54 AM
    Author     : Kate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ejercici0 1 </title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
 
    </head>
    <body>
        
   <form>
            <tr>
            <center>
                <h3>VALOR DEL RADIO DE UNA CIRCUNFERENCIA</h3>
                <div class="contenedor">
                    <table>
                        <tr><td>valor del radio</td><td><input type="text" id="valor1" /></td></tr>
                       
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
       
        var Parametros ={'Operacion':'Calcular','valor1':valor1};
        $.ajax({
            type:"POST",
            url: "valor_radio",
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
