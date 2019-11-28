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
function Listar_Proveedores_Json(){
    var parametros = { 'Operacion':'Listar_Json'};
    $.ajax({
        type: "POST",
        url: "Cont_Proveedores",
        data: parametros,
        dataType: "json",
        success: function (resp){
        var tbody="";
        var i=0;
        $.each(resp,function (index, val){
              tbody +="<tr><td>"+i+"</td>";
              tbody +="<td>"+val.Nombre+"</td>";
              tbody +="<td>"+val.Cedula+"</td>";
              tbody +="<td>"+val.Telefono+"</td>";
              tbody +="<td>"+val.Direccion+"</td>";
              tbody +="<td><a href ='javascript:Eliminar_Provee("+i+" );'>Eliminar</a></td></tr>";
              
              i++;
              });
                  alert("Respuesta de Backend con Json");
                  $('#Listar_Proveedores').html(tbody);


        }
    }).fail (function (jqXHR, textStatus, errorThrown){
      alert("Error : " + jqXHR.status);
  });
}
function Eliminar_Prove(id){
       var parametros = { 'Operacion':'Eliminar','id':id};
    alert(id);
    $.ajax({
     type: "POST",
     url: "Cont_Proveedores",
     data: parametros,
     dataType: "text",
     success: function (resp){
       
     $('#respuesta_servidor').html(resp);
        Listar_Proveedores();
     }
     }).fail (function (jqXHR, textStatus, errorThrown){
     alert("Error : " + jqXHR.status);
     });
}
