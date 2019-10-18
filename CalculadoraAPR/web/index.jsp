<%-- 
    Document   : index
    Created on : 18/10/2019, 10:30:38 AM
    Author     : FORMACIÓN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/Estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
    <center>
        <h1 id="titulo">Calculadora</h1>
        <form>
            <tr>
            <div class="contenedor">
                <table >
                    <td colspan="4"><input type="text" id="pantalla"/></td></tr>  
                    <tr><td> <button type="button" class="boton1" onclick="asignar_uno()">1</button></td>
                    <td> <button type="button" class="boton1" onclick="asignar_dos()">2</button></td>
                    <td> <button type="button" class="boton1" onclick="asignar_tres()">3</button></td>
                    <td> <button type="button" class="boton1" onclick="asignar_sumar()">+</button></td>
                    </tr>
                    <tr><td> <button type="button" class="boton1" onclick="asignar_cuatro()">4</button></td>
                    <td> <button type="button" class="boton1" onclick="asignar_cinco()">5</button></td>
                    <td> <button type="button" class="boton1" onclick="asignar_seis()">6</button></td>
                    <td> <button type="button" class="boton1" onclick="asignar_resta()">-</button></td>
                    </tr>
                    <tr><td> <button type="button" class="boton1" onclick="asignar_siete()">7</button></td>
                    <td> <button type="button" class="boton1" onclick="asignar_ocho()">8</button></td>
                    <td> <button type="button" class="boton1" onclick="asignar_nueve()">9</button></td>
                    <td> <button type="button" class="boton1" onclick="asignar_multiplicacion()">*</button></td>
                    </tr>
                    <tr><td> <button type="button" class="boton1" id="cero">0</button></td>
                        <td > <button type="button" class="boton1" id="reset" onclick="asignar_CE()">CE</button></td>
                        <td><button type="button" class="boton1" id="igual" onclick="asignar_igual()">=</button></td>
                        <td> <button type="button" class="boton1" onclick="asignar_division()">/</button></td>
                    </tr>                    
                </table>   
            </div>    
        </form>
    </center>
    </body>
 
    <script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
     <script>
    var dato="";
    var numero1= " ";
    var numero2= "";
    var operacion="";
   
    function asignar_uno(){
        
    dato=$('#pantalla').val();
    $('#pantalla').val(dato+'1');
 }
  function asignar_dos(){
        
    dato=$('#pantalla').val();
    $('#pantalla').val(dato+'2');
 }
  function asignar_tres(){
        
    dato=$('#pantalla').val();
    $('#pantalla').val(dato+'3');
 }
 function asignar_cuatro(){
        
    dato=$('#pantalla').val();
    $('#pantalla').val(dato+'4');
 }
 function asignar_cinco(){
        
    dato=$('#pantalla').val();
    $('#pantalla').val(dato+'5');
 }
 function asignar_seis(){
        
    dato=$('#pantalla').val();
    $('#pantalla').val(dato+'6');
 }
 function asignar_siete(){
        
    dato=$('#pantalla').val();
    $('#pantalla').val(dato+'7');
 }
 function asignar_ocho(){
        
    dato=$('#pantalla').val();
    $('#pantalla').val(dato+'8');
 }
 function asignar_nueve(){
        
    dato=$('#pantalla').val();
    $('#pantalla').val(dato+'9');
 }
 function asignar_cero(){
        
    dato=$('#pantalla').val();
    $('#pantalla').val(dato+'0');
 }
  function asignar_sumar(){
        
    numero1=$('#pantalla').val();
    dato="";
    $('#pantalla').val(dato='');
    operacion = "suma";
 }
  function asignar_resta(){
      
    numero1=$('#pantalla').val();
    dato="";
    $('#pantalla').val(dato=''); 
    operacion="resta";
 }
   function asignar_multiplicacion(){
      
    numero1=$('#pantalla').val();
    dato="";
    $('#pantalla').val(dato=''); 
    operacion="multiplicacion";
 }
   function asignar_division(){
      
    numero1=$('#pantalla').val();
    dato="";
    $('#pantalla').val(dato=''); 
    operacion="division";
 }
  function asignar_igual(){
        
    numero2=$('#pantalla').val();
    if (operacion == "suma"){
        $('#pantalla').val(parseFloat(numero1)+parseFloat(numero2));
    }
    if (operacion == "resta"){
        $('#pantalla').val(parseFloat(numero1)-parseFloat(numero2));
    }
    if (operacion == "multiplicacion"){
        $('#pantalla').val(parseFloat(numero1)*parseFloat(numero2));
    }
    if (operacion == "division"){
        $('#pantalla').val(parseFloat(numero1)/parseFloat(numero2));
    }

 }
 
  function asignar_CE(){
      dato1 = 0;
      dato2 = 0;
      $('#pantalla').val(''); 
  }
 
    
    </script>
</html>
