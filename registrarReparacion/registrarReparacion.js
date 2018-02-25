$('#btnEnviarReparacion').click(enviarReparacion);

function enviarReparacion()
{
	var nCoste = formRegReparacion.costeRepVehiculo.value.trim();
	formRegReparacion.costeRepVehiculo.value = formRegReparacion.costeRepVehiculo.value.trim();
	var sMensaje = '';
	
	if (nCoste=='') 
	{
		formRegReparacion.costeRepVehiculo.classList.add('error');
		formRegReparacion.costeRepVehiculo.focus();
		sMensaje = 'Debe introducir coste de la reparacion.';
	}
	else
	{
		formRegReparacion.costeRepVehiculo.classList.remove('error');
		var selectVeh = formRegReparacion.selectRepVehiculo.value.trim();
		var descVeh = formRegReparacion.descRepVehiculo.value.trim();

		var oReparacion = new Reparacion(selectVeh,descVeh,nCoste);

		var sMensaje = cvCoches.altaReparacion(oReparacion);
	}
	alert(sMensaje);
	inicio();
}