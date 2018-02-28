$('#listadoProveedor').click(listadoProveedores);

$.get('php/getProveedores.php',null,tratarGetProveedores,'json');

function tratarGetProveedores(oArrayEmple, sStatus, oXHR)
{
	$('#proveedor').empty();
	$("#proveedor").append('<option value="todos">Todos</option>');

	jQuery.each(oArrayEmple, function(i, elemento) {
        $("#proveedor").append('<option value="' + elemento.cif + '" >' + elemento.nombre + '</option>');
    });
}

function listadoProveedores()
{
    var proveedor = $("#proveedor").val();
    $.get('php/getListadoProveedores.php',{proveedor: proveedor},tratarListarProveedores,'json');
}

function tratarListarProveedores(oProveedor, sStatus, oXHR)
{
    $('#listaProveedor').empty();
    var sTabla= '<table class="table">';
    sTabla+= '<tr><th>CIF</th><th>Nombre</th><th>Direccion</th><th>Telefono</th></tr>';
    $.each(oProveedor,function(i,elemento){
        sTabla+='<tr><td>'+elemento.cif+'</td><td>'+elemento.nombre+'</td><td>'+elemento.direccion+'</td><td>'+elemento.telefono+'</td></tr>';
    });
     sTabla += '<table>';

    $('#listaProveedor').html(sTabla);
}

