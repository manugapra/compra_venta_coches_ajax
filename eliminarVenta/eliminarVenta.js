$('#btnEnviarEliminarVenta').click(enviarEliminarProveedor);

$.get('php/getVentas.php',null,tratarGetVentas,'json');

function enviarEliminarProveedor()
{
	var vehiculo = $('#selectVenta').val();
	if(validar()){
	$.post('php/baja.php',{m: "ventas", v: vehiculo},
			function (data,status){
				if(status=="success"){
					$("#mensaje").empty();
					$("#mensaje").append(data);
					
					formEliminarVenta.reset();
					
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
	if($("#selectVenta").val()==0){
		validar=false;
	}
	return validar;
}

function tratarGetVentas(oArrayProv, sStatus, oXHR)
{
	$('#selectVenta').empty();
	$("#selectVenta").append('<option value="0" >Seleccione una venta...</option>');
	jQuery.each(oArrayProv, function(i, elemento) {
        
        $("#selectVenta").append('<option value="' + elemento.vehiculo + '" >'+elemento.vehiculo+'</option>')
    });
}

