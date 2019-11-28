<%-- 
    Document   : index
    Created on : 26/11/2019, 08:41:03 AM
    Author     : FORMACIÓN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Estilo/Inicio.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
          <header id="titulo">
		<img id="log" src="logo.jpg">
                <div class="contenedor">
                <table id="tab1">
			<tr id="tit1">
				<td><h1>GASTRONOMÍA SENA</h1></td>
			</tr>
			<tr id="tit2">
				<td><h2>Centro de Gestión y desarrolo Sostenible Surcolombiano</h2></td>
			</tr>	
		</table>
                </div>
                
	</header>

	<aside id="latiz">
	 	
	</aside>

	<section id="centro">
		<table id="tab2">
			<tr>
				<td colspan="2">
				<img id="log1" src="logo1.jpg">
				</td>
			</tr>
			<tr>
				<td id="este" colspan="2">
					<label class="sombra"><h2>Iniciar sesión</h2></label>
				</td>
			</tr>
			<tr>
				<td>
				<label id="login">USUARIO</label>
				</td>
				<td>
				<input type="text" name="txt">
				</td>
			</tr>
			<tr>
				<td>
				<label id="pass">CONTRASEÑA</label>
				</td>
				<td>
				<input type="password" name="pass">
				</td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td>
					<a id="hiper" href="Restaurar.html">Olvidaste tu contraseña</a></a>
				</td>
				<td id="cent">
                                    <button type="button"class="button1"onclick="Registrar_Usuario">Ingresar</button>
				</td>
			</tr>
		</table>
	</section>
        <div id="respuesta_servidor"></div>
    </body>
    <script src="Js/jquery-3.4.1.min.js" type="text/javascript"></script>
    <script>
        function Registrr_Usuario(){
            var login= $
            ("#login").val();
            var pass= $("#pass").val();
            var parametros ={'operacion':'Registar_Usuario','login':login,'pass':pass};
            $.ajax({
                type:"POST",
                url:"cont_usuario",
                data:parametros,
                dataType:"text",
                success: function (respuesta_servidor) {
                        var dato= respuesta_servidor;
                        if(parseInt(dato.length)>2){
                            $(location).attr('href',"Pagina_Principal.jsp");
                        }
                        else{
                            alert("No autorizado");
                        }
                    }
            
                    }).fail (function (jqXHR, textStatus, errorThrown){
      alert("Error : " + jqXHR.status);
      });
        }
    </script>
</html>
