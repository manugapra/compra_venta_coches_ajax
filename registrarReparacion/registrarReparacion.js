$('#btnEnviarReparacion').click(enviarReparacion);

$.get('./php/getVehiculos.php',null,tratarGetVehiculos,'json');
function enviarReparacion()
{
	
	formRegReparacion.costeRepVehiculo.value = formRegReparacion.costeRepVehiculo.value.trim();
	
	if (validar())
	{
		
		var selectVeh = formRegReparacion.selectRepVehiculo.value.trim();
		var descVeh = formRegReparacion.descRepVehiculo.value.trim();

		//var oReparacion = new Reparacion(selectVeh,descVeh,nCoste);
		$.post("./php/alta.php", {m: "reparacion", v:selectVeh, d:descVeh, c:$("#costeRepVehiculo").val()},
			function (data,status){
				if(status=="success"){
					
					$("#mensaje").append(data);
					
					formRegReparacion.reset();
					inicio();
				} else {
					$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Ha ocurrido un error de conexión</strong></div>')


				}
			});
        
		
		inicio();
	}
	//alert(sMensaje);
	
}

function validar(){
	
	var sMensaje = '';
	var validar = true;
	var oExpReg = /^\d{1,6}$/;
	
	if (oExpReg.test($("#costeRepVehiculo").val())==false) 
	{
		$("#costeRepVehiculo").addClass('error');
		$("#costeRepVehiculo").focus();
		sMensaje += 'Debe introducir coste de la reparacion. Ejemplo: 500<br>';
		validar=false;
	} else {
		
		$("#costeRepVehiculo").removeClass('error');

	} if($("#selectRepVehiculo").val()==0){
		sMensaje += 'Debe seleccionar un vehículo.';
		$("#selectRepVehiculo").addClass("error");
		$("#selectRepVehiculo").focus();
		validar=false;
	} else {
		$("#selectRepVehiculo").removeClass('error');
		
	}
	if(validar==false){
		$("#mensaje").empty();
		$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'+sMensaje+'</div>');
		
	}
	return validar;
}
function tratarGetVehiculos(oArrayProv, sStatus, oXHR)
{
		
	$('#selectRepVehiculo').empty();
	$("#selectRepVehiculo").append('<option value="0" >Seleccione un vehiculo...</option>');
	jQuery.each(oArrayProv, function(i, elemento) {
		
       
        $("#selectRepVehiculo").append('<option value="' + elemento.matricula + '" >' + elemento.marca + ' '+elemento.modelo+'</option>');
    });
}
