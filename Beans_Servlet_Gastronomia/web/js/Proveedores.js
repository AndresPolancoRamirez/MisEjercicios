function Registrar_Proveedores(){

 var Nombre = $("#Nombre").val();
    var Cedula = $("#Cedula").val();
    var Telefono = $("#Telefono").val();
    var Direccion = $("#Direccion").val();
     var parametros = { 'Operacion' : 'Registrar','Ced':Cedula,'Tel':Telefono,'Direc':Direccion,'Nomb':Nombre};
  $.ajax({
      type: "POST",
      url: "Cont_Proveedores",
      data: parametros,
      dataType: "text",
      success: function (resp){
          $("#Nombre").val('');
          $("#Cedula").val('');
          $("#Telefono").val('');
          $("#Direccion").val('');
          $('#respuesta_servidor').html(resp);
      }
  }).fail (function (jqXHR, textStatus, errorThrown){
      alert("Error : " + jqXHR.status);
  });  
}
function Listar_Proveedores(){
    var parametros = { 'Operacion':'Listar'};
    $.ajax({
        type: "POST",
        url: "Cont_Proveedores",
        data: parametros,
        dataType: "text",
        success: function (resp){
            $('#Listar_Proveedores').html(resp);
        }
    }).fail (function (jqXHR, textStatus, errorThrown){
      alert("Error : " + jqXHR.status);
  });
}
