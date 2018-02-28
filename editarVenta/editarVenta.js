$('#btnEnviarEditarVenta').click(enviarEditarVenta);

$.get('php/getVentas.php',null,tratarGetVentas,'json');

function enviarEditarVenta()
{
	var venta = $('#selectVenta').val();
	$.get('php/getDatos.php',{d:'venta', venta: venta}, tratarGetDatos,'json');
	$('#formEditarVenta2').show('blind');
}

function tratarGetVentas(oVentas, sStatus, oXHR)
{
	$('#selectVenta').empty();
	jQuery.each(oVentas,function(i, elemento){
		$('#selectVenta').append('<option value="' + elemento.vehiculo + '" >' + elemento.vehiculo + '</option>');
	});
}

function tratarGetDatos(oArrayDatos, sStatus, oXHR)
{
	console.log('entro aqui');
	for (var i = 0; i<oArrayDatos.length; i++) 
	{
		$('#vehiculoVenta').attr('value',oArrayDatos[i].vehiculo);
		$('#importeVenta').attr('value',oArrayDatos[i].importe);
		$('#fechaVenta').attr('value',oArrayDatos[i].fecha);
		$('#clienteVenta').attr('value',oArrayDatos[i].cliente);
		$('#empleadoVenta').attr('value',oArrayDatos[i].empleado);
		$('#comentariosVenta').attr('value',oArrayDatos[i].comentarios);
	}
}

$('#btnEnviarEditarVenta2').click(editarVenta);

function editarVenta()
{
	$.post('php/editar.php',{
		m:'venta',
		vehiculo: $('#vehiculoVenta').val(),
		importe: $('#importeVenta').val(),
		comentario: $('#comentariosVenta').val()
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
	$('#formEditarVenta').hide('blind');
	$('#formEditarVenta2').hide('blind');
}

