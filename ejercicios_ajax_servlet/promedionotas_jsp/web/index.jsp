<%-- 
    Document   : index
    Created on : 25/10/2019, 08:27:49 AM
    Author     : Kate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>promedio 3 notas </title>
        <link href="css/Estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <form>
            <tr>
            <center>
                <h3>FORMULARIO PARA CALCULAR EL PROMEDIO DE UNA NOTA</h3>
                <div class="contenedor">
                    <table>
                        <tr><td>NOTA 1:</td><td><input type="text" id="nota1" /></td></tr>
                        <tr><td>NOTA 2:</td><td><input type="text" id="nota2" /></td></tr>
                        <tr><td>NOTA 3:</td><td><input type="text" id="nota3" /></td></tr>
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
        
        var nota1=$("#nota1").val();
        var nota2=$("#nota2").val();
        var nota3=$("#nota3").val();
        var Parametros ={'Operacion':'Calcular','N1':nota1,'N2':nota2,'N3':nota3};
        $.ajax({
            type:"POST",
            url: "servlet_promedio",
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
