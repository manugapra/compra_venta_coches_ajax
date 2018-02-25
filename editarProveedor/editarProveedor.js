$('#btnEnviarEditarProveedor').click(enviarEditarProveedor);

$.get('php/getProveedores.php',null,tratarGetProveedores,'json');

function enviarEditarProveedor()
{
	
}

function tratarGetProveedores(oArrayProv, sStatus, oXHR)
{
	$('#selectProveedor').empty();

	jQuery.each(oArrayProv, function(i, elemento) {
        //$('<option value="' + elemento.cif + '" >' + elemento.Nombre + '</option>').appendTo("#selectProveedor");
        $("#selectProveedor").append('<option value="' + elemento.cif + '" >' + elemento.nombre + '</option>')
    });
}