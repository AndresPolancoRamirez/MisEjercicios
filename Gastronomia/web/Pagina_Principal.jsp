<%-- 
    Document   : Pagina_Principal
    Created on : 26/11/2019, 08:49:54 AM
    Author     : FORMACIÓN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina Principal</title>
        <link href="Estilo/PaginaPrincipal.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       <header id="titulo">
		<img id="log2" src="logo2.jpg">
		<img id="logus" src="usuario.png">
		<table id="tab1">
			<tr id="tit1">
				<td><h1>GASTRONOMÍA SENA</h1></td>
			</tr>
			<tr id="tit2">
				<td><h2>Centro de Gestión y desarrolo Sostenible Surcolombiano</h2></td>
			</tr>	
		</table>
		<table id="tab3">
			<tr id="tit3">
				<td><h1>Instructor</h1></td>
			</tr>
			<tr id="tit4">
				<td><h2>Diego Vargas</h2></td>
			</tr>	
		</table>
	</header>
	

	<aside id="latiz">
		<table id="tabiz">
			<tr>
				<td><a href="Pagina_Principal.html">PAGINA PRINCIPAL</a></td>
			</tr>
			<tr>
				<td><a href="">INSUMOS</a></td>
			</tr>
			<tr>
				<td><a href="">RECETARIOS</a></td>
			</tr>
			<tr>
				<td><a href="">INVENTARIO</a></td>
			</tr>
			<tr>
				<td><a href=""/>CONFIGURACION</a></td>
			</tr>
			<tr>
				<td><a href="Iniciosesion.html">SALIR</a></td>
			</tr>
	 	</table>
	</aside>

	<section id="centro">
		<p>La gastronomía ​ es el estudio de la relación del ser humano con su alimentación y su medio ambiente o entorno. El gastrónomo es el profesional que se encarga de este arte.​​ A menudo se cree erróneamente que el término gastronomía únicamente tiene relación con el arte culinario y la cubertería en torno a una mesa. </p>
	</section>
        <div id="Inventario">
            <section id="centro">
		<CENTER><h1>ACTUALIZACION DE COMEDOR</h1></CENTER>
		<h1>Gastronomia Sena</h1>
		<img id="logs" src="../img/comedor.jpg">
		<table border="1" id="tabla1">
			<tr>
				<td>ID COMEDOR</td>
				<td> <input type="text" name="ID CUCHARAS"></td>
			</tr>
			<tr>
				<td>NOMBRE</td>
				<td> <input type="text" name="NOMBRE CUCHARAS"></td>
			</tr>
			<tr>
				<td>MODELO</td>
				<td> <input type="number" name="MODELO CUCHARAS"></td>
			</tr>
			<tr>
				<td>CANTIDAD</td>
				<td> <input type="number" name="MODELO CUCHARAS"></td>
			</tr>
			</table>
			<center><input type="submit" value="Guardar" id="Gd"class="boton"></center>
	</section>
        </div>
        
    </body>
    
    
</html>
