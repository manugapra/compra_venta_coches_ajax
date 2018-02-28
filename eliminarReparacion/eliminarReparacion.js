$('#btnEnviarEliminarReparacion').click(enviarEliminarReparacion);

$.get('php/getReparaciones.php',null,tratarGetReparaciones,'json');

function enviarEliminarReparacion()
{
	var vehiculo = $('#selectReparacion').val();
	if(validar()){
	$.post('php/baja.php',{m: "reparacion", v: vehiculo},
			function (data,status){
				if(status=="success"){
					$("#mensaje").empty();
					$("#mensaje").append(data);
					
					formEliminarReparacion.reset();
					
				} else {
					$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Ha ocurrido un error de conexión</strong></div>')


				}
			});			
		inicio();
	} else {
		$("#mensaje").empty();
		$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Debe seleccionar un cliente</strong></div>')

	}
		
}

function validar(){
	var validar=true;
	if($("#selectReparacion").val()==0){
		validar=false;
	}
	return validar;
}

function tratarGetReparaciones(oArrayProv, sStatus, oXHR)
{
	$('#selectReparacion').empty();
	$("#selectReparacion").append('<option value="0" >Seleccione una reparación...</option>');
	jQuery.each(oArrayProv, function(i, elemento) {
        
        $("#selectReparacion").append('<option value="' + elemento.vehiculo + '" >'+elemento.vehiculo+'</option>')
    });
}

