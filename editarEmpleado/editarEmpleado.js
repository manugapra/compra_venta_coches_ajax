$('#btnEnviarEditarEmpleado').click(enviarEditarEmpleado);

$.get('php/getEmpleados.php',null,tratarGetEmpleados,'json');

function enviarEditarEmpleado()
{
	
}

function tratarGetEmpleados(oArrayEmple, sStatus, oXHR)
{
	$('#selectEmpleado').empty();

	jQuery.each(oArrayEmple, function(i, elemento) {
        //$('<option value="' + elemento.cif + '" >' + elemento.Nombre + '</option>').appendTo("#selectEmpleado");
        $("#selectEmpleado").append('<option value="' + elemento.dni + '" >' + elemento.nombre +' '+elemento.apellidos+ '</option>')
    });
}