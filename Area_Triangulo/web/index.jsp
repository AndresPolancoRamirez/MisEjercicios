<%-- 
    Document   : index
    Created on : 11/10/2019, 01:31:39 PM
    Author     : FORMACIÓN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TRIANGULO</title>
    </head>
    <body>
    <center>  <h1>Ingresar datos de triangulo</h1> </center>
    <form action = "Cont_triangulo" method = "post">
    <center>
        <table>
            <tr><td> Base </td><td><input type="number" name="valor1"/></td></tr>
            <tr><td> Altura </td><td><input type="number" name="valor2"/></td></tr>
            <tr><td><input type="submit" name="operacion" value="Calcular"/></td>
        </table>
        </center>
    </form>
    </body>
</html>
