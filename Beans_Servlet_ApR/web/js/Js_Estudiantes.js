function Registrar_Estudiantes(){
    
    var Nombre = $("#Nombre").val();
    var Nota1 = $("#Nota1").val();
    var Nota2 = $("#Nota2").val();
    var Nota3 = $("#Nota3").val();
 
    var parametros = { 'Operacion' : 'Registrar','N1':Nota1,'N2':Nota2,'N3':Nota3,'Nomb':Nombre};
  
  $.ajax({
      type: "POST",
      url: "Cont_Estudiantes",
      data: parametros,
      dataType: "text",
      success: function (resp){
          $("#Nombre").val('');
          $("#Nota1").val('');
          $("#Nota2").val('');
          $("#Nota3").val('');
          $('#respuesta_servidor').html(resp);
      }
  }).fail (function (jqXHR, textStatus, errorThrown){
      alert("Error : " + jqXHR.status);
  });  
}

function Listar_Estudiantes(){
    var parametros = { 'Operacion':'Listar'};
    $.ajax({
        type: "POST",
        url: "Cont_Estudiantes",
        data: parametros,
        dataType: "text",
        success: function (resp){
            $('#Listar_Estudiantes').html(resp);
        }
    }).fail (function (jqXHR, textStatus, errorThrown){
      alert("Error : " + jqXHR.status);
  });
}
function Eliminar_Estudiantes(id){
       var parametros = { 'Operacion':'Eliminar','id':id};
    alert(id);
    $.ajax({
     type: "POST",
     url: "Cont_Estudiantes",
     data: parametros,
     dataType: "text",
     success: function (resp){
       
     $('#respuesta_servidor').html(resp);
     Listar_Estudiantes();
     }
     }).fail (function (jqXHR, textStatus, errorThrown){
     alert("Error : " + jqXHR.status);
     });
}