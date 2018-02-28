$('#btnEnviarEditarCompra').click(enviarEditarCompra);

$.get('php/getCompras.php',null,tratarGetCompras,'json');

function enviarEditarCompra()
{
	var compra = $('#selectCompra').val();
	$.get('php/getDatos.php',{d:'compra', compra: compra}, tratarGetDatos,'json');
	$('#formEditarCompra2').show('blind');
}

function tratarGetCompras(oCompras, sStatus, oXHR)
{
	$('#selectCompra').empty();
	jQuery.each(oCompras,function(i, elemento){
		$('#selectCompra').append('<option value="' + elemento.vehiculo + '" >' + elemento.vehiculo + '</option>');
	});
}

function tratarGetDatos(oArrayDatos, sStatus, oXHR)
{
	console.log('entro aqui');
	for (var i = 0; i<oArrayDatos.length; i++) 
	{
		$('#vehiculoCompra').attr('value',oArrayDatos[i].vehiculo);
		$('#importeCompra').attr('value',oArrayDatos[i].importe);
		$('#fechaCompra').attr('value',oArrayDatos[i].fecha);
		$('#proveedorCompra').attr('value',oArrayDatos[i].proveedor);
		$('#empleadoCompra').attr('value',oArrayDatos[i].empleado);
		$('#comentariosCompra').attr('value',oArrayDatos[i].comentarios);
	}
}

$('#btnEnviarEditarCompra2').click(editarCompra);

function editarCompra()
{
	$.post('php/editar.php',{
		m:'compra',
		vehiculo: $('#vehiculoCompra').val(),
		importe: $('#importeCompra').val(),
		comentario: $('#comentariosCompra').val()
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
	$('#formEditarCompra').hide('blind');
	$('#formEditarCompra2').hide('blind');
}