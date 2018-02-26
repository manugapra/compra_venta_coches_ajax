
$('#btnEnviarVenta').click(enviarVenta);

rellenarCombos();
function rellenarCombos()
{
	

	$.get('php/getVehiculos.php',null,comboVehiculo,'json');

	$.get('php/getClientes.php',null,comboClientes,'json');
	$.get('php/getEmpleados.php',null,comboEmpleados,'json');
}

function comboVehiculo(oVehiculos, sStatus, oXHR)
{	
	
	$('#selectVentaVehiculo').empty();
	$("#selectVentaVehiculo").append('<option value="0" >Seleccione un vehiculo...</option>');
	jQuery.each(oVehiculos,function(i,elemento){

		$('#selectVentaVehiculo').append('<option value="' + elemento.matricula + '" >' + elemento.matricula +'-'+elemento.marca+' '+elemento.modelo+ '</option>');
	});
}

function comboClientes(oClientes, sStatus, oXHR)
{	
	$('#selectVentaCliente').empty();
	$("#selectVentaCliente").append('<option value="0" >Seleccione un cliente...</option>');
	jQuery.each(oClientes,function(i,elemento){
		$('#selectVentaCliente').append('<option value="' + elemento.dni + '" >' + elemento.nombre+' '+elemento.apellidos+ '</option>');
	});
}

function comboEmpleados(oEmpleados, sStatus, oXHR)
{
	$('#selectVentaEmp').empty();
	$("#selectVentaEmp").append('<option value="0" >Seleccione un empleado...</option>');
	jQuery.each(oEmpleados,function(i,elemento){
		$('#selectVentaEmp').append('<option value="' + elemento.dni + '" >' + elemento.nombre+' '+elemento.apellidos+ '</option>');
	});
}

function enviarVenta()
{
	if (validarVenta()) 
	{
		var posCoche=0;

		var selectVentaVehiculo = formRegVenta.selectVentaVehiculo.value.trim();
		var selectVentaCliente = formRegVenta.selectVentaCliente.value.trim();
		var selectVentaEmp = formRegVenta.selectVentaEmp.value.trim();
		var importeVentaVehiculo = formRegVenta.importeVentaVehiculo.value.trim();
		var fechaVentaVehiculo = formRegVenta.fechaVentaVehiculo.value.trim();		
		var observVentaVehiculo = formRegVenta.observVentaVehiculo.value.trim();

		$.post('php/alta.php',{m: "venta", v: selectVentaVehiculo, i: importeVentaVehiculo, f: fechaVentaVehiculo, c: selectVentaCliente, e: selectVentaEmp, o: observVentaVehiculo},
			function (data,status){
				if(status=="success"){
					
					$("#mensaje").append(data);
					
					formRegVenta.reset();
					inicio();
				} else {
					$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Ha ocurrido un error de conexión</strong></div>')


				}
			});			

		inicio();
	}
}

function validarVenta()
{
	
	var selectVentas = formRegVenta.querySelectorAll('select');
	bValido = true;
	var sError = '';

	//select vehiculos
	if ($("#selectVentaVehiculo").val()==0) 
	{	
		sError+='Debe seleccionar un vehiculo.<br>';
		selectVentas[0].classList.add('error');
		selectVentas[0].focus();
		bValido = false;
	}
	else{
		selectVentas[0].classList.remove('error');
	}

	//select cliente
	if ($("#selectVentaCliente").val()==0) 
	{
		sError+='Debe seleccionar un cliente.<br>';
		selectVentas[1].classList.add('error');
		selectVentas[1].focus();
		bValido = false;
	}
	else{
		selectVentas[1].classList.remove('error');
	}

	//select empleado
	if ($("#selectVentaEmp").val()==0) 
	{
		sError+='Debe seleccionar un empleado.<br>';
		selectVentas[2].classList.add('error');
		selectVentas[2].focus();
		bValido = false;
	}
	else{
		selectVentas[2].classList.remove('error');
	}

	//campo importe
	var nImporte = formRegVenta.importeVentaVehiculo.value.trim();
	formRegVenta.importeVentaVehiculo.value= formRegVenta.importeVentaVehiculo.value.trim();
	var oExpReg = /^\d{1,6}$/i;

	 if (oExpReg.test(nImporte)==false) 
	{

		formRegVenta.importeVentaVehiculo.classList.add('error');
		formRegVenta.importeVentaVehiculo.focus();
		bValido=false;
		sError += 'Debe introducir un importe.<br>';
	}
	else{
		formRegVenta.importeVentaVehiculo.classList.remove('error');
	}

	//campo fecha
	
	
	

	if ($("#fechaVentaVehiculo").val()=="") 
	{
		formRegVenta.fechaVentaVehiculo.classList.add('error');
		formRegVenta.fechaVentaVehiculo.focus();
		bValido=false;
		sError += 'Debe introducir una fecha.';
	}
	else{
		formRegVenta.fechaVentaVehiculo.classList.remove('error');
	}



	if (bValido==false) 
	{	
		
		$("#mensaje").empty();
		$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'+sError+'</div>');
		
		return false;
	}
	else
		return true;
}