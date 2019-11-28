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
        <link href="css/Estilos.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body background="gastro1.jpg">
        <form>
            <tr>
            <center>
                <font color="black" size="6"><h1>FORMULARIO DE REGISTRO DE PROVEEDORES</h1></font>
                <table>
                    <tr><td><font color="black" size="4">NOMBRE</font></td> <td><input type="text" id="Nombre"/></td></tr>
                    <tr><td><font color="black" size="4">CEDULA</font></td> <td><input type="text" id="Cedula"/></td></tr>
                    <tr><td><font color="black" size="4">TELOFONO</font></td> <td><input type="text" id="Telefono"/></td></tr>
                    <tr><td><font color="black" size="4">DIRECCION</font></td> <td><input type="text" id="Direccion"/></td></tr>
                    <tr><td colspan="3" aling="center"> <button type="button" class="boton1" onclick="Registrar_Proveedores()">
                                REGISTAR</button></td>
                    <td colspan="3" aling="center"> <button type="button" class="boton1" onclick="Listar_Proveedores()">
                                LISTAR</button></td>
                                <td colspan="3" aling="center"> <button type="button" class="boton1" onclick="Listar_Proveedores_Json()">
                                LISTAR_JSON</button></td> 
                    </tr>               
                </table>
                <div id="respuesta_servidor"></div>
            </center>
        </form>
        <center>
        <hr>
        <table border="1" bgcolor="white">
            <caption><font color="black" size="4"><h3>LISTA DE PROVEEDORES</h3></font></caption>
            <thead color="white">
                <tr>
                    <th>ID</th>
                    <th>NOMBRE</th>
                    <th>Cedula</th>
                    <th>Telefono</th>
                    <th>Direccion</th>
                    <th>Admin</th>
                </tr>
            </thead>
            <tbody id="Listar_Proveedores"> <!-- cuerpo de la tabla-->
        </table>
    </center>
    </body>   
    <script src="js/Proveedores.js" type="text/javascript"></script>
       <script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
</html>
