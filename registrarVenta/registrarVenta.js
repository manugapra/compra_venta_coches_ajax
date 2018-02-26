$('#btnEnviarVenta').click(enviarVenta);

rellenarCombos();
function rellenarCombos()
{
	$.get('php/getVehiculos.php',null,comboVehiculos,'json');
	$.get('php/getClientes.php',null,comboClientes,'json');
	$.get('php/getEmpleados.php',null,comboEmpleados,'json');
}

function comboVehiculos(oVehiculos, sStatus, oXHR)
{
	$('#selectVentaVehiculo').empty();
	jQuery.each(oVehiculos,function(i,elemento){
		$('#selectVentaVehiculo').append('<option value="' + elemento.matricula + '" >' + elemento.matricula +'-'+elemento.marca+' '+elemento.modelo+ '</option>');
	});
}

function comboClientes(oClientes, sStatus, oXHR)
{
	$('#selectVentaCliente').empty();
	jQuery.each(oClientes,function(i,elemento){
		$('#selectVentaCliente').append('<option value="' + elemento.dni + '" >' + elemento.nombre+' '+elemento.apellidos+ '</option>');
	});
}

function comboEmpleados(oEmpleados, sStatus, oXHR)
{
	$('#selectVentaEmp').empty();
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
	if (selectVentas[0].querySelector('option').value=='No hay vehiculos dados de alta') 
	{
		selectVentas[0].classList.add('error');
		selectVentas[0].focus();
		bValido = false;
	}
	else
		selectVentas[0].classList.remove('error');

	//select cliente
	if (selectVentas[1].querySelector('option').value=='No hay clientes dados de alta') 
	{
		selectVentas[1].classList.add('error');
		selectVentas[1].focus();
		bValido = false;
	}
	else
		selectVentas[1].classList.remove('error');

	//select empleado
	if (selectVentas[2].querySelector('option').value=='No hay empleados dados de alta') 
	{
		selectVentas[2].classList.add('error');
		selectVentas[2].focus();
		bValido = false;
	}
	else
		selectVentas[2].classList.remove('error');

	//campo importe
	var nImporte = formRegVenta.importeVentaVehiculo.value.trim();
	formRegVenta.importeVentaVehiculo.value= formRegVenta.importeVentaVehiculo.value.trim();
	var oExpReg = /^\d{1,6}$/i;

	if (oExpReg.test(nImporte)==false) 
	{
		formRegVenta.importeVentaVehiculo.classList.add('error');
		formRegVenta.importeVentaVehiculo.focus();
		bValido=false;
		sError = 'Debe introducir un importe.\n';
	}
	else
		formRegVenta.importeVentaVehiculo.classList.remove('error');

	//campo fecha
	/*var dFecha = formRegVenta.fechaVentaVehiculo.value.trim();
	formRegVenta.fechaVentaVehiculo.value= formRegVenta.fechaVentaVehiculo.value.trim();
	var oExpReg = /^([0][1-9]|[12][0-9]|3[01])(\/|-)([0][1-9]|[1][0-2])\2(\d{4})$/i;

	if (oExpReg.test(dFecha)==false) 
	{
		formRegVenta.fechaVentaVehiculo.classList.add('error');
		formRegVenta.fechaVentaVehiculo.focus();
		bValido=false;
		sError += 'Debe introducir una fecha. Por ejemplo: 01/01/2018.\n';
	}
	else
		formRegVenta.fechaVentaVehiculo.classList.remove('error');*/



	if (bValido==false) 
	{
		alert(sError);
		return false;
	}
	else
		return true;
}