$('#btnEnviarEditarReparacion').click(enviarEditarReparacion);

$.get('php/getReparaciones.php',null,tratarGetReparaciones,'json');

function enviarEditarReparacion()
{
	var reparacion = $('#selectReparacion').val();
	$.get('php/getDatos.php',{d:'reparacion', reparacion: reparacion}, tratarGetDatos,'json');
	$('#formEditarReparacion2').show('blind');
}

function tratarGetReparaciones(oReparacion, sStatus, oXHR)
{
	$('#selectReparacion').empty();
	jQuery.each(oReparacion,function(i, elemento){
		$('#selectReparacion').append('<option value="' + elemento.vehiculo + '" >' + elemento.vehiculo + '</option>');
	});
}

function tratarGetDatos(oArrayDatos, sStatus, oXHR)
{
	console.log('entro aqui');
	for (var i = 0; i<oArrayDatos.length; i++) 
	{
		$('#vehiculoReparacion').attr('value',oArrayDatos[i].vehiculo);
		$('#costeReparacion').attr('value',oArrayDatos[i].coste);
		$('#descripcionReparacion').attr('value',oArrayDatos[i].desc_rep);
	}
}

$('#btnEnviarEditarReparacion2').click(editarReparacion);

function editarReparacion()
{
	$.post('php/editar.php',{
		m:'reparacion',
		vehiculo: $('#vehiculoReparacion').val(),
		coste: $('#costeReparacion').val(),
		descripcion: $('#descripcionReparacion').val()
	}, 
	function(data)
	{
		if(data==true)
		{	
			$("#mensaje").append('<div class="alert alert-success"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Se ha modificado correctamente.</strong></div>');
		}
		else 
		{
			$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>No se ha modificado.</strong></div>');
		}
	}, 'json');
	$('#formEditarReparacion').hide('blind');
	$('#formEditarReparacion2').hide('blind');
}