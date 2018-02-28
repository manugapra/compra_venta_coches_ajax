$('#listadoCliente').click(listadoClientes);

$.get('php/getClientes.php',null,tratarGetClientes,'json');

function tratarGetClientes(oArrayEmple, sStatus, oXHR)
{
	$('#cliente').empty();
	$("#cliente").append('<option value="todos">Todos</option>');

	jQuery.each(oArrayEmple, function(i, elemento) {
        $("#cliente").append('<option value="' + elemento.dni + '" >' + elemento.nombre +' '+elemento.apellidos+ '</option>');
    });
}

function listadoClientes()
{
    var cliente = $("#cliente").val();
    $.get('php/getListadoClientes.php',{cliente: cliente},tratarListarCliente,'json');
}

function tratarListarCliente(oCliente, sStatus, oXHR)
{
    $('#listaCliente').empty();
    var sTabla= '<table class="table">';
    sTabla+= '<tr><th>DNI</th><th>Nombre</th><th>Apellidos</th><th>Telefono</th></tr>';
    $.each(oCliente,function(i,elemento){
        sTabla+='<tr><td>'+elemento.dni+'</td><td>'+elemento.nombre+'</td><td>'+elemento.apellidos+'</td><td>'+elemento.telefono+'</td></tr>';
    });
     sTabla += '<table>';

    $('#listaCliente').html(sTabla);
}

