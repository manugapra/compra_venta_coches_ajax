$('#btnEnviarCompra').click(enviarCompra);

function enviarCompra()
{
	if (validarCompra()) 
	{
		var formRegCompra= document.getElementById("formRegCompra");
		var sMensaje = "";
		
		var selectCompraVehiculo= formRegCompra.selectCompraVehiculo.value.trim();
		var importeCompraVehiculo= formRegCompra.importeCompraVehiculo.value.trim();
		var fechaCompraVehiculo= formRegCompra.fechaCompraVehiculo.value.trim();
		var selectCompraProv= formRegCompra.selectCompraProv.value.trim();
		var selectCompraEmp= formRegCompra.selectCompraEmp.value.trim();
		var observCompraVehiculo= formRegCompra.observCompraVehiculo.value.trim();
		
		var oCompra = new Compra(selectCompraVehiculo,importeCompraVehiculo,fechaCompraVehiculo,selectCompraProv,selectCompraEmp,observCompraVehiculo);
		
		sMensaje = cvCoches.altaCompra(oCompra);
        

	alert(sMensaje);
	inicio();
	}
		
	
}

function validarCompra(oEvento)
{
	var oE = oEvento || window.event;
	var bValido = true;
	var sError = "";

	//campo importe
	var nImporte = formRegCompra.importeCompraVehiculo.value.trim();
	formRegCompra.importeCompraVehiculo.value= formRegCompra.importeCompraVehiculo.value.trim();
	var oExpReg = /^\d{1,6}$/i;

	if (oExpReg.test(nImporte)==false) 
	{
		formRegCompra.importeCompraVehiculo.classList.add('error');
		formRegCompra.importeCompraVehiculo.focus();
		bValido=false;
		sError = 'Debe introducir un importe.\n';
	}
	else
		formRegCompra.importeCompraVehiculo.classList.remove('error');

	//campo fecha
	var dFecha = formRegCompra.fechaCompraVehiculo.value.trim();
	formRegCompra.fechaCompraVehiculo.value= formRegCompra.fechaCompraVehiculo.value.trim();
	var oExpReg = /^([0][1-9]|[12][0-9]|3[01])(\/|-)([0][1-9]|[1][0-2])\2(\d{4})$/i;

	if (oExpReg.test(dFecha)==false) 
	{
		formRegCompra.fechaCompraVehiculo.classList.add('error');
		formRegCompra.fechaCompraVehiculo.focus();
		bValido=false;
		sError += 'Debe introducir una fecha. Por ejemplo: 01/01/2018.\n';
	}
	else
		formRegCompra.fechaCompraVehiculo.classList.remove('error');

	if (bValido == false) 
	{
		alert(sError);
		return false;
	}
	else
		return true;
}