$('#btnEnviarEliminarEmp').click(enviarEliminarEmpleado);

$.get('php/getEmpleados.php',null,tratarGetEmpleados,'json');

function enviarEliminarEmpleado()
{
	
	var empleado = $('#selectEmpleado').val();
	if(validar()){
	$.post('php/baja.php',{m: "emp", e: empleado},
			function (data,status){
				if(status=="success"){
					$("#mensaje").empty();
					$("#mensaje").append(data);
					
				
					
				} else {
					$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Ha ocurrido un error de conexión</strong></div>')


				}
			});			
		inicio();
	} else {
		$("#mensaje").empty();
		$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Debe seleccionar un empleado</strong></div>')

	}
		
}

function validar(){
	var validar=true;
	if($("#selectEmpleado").val()==0){
		validar=false;
	}
	return validar;
}

function tratarGetEmpleados(oArrayProv, sStatus, oXHR)
{
	$('#selectEmpleado').empty();
	$("#selectEmpleado").append('<option value="0" >Seleccione un empleado...</option>');
	jQuery.each(oArrayProv, function(i, elemento) {
        
        $("#selectEmpleado").append('<option value="' + elemento.dni + '" >' + elemento.nombre + ' '+elemento.apellidos+'</option>')
    });
}

