$('#btnEnviarAltaVehiculo').click(enviarAltaVehiculo);

cargarComboMarcas();

function enviarAltaVehiculo()
{
	if(validarAltaVeh())
	{
		var formAltaVeh = document.getElementById("formAltaVeh");
		var sMensaje = "";
			
		/*if(formAltaEmpleado.dniEmp.value=="" || formAltaEmpleado.nomEmp.value=="" || formAltaEmpleado.apeEmp.value=="" || 
			formAltaEmpleado.ventasEmp.value=="" || formAltaEmpleado.salEmp.value==""){
			sMensaje= "Debe Rellenar Todos los Campos.";				
		} else{*/
			var matVehiculo = formAltaVeh.matVehiculo.value.trim();
			var marcaVehiculo = $('#marcaVehiculo').val();
			var modVehiculo = formAltaVeh.modVehiculo.value.trim();
			var tasVehiculo = formAltaVeh.tasVehiculo.value.trim();
			var combVehiculo = formAltaVeh.combVehiculo.value.trim();
			var plazasVehiculo = formAltaVeh.plazasVehiculo.value.trim();
			var tipoVehiculo = formAltaVeh.tipoVehiculo.value.trim();

			var oVehiculo = new Vehiculo(matVehiculo,marcaVehiculo,modVehiculo,tasVehiculo,combVehiculo,plazasVehiculo);
			if (tipoVehiculo=='coche') 
			{
				var nPuertasCoche = formAltaVeh.nPuertasCoche.value.trim();
				var tapiceriaCoche = formAltaVeh.tapiceriaCoche.value.trim();
				var tpCoche = formAltaVeh.tpCoche.value.trim();

				//var oCoche = new Coche(matVehiculo,marcaVehiculo,modVehiculo,tasVehiculo,combVehiculo,plazasVehiculo,nPuertasCoche,tapiceriaCoche,tpCoche,tipoVehiculo);
				//sMensaje = cvCoches.altaVehiculo(oCoche);

				$.post("./php/alta.php", {m: "coche", matricula: matVehiculo, marca: marcaVehiculo, modelo: modVehiculo, tasacion: tasVehiculo, combustible: combVehiculo, plazas: plazasVehiculo, puertas: nPuertasCoche, tapiceria: tapiceriaCoche, tipo: tpCoche,  tipoveh: tipoVehiculo},
			function (data,status){

				if(status=="success"){
					
					$("#mensaje").append(data);
				} else {
					$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Ha ocurrido un error de conexión</strong></div>')


				}
				
			});
			}
			else
			{
				var cargaCamion = formAltaVeh.cargaCamion.value.trim();
				var tipoCargaCamion = formAltaVeh.tipoCargaCamion.value.trim();
				var capCombCamion = formAltaVeh.capCombCamion.value.trim();

				//var oCamion = new Camion(matVehiculo,marcaVehiculo,modVehiculo,tasVehiculo,combVehiculo,plazasVehiculo,cargaCamion,tipoCargaCamion,capCombCamion,tipoVehiculo);
				//sMensaje = cvCoches.altaVehiculo(oCamion);
				$.post("./php/alta.php", {m: "camion", matricula: matVehiculo, marca: marcaVehiculo, modelo: modVehiculo, tasacion: tasVehiculo, combustible: combVehiculo, plazas: plazasVehiculo, carga: cargaCamion, tipo: tipoCargaCamion,  capacidad: capCombCamion, tipoveh: tipoVehiculo},
			function (data,status){

				if(status=="success"){
					
					$("#mensaje").append(data);
				} else {
					$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Ha ocurrido un error de conexión</strong></div>')


				}
				
			});
			}
			
			
			
	        //altaEmpleado();
		//}

		//alert(sMensaje);
		inicio();
	}


}

var oBtnTipoCoche= document.getElementById("radioCoche");
oBtnTipoCoche.addEventListener("click",mostrarTipoCoche,false);

var oBtnTipoCamion= document.getElementById("radioCamion");
oBtnTipoCamion.addEventListener("click",mostrarTipoCamion,false);

function cargarComboMarcas()
{
	$('#marcaVehiculo').empty();
	$('#marcaVehiculo').append('<option value="">Seleccione marca...</option>');
	var oArrayMarcas = null;

	if (localStorage['marcas']!=null) 
	{
		oMarcas = JSON.parse(localStorage["marcas"]);
		rellenaCombo(oMarcas);
	}
	else
		$.get('php/getMarcas.php', null, tratarGetMarcas, 'json');
}

function tratarGetMarcas(oMarcas, sStatus, oXHR)
{
	rellenaCombo(oMarcas);
	localStorage["marcas"] = JSON.stringify(oMarcas);
}

function rellenaCombo(oMarcas)
{
	$.each(oMarcas, function(i, elemento) {

        $('<option value="' + elemento.marca + '" >' + elemento.marca + '</option>').appendTo("#marcaVehiculo");

    });
}

function validarAltaVeh(oEvento)
{
	var oE = oEvento || window.event;
	var bValido = true;
	var sError = "";

	//campo matricula
	var sMatricula = formAltaVeh.matVehiculo.value.trim();
	formAltaVeh.matVehiculo.value = formAltaVeh.matVehiculo.value.trim();
	var oExpReg = /^\d{4}[BCDFGHJK][BCDFGHJKLMNÑPQRSTVWYZ]{2}$/i;

	if (oExpReg.test(sMatricula)==false) 
	{
		formAltaVeh.matVehiculo.classList.add('error');
		formAltaVeh.matVehiculo.focus();
		bValido = false;
		sError = 'Matricula incorrecta. Debe ser 4 numeros y 3 letras. Esta basado en el formato actual (Empezando por la letra B). Ejemplo : 2341KJD.<br>';
	}
	else
		formAltaVeh.matVehiculo.classList.remove('error');

	//campo marca
	var sMarca = formAltaVeh.marcaVehiculo.value.trim();
	formAltaVeh.marcaVehiculo.value = formAltaVeh.marcaVehiculo.value.trim();
	var oExpReg = /^\D{2,40}$/i;

	if (oExpReg.test(sMarca)==false) 
	{
		formAltaVeh.marcaVehiculo.classList.add('error');
		formAltaVeh.marcaVehiculo.focus();
		bValido = false;
		sError += 'Introduzca una marca.<br>';
	}
	else
		formAltaVeh.marcaVehiculo.classList.remove('error');

	//campo modelo
	var sModelo = formAltaVeh.modVehiculo.value.trim();
	formAltaVeh.modVehiculo.value = formAltaVeh.modVehiculo.value.trim();
	var oExpReg = /^[\w\s]{2,40}$/i;

	if (oExpReg.test(sModelo)==false) 
	{
		formAltaVeh.modVehiculo.classList.add('error');
		formAltaVeh.modVehiculo.focus();
		bValido = false;
		sError += 'Introduzca un modelo.<br>';
	}
	else
		formAltaVeh.modVehiculo.classList.remove('error');

	//campo tasasion
	var nTasasion = formAltaVeh.tasVehiculo.value.trim();
	formAltaVeh.tasVehiculo.value = formAltaVeh.tasVehiculo.value.trim();
	var oExpReg = /^\d{1,6}$/;

	if (oExpReg.test(nTasasion)==false) 
	{
		formAltaVeh.tasVehiculo.classList.add('error');
		formAltaVeh.tasVehiculo.focus();
		bValido = false;
		sError += 'Debe introducir una cantidad valida.<br>';
	}
	else
		formAltaVeh.tasVehiculo.classList.remove('error');

	//campo combustible
	var sCombustible = formAltaVeh.combVehiculo.value.trim();
	formAltaVeh.combVehiculo.value = formAltaVeh.combVehiculo.value.trim();
	var oExpReg = /(\W|^)(Diesel|Gasolina|diesel|gasolina|DIESEL|GASOLINA)(\W|$)/;

	if (oExpReg.test(sCombustible)==false) 
	{
		formAltaVeh.combVehiculo.classList.add('error');
		formAltaVeh.combVehiculo.focus();
		bValido = false;
		sError += 'El combustible solo puede ser Diesel o Gasolina.<br>';
	}
	else
		formAltaVeh.combVehiculo.classList.remove('error');

	//campo plazas
	var nPlazas = formAltaVeh.plazasVehiculo.value.trim();
	formAltaVeh.plazasVehiculo.value = formAltaVeh.plazasVehiculo.value.trim();
	var oExpReg = /^[2|4|5|7|8]$/;

	if (oExpReg.test(nPlazas)==false) 
	{
		formAltaVeh.plazasVehiculo.classList.add('error');
		formAltaVeh.plazasVehiculo.focus();
		bValido = false;
		sError += 'Los vehiculos pueden tener 2,4,5,6,7 o 8 plazas.<br>';
	}
	else
		formAltaVeh.plazasVehiculo.classList.remove('error');

	//campo input
	var inputs = formAltaVeh.querySelectorAll('input[type=radio]');
	var contador = 0;
	var tipo = '';
	for(var i = 0; i<inputs.length; i++)
	{
		if (inputs[i].checked)
		{
			contador++;
			if (inputs[i].value=='coche') 
				tipo='coche' ;
			else
				tipo='camion';
		}
	}

	if (contador==0) 
	{
		formAltaVeh.querySelector('.radio').classList.add('error');
		bValido=false;
		sError += 'Debe elegir un tipo de vehiculo.<br>';
	}
	else
	{
		formAltaVeh.querySelector('.radio').classList.remove('error');
		//vehiculo tipo coche
		if (tipo=='coche') 
		{
			//campo numero puertas
			var nPuertas = formAltaVeh.nPuertasCoche.value.trim();
			formAltaVeh.nPuertasCoche.value = formAltaVeh.nPuertasCoche.value.trim();
			var oExpReg = /^[3|5]$/;

			if (oExpReg.test(nPuertas)==false) 
			{
				formAltaVeh.nPuertasCoche.classList.add('error');
				formAltaVeh.nPuertasCoche.focus();
				bValido = false;
				sError += 'Los vehiculos pueden 3 o 5 puertas.<br>';
			}
			else
				formAltaVeh.nPuertasCoche.classList.remove('error');	

			//campo tapiceria 
			var sTapiceria = formAltaVeh.tapiceriaCoche.value.trim();
			formAltaVeh.tapiceriaCoche.value = formAltaVeh.tapiceriaCoche.value.trim();
			var oExpReg = /(\W|^)(Cuero|Tela|Vinilo|cuero|tela|vinilo|CUERO|TELA|VINILO)(\W|$)/;

			if (oExpReg.test(sTapiceria)==false) 
			{
				formAltaVeh.tapiceriaCoche.classList.add('error');
				formAltaVeh.tapiceriaCoche.focus();
				bValido = false;
				sError += 'La tapiceria puede ser cuero, tela y vinilo.<br>';
			}
			else
				formAltaVeh.tapiceriaCoche.classList.remove('error');


			//campo tipo coche 
			var sTipoCoche = formAltaVeh.tpCoche.value.trim();
			formAltaVeh.tpCoche.value = formAltaVeh.tpCoche.value.trim();
			var oExpReg = /(\W|^)(Turismo|Todoterreno|Monovolumen|Furgoneta|Berlina|turismo|todoterreno|monovolumen|furgoneta|berlina|TURISMO|TODOTERRENO|MONOVOLUMEN|FURGONETA|BERLINA)(\W|$)/;

			if (oExpReg.test(sTipoCoche)==false) 
			{
				formAltaVeh.tpCoche.classList.add('error');
				formAltaVeh.tpCoche.focus();
				bValido = false;
				sError += 'El tipo puede ser turismo, todoterreno, monovolumen, furgoneta y berlina.<br>';
			}
			else
				formAltaVeh.tpCoche.classList.remove('error');

		}

		//vehiculo tipo camion
		else
		{
			//campo carga maxima 
			var nCargaMax = formAltaVeh.cargaCamion.value.trim();
			formAltaVeh.cargaCamion.value = formAltaVeh.cargaCamion.value.trim();
			var oExpReg = /^\d{1,5}$/;

			if (oExpReg.test(nCargaMax)==false) 
			{
				formAltaVeh.cargaCamion.classList.add('error');
				formAltaVeh.cargaCamion.focus();
				bValido = false;
				sError += 'Debe introducir una cantidad.<br>';
			}
			else
				formAltaVeh.cargaCamion.classList.remove('error');

			//campo tipo carga 
			var sTipoCarga = formAltaVeh.tipoCargaCamion.value.trim();
			formAltaVeh.tipoCargaCamion.value = formAltaVeh.tipoCargaCamion.value.trim();
			var oExpReg = /(\W|^)(Valiosa|Refrigerada|Peligrosa|Granel|Remolque|valiosa|refrigerada|peligrosa|granel|remolque|VALIOSA|REFRIGERADA|PELIGROSA|GRANEL|REMOLQUE)(\W|$)/;

			if (oExpReg.test(sTipoCarga)==false) 
			{
				formAltaVeh.tipoCargaCamion.classList.add('error');
				formAltaVeh.tipoCargaCamion.focus();
				bValido = false;
				sError += 'La carga puede ser valiosa, refrigerada, peligrosa, granel o remolque.<br>';
			}
			else
				formAltaVeh.tipoCargaCamion.classList.remove('error');

			//campo capacidad combustible 
			var nCapComb = formAltaVeh.capCombCamion.value.trim();
			formAltaVeh.capCombCamion.value = formAltaVeh.capCombCamion.value.trim();
			var oExpReg = /(\d|^)(500|1000|1500)(\d|$)/;

			if (oExpReg.test(nCapComb)==false) 
			{
				formAltaVeh.capCombCamion.classList.add('error');
				formAltaVeh.capCombCamion.focus();
				bValido = false;
				sError += 'La capacidad del combustible puede ser de 500, 1000 y 1500.';
			}
			else
				formAltaVeh.capCombCamion.classList.remove('error');
		}
		
	}

	if (bValido == false) 
	{
		$("#mensaje").empty();
		$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'+sError+'</div>');
		
		return false;
	}
	else
		return true;		
}
