$('#btnEnviarEditarCliente').click(enviarEditarCliente);

$.get('php/getClientes.php',null,tratarGetClientes,'json');

function enviarEditarCliente()
{
	
}

function tratarGetClientes(oArrayCli, sStatus, oXHR)
{
	$('#selectCliente').empty();

	jQuery.each(oArrayCli, function(i, elemento) {
        //$('<option value="' + elemento.cif + '" >' + elemento.Nombre + '</option>').appendTo("#selectCliente");
        $("#selectCliente").append('<option value="' + elemento.dni + '" >' + elemento.nombre +' '+elemento.apellidos+ '</option>')
    });
}