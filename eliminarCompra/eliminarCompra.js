$('#btnEnviarEliminarCompra').click(enviarEliminarCompra);

$.get('php/getCompras.php',null,tratarGetCompras,'json');

function enviarEliminarCompra()
{
	var vehiculo = $('#selectCompra').val();
	if(validar()){
	$.post('php/baja.php',{m: "compras", v: vehiculo},
			function (data,status){
				if(status=="success"){
					$("#mensaje").empty();
					$("#mensaje").append(data);
					
					formEliminarCompra.reset();
					
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
	if($("#selectCompra").val()==0){
		validar=false;
	}
	return validar;
}

function tratarGetCompras(oArrayProv, sStatus, oXHR)
{
	$('#selectCompra').empty();
	$("#selectCompra").append('<option value="0" >Seleccione una compra...</option>');
	jQuery.each(oArrayProv, function(i, elemento) {
        
        $("#selectCompra").append('<option value="' + elemento.vehiculo + '" >'+elemento.vehiculo+'</option>')
    });
}

