<%-- 
    Document   : index
    Created on : 11/10/2019, 11:07:13 AM
    Author     : FORMACIÓN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> CALCULADORA </title>
    </head>
    <body>
    <center><h1> Calculadora </h1></center>
    <form action="Cont_Calculadora" method="post">
        <center><table>
                <tr><td> Valor 1 </td><td><input type="number" name="valor1"/></td></tr>
                <tr><td> Valor 2 </td><td><input type="number" name="valor2"/></td></tr>
                <tr><td><input type="submit" name="operacion" value="sumar"/></td>
                <tr><td><input type="submit" name="operacion" value="resta"/></td>
                <tr><td><input type="submit" name="operacion" value="multiplicar"/></td>
                <tr><td><input type="submit" name="operacion" value="division"/></td>
                </table>
    </center>
    </form>
    </body>
</html>
