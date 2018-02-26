$('#btnEnviarAltaProveedor').click(enviarAltaProveedor);

$.get('./php/getProveedores.php',null,tratarGetProveedores,'json');
$.get('./php/getEmpleados.php',null,tratarGetEmpleados,'json');
$.get('./php/getVehiculos.php',null,tratarGetVehiculos,'json');

function enviarAltaProveedor(){
	if (validarAltaProv()){
	var formAltaProv= document.getElementById("formAltaProv");
	//var sMensaje = "";
		
	/*if(formAltaProv.cifProv.value=="" || formAltaProv.nomProv.value=="" || formAltaProv.dirProv.value=="" || 
		formAltaProv.telProv.value=="" || formAltaProv.tipoProv.value==""){
		sMensaje= "Debe Rellenar Todos los Campos.";				
	} else{*/
		var cifProv= formAltaProv.cifProv.value.trim();
		var nomProv= formAltaProv.nomProv.value.trim();
		var dirProv= formAltaProv.dirProv.value.trim();
		var telProv= formAltaProv.telProv.value.trim();
		//var tipoProv= formAltaProv.tipoProv.value.trim();
	/*	$.post("personas.php", {prueba: "funciona"},
		function (data,status){
			$("body").text(data);
		});*/

		//var oProveedor= new Proveedor(cifProv,nomProv,dirProv,telProv);
		$.post("./php/alta.php", {m: "proveedor", c: cifProv, n: nomProv, d: dirProv, t: telProv },
			function (data,status){
				if(status=="success"){
					
					$("#mensaje").append(data);
					formAltaProv.reset();
				} else {
					$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Ha ocurrido un error de conexión</strong></div>')


				}
			});



		//sMensaje = cvCoches.altaProveedor(oProveedor);
        //altaProveedor();
	//}

	//alert(sMensaje);
	inicio();
	}

}

//validacion formulario alta proveedor
function validarAltaProv()
{

	var bValido = true;
	var sError = "";

	//campo cif
	var sCif = formAltaProv.cifProv.value.trim();
	formAltaProv.cifProv.value = formAltaProv.cifProv.value.trim();
	var oExpReg = /^[a-zA-Z]\d{8}$/i;

	if (oExpReg.test(sCif) == false)
	{
		formAltaProv.cifProv.classList.add("error");
		formAltaProv.cifProv.focus();
		bValido = false;
		sError = "El CIF tiene que tener una letra y 8 numeros. <br>"; 
	} else {
		formAltaProv.cifProv.classList.remove("error");
	}

	//campo nombre
	var sNombre = formAltaProv.nomProv.value.trim();
	formAltaProv.nomProv.value = formAltaProv.nomProv.value.trim();
	var oExpReg = /^[a-zA-Z\s]{1,40}$/i;

	if (oExpReg.test(sNombre) == false)
	{
		formAltaProv.nomProv.classList.add("error");
		formAltaProv.nomProv.focus();
		bValido = false;
		sError += "Escriba un nombre.<br>"; 
	} else {
		formAltaProv.nomProv.classList.remove("error");
	}

	//campo direccion
	var sDireccion = formAltaProv.dirProv.value.trim();
	formAltaProv.dirProv.value = formAltaProv.dirProv.value.trim();
	oExpReg = /^[\w\s]{1,40}$/i;

	if (oExpReg.test(sDireccion) == false)
	{
		formAltaProv.dirProv.classList.add("error");
		formAltaProv.dirProv.focus();
		bValido = false;
		sError += "Debe escribir una direccion. Ejemplo: Calle Arroz 6. <br>"; 
	} else {
		formAltaProv.dirProv.classList.remove("error");
	}


	//campo telefono
	var nTelefono = formAltaProv.telProv.value.trim();
	formAltaProv.telProv.value = formAltaProv.telProv.value.trim();
	var oExpReg = /^[6|7][0-9]{8}$/;

	if (oExpReg.test(nTelefono) == false)
	{
		formAltaProv.telProv.classList.add("error");
		formAltaProv.telProv.focus();
		bValido = false;
		sError += "El telefono tiene que empezar por 6 o 7 y tiene que tener 9 cifras."; 
	} else {
		formAltaProv.telProv.classList.remove("error");
	}

	if (bValido == false) 
	{
		$("#mensaje").empty();
		$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'+sError+'</div>');
		
		return false;
	} else {
		return true;
	}
}
