$('#btnEnviarEditarVehiculo').click(btnEnviarEditarVehiculo);

$.get('php/getVehiculos.php',null,tratarGetVehiculos,'json');

function btnEnviarEditarVehiculo()
{
	
}

function tratarGetVehiculos(oArrayVeh, sStatus, oXHR)
{
	$('#selectVehiculo').empty();

	jQuery.each(oArrayVeh, function(i, elemento) {
        //$('<option value="' + elemento.cif + '" >' + elemento.Nombre + '</option>').appendTo("#selectVehiculo");
        $("#selectVehiculo").append('<option value="' + elemento.matricula + '" >' + elemento.matricula +'-'+elemento.marca+' '+elemento.modelo+ '</option>')
    });
}