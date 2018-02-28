$('#btnEnviarEliminarCli').click(enviarEliminarCliente);

$.get('php/getClientes.php',null,tratarGetClientes,'json');

function enviarEliminarCliente()
{
	var cliente = $('#selectCliente').val();
	if(validar()){
	$.post('php/baja.php',{m: "cli", c: cliente},
			function (data,status){
				if(status=="success"){
					$("#mensaje").empty();
					$("#mensaje").append(data);
					
					formEliminarCli.reset();
					
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
	if($("#selectClientes").val()==0){
		validar=false;
	}
	return validar;
}

function tratarGetClientes(oArrayProv, sStatus, oXHR)
{
	$('#selectCliente').empty();
	$("#selectCliente").append('<option value="0" >Seleccione un cliente...</option>');
	jQuery.each(oArrayProv, function(i, elemento) {
        
        $("#selectCliente").append('<option value="' + elemento.dni + '" >' + elemento.nombre + ' '+elemento.apellidos+'</option>')
    });
}

