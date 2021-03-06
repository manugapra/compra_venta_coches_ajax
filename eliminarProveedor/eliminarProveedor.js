$('#btnEnviarEliminarProv').click(enviarEliminarProveedor);

$.get('php/getProveedores.php',null,tratarGetProveedores,'json');

function enviarEliminarProveedor()
{
	var proveedor = $('#selectProveedor').val();
	if(validar()){
	$.post('php/baja.php',{m: "prov", p: proveedor},
			function (data,status){
				if(status=="success"){
					$("#mensaje").empty();
					$("#mensaje").append(data);
					
					formRegVenta.reset();
					
				} else {
					$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Ha ocurrido un error de conexión</strong></div>')


				}
			});			
		inicio();
	} else {
		$("#mensaje").empty();
		$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Debe seleccionar un proveedor</strong></div>')

	}
		
}

function validar(){
	var validar=true;
	if($("#selectProveedor").val()==0){
		validar=false;
	}
	return validar;
}

function tratarGetProveedores(oArrayProv, sStatus, oXHR)
{
	$('#selectProveedor').empty();
	$("#selectProveedor").append('<option value="0" >Seleccione un proveedor...</option>');
	jQuery.each(oArrayProv, function(i, elemento) {
        
        $("#selectProveedor").append('<option value="' + elemento.cif + '" >' + elemento.nombre + '</option>')
    });
}

