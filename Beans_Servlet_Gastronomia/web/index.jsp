<%-- 
    Document   : index
    Created on : 8/11/2019, 03:16:08 PM
    Author     : FORMACIÓN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <tr>
            <center>
                <h3> FORMULARIO DE REGISTRO DE PROVEEDORES</h3>
                <table>
                    <tr><td>NOMBRE</td> <td><input type="text" id="Nombre"/></td></tr>
                    <tr><td>Cedula</td> <td><input type="text" id="Cedula"/></td></tr>
                    <tr><td>Telefono</td> <td><input type="text" id="Telefono"/></td></tr>
                    <tr><td>Direccion</td> <td><input type="text" id="Direccion"/></td></tr>
                    <tr><td colspan="3" aling="center"> <button type="button" class="boton1" onclick="Registrar_Proveedores()">
                                REGISTAR</button></td>
                    <td colspan="3" aling="center"> <button type="button" class="boton1" onclick="Listar_Proveedores()">
                                LISTAR</button></td>   
                    </tr>               
                </table>
                <div id="respuesta_servidor"></div>
            </center>
        </form>
        <center>
        <hr>
        <table border="1">
            <caption>LISTA DE Proveedores</caption>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NOMBRE</th>
                    <th>Cedula</th>
                    <th>Telefono</th>
                    <th>Direccion</th>
                </tr>
            </thead>
            <tbody id="Listar_Proveedores"> <!-- cuerpo de la tabla-->
        </table>
    </center>
    </body>   
    <script src="js/Proveedores.js" type="text/javascript"></script>
       <script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
</html>
