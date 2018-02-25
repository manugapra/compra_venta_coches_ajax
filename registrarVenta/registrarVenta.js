$('#btnEnviarVenta').click(enviarVenta);

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

		var oVenta = new Venta(selectVentaVehiculo,selectVentaCliente,selectVentaEmp,importeVentaVehiculo,fechaVentaVehiculo,observVentaVehiculo);

		var sMensaje = cvCoches.altaVenta(oVenta);	
		
		var vehiculos = cvCoches._vehiculos;
		for (var i=0; i<vehiculos.length; i++)
		{
			if (vehiculos[i].matricula==selectVentaVehiculo) 
				posCoche = i;
		}	
		vehiculos.splice(posCoche,1);
			

		alert(sMensaje);
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
	var dFecha = formRegVenta.fechaVentaVehiculo.value.trim();
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
		formRegVenta.fechaVentaVehiculo.classList.remove('error');



	if (bValido==false) 
	{
		alert(sError);
		return false;
	}
	else
		return true;
}