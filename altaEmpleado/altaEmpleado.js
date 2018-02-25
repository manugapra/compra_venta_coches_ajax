$('#btnEnviarAltaEmpleado').click(enviarAltaEmpleado);

function enviarAltaEmpleado(){
	if(validarAltaEmpleado()){
		var formAltaEmpleado= document.getElementById("formAltaEmpleado");
		var sMensaje = "";
			
		/*if(formAltaEmpleado.dniEmp.value=="" || formAltaEmpleado.nomEmp.value=="" || formAltaEmpleado.apeEmp.value=="" || 
			formAltaEmpleado.ventasEmp.value=="" || formAltaEmpleado.salEmp.value==""){
			sMensaje= "Debe Rellenar Todos los Campos.";				
		} else{*/
			var dniEmp= formAltaEmpleado.dniEmp.value.trim();
			var nomEmp= formAltaEmpleado.nomEmp.value.trim();
			var apeEmp= formAltaEmpleado.apeEmp.value.trim();
			var salEmp= formAltaEmpleado.salEmp.value.trim();
			
			//var oEmpleado= new Empleado(dniEmp,nomEmp,apeEmp,salEmp);
			
			//sMensaje = cvCoches.altaEmpleado(oEmpleado);

			$.post("./php/alta.php", {m: "empleado", d: dniEmp, n: nomEmp, a: apeEmp, s: salEmp },
			function (data,status){

				if(status=="success"){
					
					$("#mensaje").append(data);
					formAltaProv.reset();
				} else {
					$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Ha ocurrido un error de conexión</strong></div>')


				}
				
			});


	        //altaEmpleado();
		//}

		//alert(sMensaje);
		inicio();
	}

}

function validarAltaEmpleado(oEvento)
{
	var oE = oEvento || window.event;
	var bValido = true;
	var sError = "";

	//campo dni
	var sDNI = formAltaEmpleado.dniEmp.value.trim();
	formAltaEmpleado.dniEmp.value = formAltaEmpleado.dniEmp.value.trim();
	oExpReg = /^\d{8}[a-zA-Z]$/i;

	if (oExpReg.test(sDNI)==false) 
	{
		formAltaEmpleado.dniEmp.classList.add('error');
		formAltaEmpleado.dniEmp.focus();
		bValido = false;
		sError = 'El dni tiene que tener 8 cifras y una letra \n';
	}
	else
		formAltaEmpleado.dniEmp.classList.remove('error');

	//campo nombre
	var sNombre = formAltaEmpleado.nomEmp.value.trim();
	formAltaEmpleado.nomEmp.value = formAltaEmpleado.nomEmp.value.trim();
	var oExpReg = /^[a-zA-Z\s]{1,40}$/i;

	if (oExpReg.test(sNombre) == false)
	{
		formAltaEmpleado.nomEmp.classList.add("error");
		formAltaEmpleado.nomEmp.focus();
		bValido = false;
		sError += "Escriba un nombre \n"; 
	} else {
		formAltaEmpleado.nomEmp.classList.remove("error");
	}

	//campo apellido
	var sApellidos = formAltaEmpleado.apeEmp.value.trim();
	formAltaEmpleado.apeEmp.value = formAltaEmpleado.apeEmp.value.trim();
	var oExpReg = /^[a-zA-Z\s]{1,40}$/i;

	if (oExpReg.test(sNombre) == false)
	{
		formAltaEmpleado.apeEmp.classList.add("error");
		formAltaEmpleado.apeEmp.focus();
		bValido = false;
		sError += "Escriba los apellidos \n"; 
	} else {
		formAltaEmpleado.apeEmp.classList.remove("error");
	}



	//campo salario 
	var nSalario = formAltaEmpleado.salEmp.value.trim();
	formAltaEmpleado.salEmp.value = formAltaEmpleado.salEmp.value.trim();
	var oExpReg = /^\d{1,5}$/;

	if (oExpReg.test(nSalario) == false)
	{
		formAltaEmpleado.salEmp.classList.add("error");
		formAltaEmpleado.salEmp.focus();
		bValido = false;
		sError += "Introduzca el salario \n"; 
	} else {
		formAltaEmpleado.salEmp.classList.remove("error");
	}


	if (bValido == false) 
	{
		alert(sError);
		//oE.preventDefault();
		return false;
	} else {
		return true;
	}
}