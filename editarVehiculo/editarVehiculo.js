$('#btnEnviarEditarVehiculo').click(btnEnviarEditarVehiculo);

$.get('php/getVehiculos.php',null,tratarGetVehiculos,'json');

function btnEnviarEditarVehiculo()
{
	var vehiculo = $('#selectVehiculo').val();
	$.get('php/getDatos.php',{d: 'vehiculo', vehiculo: vehiculo},tratarGetDatos,'json');
	$('#formEditarVeh2').show('blind');
}

function tratarGetVehiculos(oArrayVeh, sStatus, oXHR)
{
	$('#selectVehiculo').empty();

	jQuery.each(oArrayVeh, function(i, elemento) {
        //$('<option value="' + elemento.cif + '" >' + elemento.Nombre + '</option>').appendTo("#selectVehiculo");
        $("#selectVehiculo").append('<option value="' + elemento.matricula + '" >' + elemento.matricula +'-'+elemento.marca+' '+elemento.modelo+ '</option>')
    });
}

function tratarGetDatos(oArrayDatos, sStatus, oXHR)
{
	for (var i = 0; i<oArrayDatos.length; i++) 
	{
		$('#matriculaVehiculo').attr('value',oArrayDatos[i].matricula);
		$('#marcaVehiculo').attr('value',oArrayDatos[i].marca);
		$('#modeloVehiculo').attr('value',oArrayDatos[i].modelo);
		$('#tasacionVehiculo').attr('value',oArrayDatos[i].tasacion);
		$('#combustibleVehiculo').attr('value',oArrayDatos[i].combustible);
		$('#plazasVehiculo').attr('value',oArrayDatos[i].plazas);
	}
}

$('#btnEnviarEditarVeh2').click(editarVehiculo);

function editarVehiculo()
{
	$.ajax({
		url: 'php/editar.php',
		data: {
			m:'vehiculo',
			matricula: $('#matriculaVehiculo').val(),
			tasacion: $('#tasacionVehiculo').val()
		},
		method: 'POST',
		dataType: 'JSON',
		success: function(respuesta)
		{
			if(respuesta==true)
			{	
				$("#mensaje").append('<div class="alert alert-success"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Se ha modificado correctamente.</strong></div>');
			}
			else 
			{
				$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>No se ha modificado.</strong></div>');
			}
		},
		error: function(respuesta){
			$('#mensaje').html('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Error</div>');
		}
	});
	$('#formEditarVeh').hide('blind');
	$('#formEditarVeh2').hide('blind');
}
