

$('#btnEnviarEliminarVeh').click(enviarEliminarVehiculo);

$.get('php/getVehiculos.php',null,tratarGetVehiculo,'json');

function enviarEliminarVehiculo()
{
	
	var vehiculo = $('#selectVehiculo').val();
	if(validar()){
	$.post('php/baja.php',{m: "veh", v: vehiculo},
			function (data,status){
				if(status=="success"){
					$("#mensaje").empty();
					$("#mensaje").append(data);
					
					formEliminarVeh.reset();
					
				} else {
					$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Ha ocurrido un error de conexión</strong></div>')


				}
			});			
		inicio();
	} else {
		$("#mensaje").empty();
		$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Debe seleccionar un vehiculo</strong></div>')

	}
		
}

function validar(){
	var validar=true;
	if($("#selectVehiculo").val()==0){
		validar=false;
	}

	return validar;
}

function tratarGetVehiculo(oArrayProv, sStatus, oXHR)
{
	$('#selectVehiculo').empty();
	$("#selectVehiculo").append('<option value="0" >Seleccione un vehiculo...</option>');
	jQuery.each(oArrayProv, function(i, elemento) {
        
        $("#selectVehiculo").append('<option value="' + elemento.matricula + '" >' +elemento.matricula+' - '+ elemento.marca +' '+elemento.modelo+'</option>')
    });
}

