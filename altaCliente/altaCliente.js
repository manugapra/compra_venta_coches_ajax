$('#btnEnviarAltaCliente').click(enviarAltaCliente);

function enviarAltaCliente(){
if (validarAltaCli()) 
{

	var formAltaCli= document.getElementById("formAltaCli");
	//var sMensaje = "";
		
	/*if(formAltaCli.dniCliente.value=="" || formAltaCli.nomCliente.value=="" || formAltaCli.apCliente.value=="" || 
		formAltaCli.telCliente.value==""){
		sMensaje= "Debe Rellenar Todos los Campos.";				
	} else{*/
		var dniCliente= formAltaCli.dniCliente.value.trim();
		var nomCliente= formAltaCli.nomCliente.value.trim();
		var apCliente= formAltaCli.apCliente.value.trim();
		var telCliente= formAltaCli.telCliente.value.trim();

		//console.log(dniCliente+' '+nomCliente+' '+apCliente+' '+telCliente);
		
		//var oCliente = new Cliente(dniCliente,nomCliente,apCliente,telCliente);

		$.post("./php/alta.php", {m: "cliente", d: dniCliente, n: nomCliente, a: apCliente, t: telCliente },
		function (data,status){

			if(status=="success"){
				
				$("#mensaje").append(data);
				formAltaCli.reset();
			} else {
				$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Ha ocurrido un error de conexión</strong></div>')


			}
			
		});


		//sMensaje = cvCoches.altaCliente(oCliente);
        //altaCliente();
	//}
	
	//alert(sMensaje);
	inicio();
	}
}

function validarAltaCli(oEvento)
 {
 	var oE = oEvento || window.event;
	var bValido = true;
	var sError = "";

	//campo dni
	var nDNI = formAltaCli.dniCliente.value.trim();
	formAltaCli.dniCliente.value = formAltaCli.dniCliente.value.trim();
	var oExpReg = /^\d{8}[a-zA-Z]$/;

	if (oExpReg.test(nDNI)==false) 
	{
		formAltaCli.dniCliente.classList.add('error');
		formAltaCli.dniCliente.focus();
		bValido = false;
		sError = 'El DNI tiene que tener 8 cifras y una letra. <br>';
	}
	else
		formAltaCli.dniCliente.classList.remove('error');

	//campo nombre
	var sNombre = formAltaCli.nomCliente.value.trim();
	formAltaCli.nomCliente.value = formAltaCli.nomCliente.value.trim();
	var oExpReg = /^[a-zA-Z\s]{1,40}$/;

	if (oExpReg.test(sNombre)==false) 
	{
		formAltaCli.nomCliente.classList.add('error');
		formAltaCli.nomCliente.focus();
		bValido = false;
		sError += 'Escriba un nombre. <br>';
	}
	else
		formAltaCli.nomCliente.classList.remove('error');

	//campo apellidos
	var sApellidos = formAltaCli.apCliente.value.trim();
	formAltaCli.apCliente.value = formAltaCli.apCliente.value.trim();
	var oExpReg = /^[a-zA-Z\s]{6,40}$/;

	if (oExpReg.test(sApellidos)==false) 
	{
		formAltaCli.apCliente.classList.add('error');
		formAltaCli.apCliente.focus();
		bValido = false;
		sError += 'Escriba los apellidos <br>';
	}
	else
		formAltaCli.apCliente.classList.remove('error');

	//campo telefono
	var nTelefono = formAltaCli.telCliente.value.trim();
	formAltaCli.telCliente.value = formAltaCli.telCliente.value.trim();
	var oExpReg = /^[6|7]\d{8}$/;

	if (oExpReg.test(nTelefono)==false) 
	{
		formAltaCli.telCliente.classList.add('error');
		formAltaCli.telCliente.focus();
		bValido = false;
		sError += 'El telefono tiene que tener 9 digitos y debe empezar por 6 o 7. <br>';
	}
	else
		formAltaCli.telCliente.classList.remove('error');


	if (bValido == false) 
	{
		$("#mensaje").empty();
		$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'+sError+'</div>');
		return false;
	}
	else
		return true;	
 }