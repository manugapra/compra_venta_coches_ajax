$('#btnEnviarEditarCliente').click(enviarEditarCliente);

$.get('php/getClientes.php',null,tratarGetClientes,'json');

function enviarEditarCliente()
{
	var cliente = $('#selectCliente').val();
	$.get('php/getDatos.php',{d:'cliente', cliente: cliente},tratarGetDatos,'json');
	$('#formEditarCli2').show('blind');
}

function tratarGetClientes(oArrayCli, sStatus, oXHR)
{
	$('#selectCliente').empty();

	jQuery.each(oArrayCli, function(i, elemento) {
        //$('<option value="' + elemento.cif + '" >' + elemento.Nombre + '</option>').appendTo("#selectCliente");
        $("#selectCliente").append('<option value="' + elemento.dni + '" >' + elemento.nombre +' '+elemento.apellidos+ '</option>')
    });
}

function tratarGetDatos(oArrayDatos, sStatus, oXHR)
{
	for (var i = 0; i<oArrayDatos.length; i++) 
	{
		$('#dniCliente').attr('value',oArrayDatos[i].dni);
		$('#nombreCliente').attr('value',oArrayDatos[i].nombre);
		$('#apellidosCliente').attr('value',oArrayDatos[i].apellidos);
		$('#telefonoCliente').attr('value',oArrayDatos[i].telefono);
	}
}

$('#btnEnviarEditarCli2').click(editarCliente);

function editarCliente()
{
	$.post('php/editar.php',{
		m:'cliente',
		dni: $('#dniCliente').val(),
		nombre: $('#nombreCliente').val(),
		apellidos: $('#apellidosCliente').val(),
		telefono: $('#telefonoCliente').val()
	}, function(data,status)
	{
		if(status=="success"){
					
					$("#mensaje").append(data);
				} else {
					$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Ha ocurrido un error de conexión</strong></div>')


				}
	}, 'json');
	$('#formEditarCli').hide('blind');
	$('#formEditarCli2').hide('blind');
}