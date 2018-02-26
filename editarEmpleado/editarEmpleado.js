$('#btnEnviarEditarEmpleado').click(enviarEditarEmpleado);

$.get('php/getEmpleados.php',null,tratarGetEmpleados,'json');

function enviarEditarEmpleado()
{
	var empleado = $('#selectEmpleado').val();
	$.get('php/getDatos.php',{d:'empleado', empleado: empleado},tratarGetDatos,'json');
	$('#formEditarEmp2').show('blind');
}

function tratarGetEmpleados(oArrayEmple, sStatus, oXHR)
{
	$('#selectEmpleado').empty();

	jQuery.each(oArrayEmple, function(i, elemento) {
        //$('<option value="' + elemento.cif + '" >' + elemento.Nombre + '</option>').appendTo("#selectEmpleado");
        $("#selectEmpleado").append('<option value="' + elemento.dni + '" >' + elemento.nombre +' '+elemento.apellidos+ '</option>')
    });
}

function tratarGetDatos(oArrayDatos, sStatus, oXHR)
{
	for (var i = 0; i<oArrayDatos.length; i++) 
	{
		$('#dniEmpleado').attr('value',oArrayDatos[i].dni);
		$('#nombreEmpleado').attr('value',oArrayDatos[i].nombre);
		$('#apellidosEmpleado').attr('value',oArrayDatos[i].apellidos);
		$('#salarioEmpleado').attr('value',oArrayDatos[i].salario);
	}
}

$('#btnEnviarEditarEmp2').click(editarEmpleado);

function editarEmpleado()
{
	$.post('php/editar.php',{
		m:'empleado',
		dni: $('#dniEmpleado').val(),
		nombre: $('#nombreEmpleado').val(),
		apellidos: $('#apellidosEmpleado').val(),
		salario: $('#salarioEmpleado').val()
	}, function(data,status)
	{
		if(status=="success"){
					
					$("#mensaje").append(data);
				} else {
					$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Ha ocurrido un error de conexión</strong></div>')


				}
	}, 'json');
	$('#formEditarEmp').hide('blind');
	$('#formEditarEmp2').hide('blind');
}