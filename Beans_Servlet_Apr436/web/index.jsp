<%-- 
    Document   : index
    Created on : 15/11/2019, 09:46:55 AM
    Author     : FORMACIÓN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Estilos.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body background="boxer2.jpg">
        <form>
            <tr>
            <center>
             <font color="#FF5D00" size="3"><h1>FORMULARIO DE REGISTRO DE ESTUDIANTES</h1></font>    
                <table>
                    <tr><td><font color="#FF5D00" size="4">NOMBRE</font></td> <td><input type="text" id="Nombre"/></td></tr>
                    <tr><td><font color="#FF5D00" size="4">NOTA 1</font></td> <td><input type="text" id="Nota1"/></td></tr>
                    <tr><td><font color="#FF5D00" size="4">NOTA 2</font></td> <td><input type="text" id="Nota2"/></td></tr>
                    <tr><td><font color="#FF5D00" size="4">NOTA 3</font></td> <td><input type="text" id="Nota3"/></td></tr>
                    <tr><td colspan="3" aling="center"> <button type="button" class="boton1" onclick="Registrar_Estudiantes()">
                                REGISTAR</button></td>
                    <td colspan="3" aling="center"> <button type="button" class="boton1" onclick="Listar_Estudiantes()">
                                LISTAR</button></td>  
                    <td colspan="3" aling="center"> <button type="button" class="boton1" onclick="Listar_Estudiantes_Json()">
                                LISTAR_JSON</button></td> 
                    </tr>               
                </table>
                <div id="respuesta_servidor"></div>
            </center>
        </form>
    <center>
        <hr>
        <table border="1" bgcolor="#f06819">
            <caption><font color="#FF5D00" size="6">LISTA DE ESTUDIANTES</font></caption>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NOMBRE</th>
                    <th>Nota1</th>
                    <th>Nota2</th>
                    <th>Nota3</th>
                    <th>Definitiva</th>
                    <th>Admin</th>

                    
                </tr>
            </thead>
            <tbody id="Listar_Estudiantes"> <!-- cuerpo de la tabla-->
        </table>
    </center>
    </body>
    <script src="js/Js_Estudiantes.js" type="text/javascript"></script>
    <script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
</html>
