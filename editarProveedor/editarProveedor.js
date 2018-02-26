$('#btnEnviarEditarProv').click(enviarEditarProveedor);

$.get('php/getProveedores.php',null,tratarGetProveedores,'json');

function enviarEditarProveedor()
{
	var proveedor = $('#selectProveedor').val();
	$.get('php/getDatosProveedores.php',{cif: proveedor},tratarGetDatos,'json');
	$('#formEditarProv2').show('blind');
}

function tratarGetProveedores(oArrayProv, sStatus, oXHR)
{
	$('#selectProveedor').empty();

	jQuery.each(oArrayProv, function(i, elemento) {
        //$('<option value="' + elemento.cif + '" >' + elemento.Nombre + '</option>').appendTo("#selectProveedor");
        $("#selectProveedor").append('<option value="' + elemento.cif + '" >' + elemento.nombre + '</option>')
    });
}

function tratarGetDatos(oArrayDatos, sStatus, oXHR)
{
	for (var i = 0; i<oArrayDatos.length; i++) 
	{
		$('#cifProveedor').attr('value',oArrayDatos[i].cif);
		$('#nombreProveedor').attr('value',oArrayDatos[i].nombre);
		$('#direccionProveedor').attr('value',oArrayDatos[i].direccion);
		$('#telefonoProveedor').attr('value',oArrayDatos[i].telefono);
	}
}

$('#btnEnviarEditarProv2').click(editarProveedor);

function editarProveedor()
{
	$.post('php/editar.php',{
		m:'proveedor',
		cif: $('#cifProveedor').val(),
		nombre: $('#nombreProveedor').val(),
		direccion: $('#direccionProveedor').val(),
		telefono: $('#telefonoProveedor').val()
	}, function(data,status)
	{
		if(status=="success"){
					
					$("#mensaje").append(data);
				} else {
					$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Ha ocurrido un error de conexión</strong></div>')


				}
	}, 'json');
	$('#formEditarProv').hide('blind');
	$('#formEditarProv2').hide('blind');
}