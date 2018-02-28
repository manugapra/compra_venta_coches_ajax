var cvCoches = new CVCoches();


$('#btnInicio').click(inicio);

function inicio()
{
	$("form").hide("normal");
	$("#mensaje").empty();
	$("#listas").empty();
}


$('#btnAltaProveedor').click(cargaAltaProveedor);

function cargaAltaProveedor()
{
	$("#formularios").empty();
	$("form:not('#formAltaProv')").hide("normal");
	$("<div>").appendTo('#formularios').load("altaProveedor/frmAltaProveedor.html",
	  function() {
		  $.getScript("altaProveedor/altaProveedor.js");
		  $('#formAltaProv').show("normal");
	  });
  
  $("#mensaje").empty();
}

$('#btnEditarProveedor').click(cargaEditarProveedor);

function cargaEditarProveedor()
{

	$("#formularios").empty();
	// Oculto todos los formularios menos este
    $("form:not('#formEditarProv')").hide("normal");

	$("<div>").appendTo('#formularios').load("editarProveedor/frmEditarProveedor.html",
	function() {
		$.getScript("editarProveedor/editarProveedor.js");
		$('#formEditarProv').show("normal");
	});

$("#mensaje").empty();

    
}

$('#btnEliminarProveedor').click(cargaEliminarProveedor);
function cargaEliminarProveedor()
{

	$("#formularios").empty();
	// Oculto todos los formularios menos este
    $("form:not('#formEliminarProv')").hide("normal");

	$("<div>").appendTo('#formularios').load("eliminarProveedor/frmEliminarProveedor.html",
	function() {
		$.getScript("eliminarProveedor/eliminarProveedor.js");
		$('#formEliminarProv').show("normal");
	});

$("#mensaje").empty();

    
}


$('#btnEliminarEmpleado').click(cargaEliminarEmpleado);
function cargaEliminarEmpleado()
{

	$("#formularios").empty();
	// Oculto todos los formularios menos este
    $("form:not('#formEliminarEmp')").hide("normal");

	$("<div>").appendTo('#formularios').load("eliminarEmpleado/frmEliminarEmpleado.html",
	function() {
		$.getScript("eliminarEmpleado/eliminarEmpleado.js");
		$('#formEliminarEmp').show("normal");
	});

$("#mensaje").empty();

    
}

$('#btnEliminarVehiculo').click(cargaEliminarVehiculo);
function cargaEliminarVehiculo()
{

	$("#formularios").empty();
	// Oculto todos los formularios menos este
    $("form:not('#formEliminarVeh')").hide("normal");

	$("<div>").appendTo('#formularios').load("eliminarVehiculo/frmEliminarVehiculo.html",
	function() {
		$.getScript("eliminarVehiculo/eliminarVehiculo.js");
		$('#formEliminarVeh').show("normal");
	});

$("#mensaje").empty();

    
}


$('#btnAltaEmpleado').click(cargaAltaEmpleado);

function cargaAltaEmpleado()
{
	$("#formularios").empty();
	// Oculto todos los formularios menos este
    $("form:not('#formAltaEmpleado')").hide("normal");

      	$("<div>").appendTo('#formularios').load("altaEmpleado/frmAltaEmpleado.html",
            function() {
				$.getScript("altaEmpleado/altaEmpleado.js");
				$('#formAltaEmpleado').show("normal");
            });
		
		$("#mensaje").empty();

  
}

$('#btnEditarEmpleado').click(cargaEditarEmpleado);

function cargaEditarEmpleado()
{	$("#formularios").empty();
	// Oculto todos los formularios menos este
    $("form:not('#formEditarEmp')").hide("normal");

 
    	$("<div>").appendTo('#formularios').load("editarEmpleado/frmEditarEmpleado.html",
            function() {
				$.getScript("editarEmpleado/editarEmpleado.js");
				$('#formEditarEmp').show("normal");
            });
		
		$('#mensaje').empty();

    
}

$('#btnAltaVehiculo').click(cargaAltaVehiculo);

function cargaAltaVehiculo()
{
	$("#formularios").empty();
	// Oculto todos los formularios menos este
    $("form:not('#formAltaVeh')").hide("normal");

   
    	$("<div>").appendTo('#formularios').load("altaVehiculo/frmAltaVehiculo.html",
            function() {
				$.getScript("altaVehiculo/altaVehiculo.js");
				$('#formAltaVeh').show("normal");
            });
		
		$("#mensaje").empty();

   

}

$('#btnEditarVehiculo').click(cargaEditarVehiculo);

function cargaEditarVehiculo()
{
	$("#formularios").empty();
	// Oculto todos los formularios menos este
    $("form:not('#formEditarVeh')").hide("normal");

   
    	$("<div>").appendTo('#formularios').load("editarVehiculo/frmEditarVehiculo.html",
            function() {
				$.getScript("editarVehiculo/editarVehiculo.js");
				$('#formEditarVeh').show("normal");
            });
		
		$('#mensaje').empty();

   
}


$('#btnAltaCliente').click(cargaAltaCliente);

function cargaAltaCliente()
{
	$("#formularios").empty();
	$("form:not('#formAltaClienteVenta')").hide("normal");
	//$("#formularios").empty();
      	$("<div>").appendTo('#formularios').load("altaCliente/frmAltaCliente.html",
            function() {
				$.getScript("altaCliente/altaCliente.js");
				$('#formAltaCli').show("normal");
            });
		
		$("#mensaje").empty();
}

$('#btnEditarCliente').click(cargaEditarCliente);

function cargaEditarCliente()
{
	$("#formularios").empty();
	$("form:not('#formEditarCli')").hide("normal");
	$("<div>").appendTo('#formularios').load("editarCliente/frmEditarCliente.html",
	  function() {
		  $.getScript("editarCliente/editarCliente.js");
		  $('#formEditarCli').show("normal");
	  });
  
  $("#mensaje").empty();
	

}

$('#btnRegistrarVenta').click(cargaRegistrarVenta);

function cargaRegistrarVenta()
{	
	$("#formularios").empty();
	// Oculto todos los formularios menos este
    $("form:not('#formRegVenta')").hide("normal");


    	$("<div>").appendTo('#formularios').load("registrarVenta/frmRegistrarVenta.html",
            function() {

				$.getScript("registrarVenta/registrarVenta.js");
				$('#formRegVenta').show("normal");
            });
		
		$("#mensaje").empty();

   

}

$('#btnEditarVenta').click(cargaEditarVenta);

function cargaEditarVenta()
{
	$("#formularios").empty();
	// Oculto todos los formularios menos este
    $("form:not('#formEditarVenta')").hide("normal");

  
    	$("<div>").appendTo('#formularios').load("editarVenta/frmEditarVenta.html",
            function() {
				$.getScript("editarVenta/editarVenta.js");
				$('#formEditarVenta').show("normal");
            });
		
		$('#mensaje').empty();

    
}



$('#btnRegistrarCompra').click(cargaRegistrarCompra);

function cargaRegistrarCompra()
{

	$("#formularios").empty();
	// Oculto todos los formularios menos este
    $("form:not('#formRegCompra')").hide("normal");

  
    	$("<div>").appendTo('#formularios').load("registrarCompra/frmRegistrarCompra.html",
            function() {
				$.getScript("registrarCompra/registrarCompra.js");
				$('#formRegCompra').show("normal");
				
            });
    	
		$('#mensaje').empty();

	
}

$('#btnEditarCompra').click(cargaEditarCompra);

function cargaEditarCompra()
{
	$("#formularios").empty();
	// Oculto todos los formularios menos este
    $("form:not('#formEditarCompra')").hide("normal");

  
    	$("<div>").appendTo('#formularios').load("editarCompra/frmEditarCompra.html",
            function() {
				$.getScript("editarCompra/editarCompra.js");
				$('#formEditarCompra').show("normal");
            });
		
		$('#mensaje').empty();

   
}

$('#btnRegistrarReparacion').click(cargaRegistrarReparacion);

function cargaRegistrarReparacion()
{
	$("#formularios").empty();
	// Oculto todos los formularios menos este
    $("form:not('#formRegReparacion')").hide("normal");

  
    	$("<div>").appendTo('#formularios').load("registrarReparacion/frmRegistrarReparacion.html",
            function() {
				$.getScript("registrarReparacion/registrarReparacion.js");
				$('#formRegReparacion').show("normal");
            });
			$('#mensaje').empty();

    

}

$('#btnEditarReparacion').click(cargaEditarReparacion);

function cargaEditarReparacion()
{
	$("#formularios").empty();
	// Oculto todos los formularios menos este
    $("form:not('#formEditarReparacion')").hide("normal");

       	$("<div>").appendTo('#formularios').load("editarReparacion/frmEditarReparacion.html",
            function() {
				$.getScript("editarReparacion/editarReparacion.js");
				$('#formEditarReparacion').show("normal");
            });
		
		$('#mensaje').empty();
}


//LISTADOS
$('#btnListarEmpleados').click(listadoEmpleados);

function listadoEmpleados()
{
	// Instanciar objeto Ajax
    var oAjax = instanciarXHR();

    // if (validarDatosConsulta()){ }
    /*var oDatos = {
        minimo: parseInt(frmConsultaAula.txtMinSillas.value.trim()),
        maximo: parseInt(frmConsultaAula.txtMaxSillas.value.trim())
    }*/

   // var sDatos = "datos=" + JSON.stringify(oDatos);

    //2. Configurar la llamada --> Asincrono por defecto
    //oAjax.open("GET", encodeURI("consultaaula.php?" + sDatos));
    oAjax.open("GET", encodeURI("php/getListadoEmpleados.php?"));

    //3. Asociar manejador de evento de la respuesta
    oAjax.addEventListener("readystatechange", procesoRespuestaConsulta, false);

    //4. Hacer la llamada
    oAjax.send(null);
}

function instanciarXHR() {
            var xhttp = null;

            if (window.XMLHttpRequest) {
                xhttp = new XMLHttpRequest();
            } else // code for IE5 and IE6
            {
                xhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }

            return xhttp;
}

function procesoRespuestaConsulta() {

    var oAjax = this;

    // 5. Proceso la respuesta cuando llega
    if (oAjax.readyState == 4 && oAjax.status == 200) {

        ///var sXML = oAjax.responseText;
        //alert(sXML);

        var oXML = oAjax.responseXML;

        crearTabla(oXML);

    }
}

function crearTabla(oXML) 
{

    var sTabla = '<table class="table">';
    sTabla += '<thead><tr>';
    sTabla += '<th>DNI</th><th>Nombre</th><th>Apellidos</th><th>Salario</th></tr></thead>';
    sTabla += '<tbody>';

    var oEmpleado = oXML.getElementsByTagName("empleado");

    for (i = 0; i < oEmpleado.length; i++) {

        sTabla += "<tr>";
        sTabla += "<td>" + oEmpleado[i].getElementsByTagName("dni")[0].textContent + "</td>";
        sTabla += "<td>" + oEmpleado[i].getElementsByTagName("nombre")[0].textContent + "</td>";
        sTabla += "<td>" + oEmpleado[i].getElementsByTagName("apellidos")[0].textContent + "</td>";
        sTabla += "<td>" + oEmpleado[i].getElementsByTagName("salario")[0].textContent + "</td>";
        sTabla += "</tr>";
    }

    sTabla += "</tbody></table>";

    $('#listas').html(sTabla);
}

$('#btnListarVehiculos').click(
	function(){
		$.get('php/getVehiculos.php',null,tratarListarVehiculos,'json');
	});

function tratarListarVehiculos(oVehiculos, sStatus, oXHR)
{
	$('#listas').empty();
	var sTabla= '<table class="table">';
	sTabla+= '<tr><th>Matricula</th><th>Marca</th><th>Modelo</th><th>Tasacion</th><th>Combustible</th><th>Plazas</th></tr>';
	$.each(oVehiculos,function(i,elemento){
		sTabla+='<tr><td>'+elemento.matricula+'</td><td>'+elemento.marca+'</td><td>'+elemento.modelo+'</td><td>'+elemento.tasacion+'</td><td>'+elemento.combustible+'</td><td>'+elemento.plazas+'</td></tr>';
	});
	 sTabla += '<table>';

	$('#listas').html(sTabla);
}


//BOTONES PARA MOSTRAR FORMULARIOS

/*var oBtnAltaProveedor= document.getElementById("btnAltaProveedor");
oBtnAltaProveedor.addEventListener("click",altaProveedor,false);*/

/*var oBtnAltaInicio= document.getElementById("btnInicio");
oBtnAltaInicio.addEventListener("click",ocultarFormularios,false);*/

/*var oBtnAltaEmpleado= document.getElementById("btnAltaEmpleado");
oBtnAltaEmpleado.addEventListener("click",altaEmpleado,false);*/

/*var oBtnAltaVehiculo= document.getElementById("btnAltaVehiculo");
oBtnAltaVehiculo.addEventListener("click",altaVehiculo,false);*/

/*var oBtnAltaCliente= document.getElementById("btnAltaCliente");
oBtnAltaCliente.addEventListener("click",altaCliente,false);*/

/*var oBtnRegCompra= document.getElementById("btnRegistrarCompra");
oBtnRegCompra.addEventListener("click",mostrarRegistrarCompra,false);*/

/*var oBtnRegVenta= document.getElementById("btnRegistrarVenta");
oBtnRegVenta.addEventListener("click",mostrarRegistrarVenta,false);*/

/*var oBtnRegRep= document.getElementById("btnRegistrarReparacion");
oBtnRegRep.addEventListener("click",mostrarRegistrarRep,false);*/

//BOTONES ALTAS DE LOS FORMULARIOS

/*var oBtnEnviarAltaProveedor = document.getElementById("btnEnviarAltaProveedor");
oBtnEnviarAltaProveedor.addEventListener("click", enviarAltaProveedor, false);*/

/*var oBtnEnviarAltaEmpleado = document.getElementById("btnEnviarAltaEmpleado");
oBtnEnviarAltaEmpleado.addEventListener("click", enviarAltaEmpleado, false);*/

/*var oBtnEnviarAltaVehiculo = document.getElementById("btnEnviarAltaVehiculo");
oBtnEnviarAltaVehiculo.addEventListener("click", enviarAltaVehiculo, false);*/

/*var oBtnEnviarAltaCliente = document.getElementById("btnEnviarAltaCliente");
oBtnEnviarAltaCliente.addEventListener("click", enviarAltaCliente, false);*/

/*var oBtnEnviarVenta = document.getElementById("btnEnviarVenta");
oBtnEnviarVenta.addEventListener("click", enviarVenta, false);*/

/*var oBtnEnviarCompra = document.getElementById("btnEnviarCompra");
oBtnEnviarCompra.addEventListener("click", enviarCompra, false);*/

/*var oBtnEnviarReparacion = document.getElementById("btnEnviarReparacion");
oBtnEnviarReparacion.addEventListener("click", enviarReparacion, false);*/



//BOTONES MOSTRAR LISTAS


var oBtnListarProv = document.getElementById("btnListarProveedores");
oBtnListarProv.addEventListener("click", mostrarListaProv, false);

var oBtnListarCli = document.getElementById("btnListarClientes");
oBtnListarCli.addEventListener("click", mostrarListaCli, false);

var oBtnListarVentas = document.getElementById("btnListarVentas");
oBtnListarVentas.addEventListener("click", mostrarListaVentas, false);

var oBtnListarCompras = document.getElementById("btnListarCompras");
oBtnListarCompras.addEventListener("click", mostrarListaCompras, false);

var oBtnListarReparaciones = document.getElementById("btnListarReparaciones");
oBtnListarReparaciones.addEventListener("click", mostrarListaReparaciones, false);

var oBtnListarVehiculos = document.getElementById("btnListarVehiculos");
oBtnListarVehiculos.addEventListener("click", mostrarListarVehiculos, false);

var oBtnListarEmple = document.getElementById("btnListarEmpleados");
oBtnListarEmple.addEventListener("click", mostrarListaEmple, false);

/*function altaProveedor(){
	
	inicio();
	var formAltaProv = document.getElementById("formAltaProv");
	formAltaProv.reset();
	formAltaProv.style.display = "block";
	var inputsAltaProv = formAltaProv.querySelectorAll('input');
	for (var i = 0; i<inputsAltaProv.length; i++)
		inputsAltaProv[i].classList.remove('error');	
	
}

function enviarAltaProveedor(){
	if (validarAltaProv()){
	var formAltaProv= document.getElementById("formAltaProv");
	var sMensaje = "";
		
	/*if(formAltaProv.cifProv.value=="" || formAltaProv.nomProv.value=="" || formAltaProv.dirProv.value=="" || 
		formAltaProv.telProv.value=="" || formAltaProv.tipoProv.value==""){
		sMensaje= "Debe Rellenar Todos los Campos.";				
	} else{*/
		/*var cifProv= formAltaProv.cifProv.value.trim();
		var nomProv= formAltaProv.nomProv.value.trim();
		var dirProv= formAltaProv.dirProv.value.trim();
		var telProv= formAltaProv.telProv.value.trim();
		//var tipoProv= formAltaProv.tipoProv.value.trim();
	/*	$.post("personas.php", {prueba: "funciona"},
		function (data,status){
			$("body").text(data);
		});*/

		//var oProveedor= new Proveedor(cifProv,nomProv,dirProv,telProv);
		/*$.post("php/alta.php", {m: "proveedor", c: cifProv, n: nomProv, d: dirProv, t: telProv },
			function (data,status){
				if(status=="success"){
					
					$("#mensaje").append(data);
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

}*/

/*function altaEmpleado(){
	
	inicio();
	var formAltaEmp = document.getElementById("formAltaEmpleado");
	formAltaEmp.reset();
	formAltaEmp.style.display = "block";
	var inputsAltaEmp = formAltaEmp.querySelectorAll('input');
	for (var i = 0; i<inputsAltaEmp.length; i++)
		inputsAltaEmp[i].classList.remove('error');
	
	
}

function enviarAltaEmpleado(){
	if(validarAltaEmpleado()){
		var formAltaEmpleado= document.getElementById("formAltaEmpleado");
		var sMensaje = "";
			
		/*if(formAltaEmpleado.dniEmp.value=="" || formAltaEmpleado.nomEmp.value=="" || formAltaEmpleado.apeEmp.value=="" || 
			formAltaEmpleado.ventasEmp.value=="" || formAltaEmpleado.salEmp.value==""){
			sMensaje= "Debe Rellenar Todos los Campos.";				
		} else{*/
			/*var dniEmp= formAltaEmpleado.dniEmp.value.trim();
			var nomEmp= formAltaEmpleado.nomEmp.value.trim();
			var apeEmp= formAltaEmpleado.apeEmp.value.trim();
			var salEmp= formAltaEmpleado.salEmp.value.trim();
			
			//var oEmpleado= new Empleado(dniEmp,nomEmp,apeEmp,salEmp);
			
			//sMensaje = cvCoches.altaEmpleado(oEmpleado);

			$.post("php/alta.php", {m: "empleado", d: dniEmp, n: nomEmp, a: apeEmp, s: salEmp },
			function (data,status){

				if(status=="success"){
					
					$("#mensaje").append(data);
				} else {
					$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Ha ocurrido un error de conexión</strong></div>')


				}
				
			});


	        //altaEmpleado();
		//}

		//alert(sMensaje);
		inicio();
	}

}*/

/*function altaVehiculo(){
	
	inicio();
	var formAltaVeh = document.getElementById("formAltaVeh");
	formAltaVeh.reset();
	formAltaVeh.style.display = "block";
	//formAltaVeh.btnEnviarAltaVehiculo.addEventListener('click',validarAltaVeh, false);
	var inputsAltaVeh = formAltaVeh.querySelectorAll('input');
	for (var i = 0; i<inputsAltaVeh.length; i++)
		inputsAltaVeh[i].classList.remove('error');
	formAltaVeh.querySelector('.radio').classList.remove('error');
	
}

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
			/*var matVehiculo = formAltaVeh.matVehiculo.value.trim();
			var marcaVehiculo = formAltaVeh.marcaVehiculo.value.trim();
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

				$.post("php/alta.php", {m: "coche", matricula: matVehiculo, marca: marcaVehiculo, modelo: modVehiculo, tasacion: tasVehiculo, combustible: combVehiculo, plazas: plazasVehiculo, puertas: nPuertasCoche, tapiceria: tapiceriaCoche, tipo: tpCoche,  tipoveh: tipoVehiculo},
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
				$.post("php/alta.php", {m: "camion", matricula: matVehiculo, marca: marcaVehiculo, modelo: modVehiculo, tasacion: tasVehiculo, combustible: combVehiculo, plazas: plazasVehiculo, carga: cargaCamion, tipo: tipoCargaCamion,  capacidad: capCombCamion, tipoveh: tipoVehiculo},
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


}*/

/*function altaCliente(){
	
	inicio();
	var formAltaCli = document.getElementById("formAltaCli");
	formAltaCli.reset();
	formAltaCli.style.display = "block";
	//formAltaCli.btnEnviarAltaCliente.addEventListener('click',validarAltaCli, false);
	var inputsAltaCli = formAltaCli.querySelectorAll('input');
	for (var i = 0; i<inputsAltaCli.length; i++)
		inputsAltaCli[i].classList.remove('error');
	
}

function enviarAltaCliente(){
if (validarAltaCli()) 
{

	var formAltaCli= document.getElementById("formAltaCli");
	var sMensaje = "";
		
	if(formAltaCli.dniCliente.value=="" || formAltaCli.nomCliente.value=="" || formAltaCli.apCliente.value=="" || 
		formAltaCli.telCliente.value==""){
		sMensaje= "Debe Rellenar Todos los Campos.";				
	} else{
		var dniCliente= formAltaCli.dniCliente.value.trim();
		var nomCliente= formAltaCli.nomCliente.value.trim();
		var apCliente= formAltaCli.apCliente.value.trim();
		var telCliente= formAltaCli.telCliente.value.trim();

		//console.log(dniCliente+' '+nomCliente+' '+apCliente+' '+telCliente);
		
		var oCliente = new Cliente(dniCliente,nomCliente,apCliente,telCliente);
		
		sMensaje = cvCoches.altaCliente(oCliente);
        //altaCliente();
	//}

	alert(sMensaje);
	inicio();
	}
}
*/
/*function mostrarRegistrarCompra(){
	inicio();
	var formRegCompra = document.getElementById("formRegCompra");

	formRegCompra.reset();
	rellenarCombosCompra();
	var inputsAltaReg = formRegCompra.querySelectorAll('input');
	for (var i = 0; i<inputsAltaReg.length; i++)
		inputsAltaReg[i].classList.remove('error');
	formRegCompra.style.display="block";

}

//-------FUNCION REGISTRAR COMPRA--------

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
		
	
}*/



/*function mostrarRegistrarVenta(){
	inicio();
	var formRegVenta = document.getElementById("formRegVenta");

	formRegVenta.reset();
	rellenarCombosVenta();
	var selectVentas = formRegVenta.querySelectorAll('select');
	for (var i=0; i<selectVentas.length; i++)
		selectVentas[i].classList.remove('error');
	var inputsAltaVenta = formRegVenta.querySelectorAll('input');
	for (var i = 0; i<inputsAltaVenta.length; i++)
		inputsAltaVenta[i].classList.remove('error');
	formRegVenta.style.display="block";
}




//-------FUNCION REGISTRAR VENTA-------

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
}*/

/*//-------FUNCION REGISTRAR REPARACION-------
function mostrarRegistrarRep()
{
	inicio();
	rellenarCombosReparacion();
	var formRegRep = document.getElementById("formRegReparacion");
	formRegReparacion.costeRepVehiculo.classList.remove('error');
	formRegRep.reset();
	formRegRep.style.display = "block";
}

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
}*/

//MOSTRAR LISTADOS
function mostrarListaProv(){
	inicio();
	var oDivListados = document.getElementById("listas");
	
	if (cvCoches._proveedores.length!==0){
	if ( oDivListados.hasChildNodes() ){
				while ( oDivListados.childNodes.length >= 1 ){
					oDivListados.removeChild( oDivListados.firstChild );
				}
	}
	oDivListados.style.display = "block";


	var tabla = document.createElement("table");
	tabla.setAttribute("border","1");
	tabla.setAttribute("id","tabla");
	tabla.setAttribute("class","table table-hover");
	
	var thCif = document.createElement("th");
	var thNom = document.createElement("th");
	var thDir = document.createElement("th");
	var thTel = document.createElement("th");
	
	



	var textnode = document.createTextNode("CIF");
	thCif.appendChild(textnode);
	tabla.appendChild(thCif);


	var textnode = document.createTextNode("Nombre");
	thNom.appendChild(textnode);
	tabla.appendChild(thNom);

	var textnode = document.createTextNode("Dirección");
	thDir.appendChild(textnode);
	tabla.appendChild(thDir);

	var textnode = document.createTextNode("Teléfono");
	thTel.appendChild(textnode);
	tabla.appendChild(thTel);



	for(var i=0;i<cvCoches._proveedores.length;i++){

	var tr = document.createElement("tr");
	var tdCif = document.createElement("td");
	var tdNom = document.createElement("td");
	var tdDir = document.createElement("td");
	var tdTel = document.createElement("td");
	
	textnode = document.createTextNode(cvCoches._proveedores[i].cif);
	tdCif.appendChild(textnode);
	
	textnode = document.createTextNode(cvCoches._proveedores[i].nombre);
	tdNom.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._proveedores[i].direccion);
	tdDir.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._proveedores[i].telefono);
	tdTel.appendChild(textnode);

	tr.appendChild(tdCif);
	tr.appendChild(tdNom);
	tr.appendChild(tdDir);
	tr.appendChild(tdTel);
	
	tabla.appendChild(tr);
	
	}
	oDivListados.appendChild(tabla);
	}
	else {
		if ( oDivListados.hasChildNodes() ){
				while ( oDivListados.childNodes.length >= 1 ){
					oDivListados.removeChild( oDivListados.firstChild );
				}
			}
			var p = document.createElement("p");
			p.setAttribute("id","mError")
			var textnode = document.createTextNode("No hay datos disponibles");
			p.appendChild(textnode);
			oDivListados.appendChild(p);
			oDivListados.style.display = "block";
		

	}


}

function mostrarListaCli(){
	inicio();
	var oDivListados = document.getElementById("listas");
	
	if (cvCoches._clientes.length!==0){
		
	if ( oDivListados.hasChildNodes() ){
				while ( oDivListados.childNodes.length >= 1 ){
					oDivListados.removeChild( oDivListados.firstChild );
				}
			}
	oDivListados.style.display = "block";
	//oDivListados.innerHTML = cvCoches._proveedores[0].toHTMLRow();

	var tabla = document.createElement("table");
	tabla.setAttribute("border","1");
	
	tabla.setAttribute("id","tabla");
	tabla.setAttribute("class","table table-hover");
	
	var thDni = document.createElement("th");
	var thNom = document.createElement("th");
	var thTel = document.createElement("th");
	
	



	var textnode = document.createTextNode("DNI");
	thDni.appendChild(textnode);
	tabla.appendChild(thDni);


	var textnode = document.createTextNode("Nombre");
	thNom.appendChild(textnode);
	tabla.appendChild(thNom);

	var textnode = document.createTextNode("Teléfono");
	thTel.appendChild(textnode);
	tabla.appendChild(thTel);



	for(var i=0;i<cvCoches._clientes.length;i++){

	var tr = document.createElement("tr");
	var tdDni = document.createElement("td");
	var tdNom = document.createElement("td");
	var tdTel = document.createElement("td");
	
	textnode = document.createTextNode(cvCoches._clientes[i].dni);
	tdDni.appendChild(textnode);
	
	textnode = document.createTextNode(cvCoches._clientes[i].nombre+' '+cvCoches._clientes[i].apellidos);
	tdNom.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._clientes[i].telefono);
	tdTel.appendChild(textnode);

	tr.appendChild(tdDni);
	tr.appendChild(tdNom);
	tr.appendChild(tdTel);
	
	tabla.appendChild(tr);
	
	}
	oDivListados.appendChild(tabla);
	}
	else {
		
		
			if ( oDivListados.hasChildNodes() ){
				while ( oDivListados.childNodes.length >= 1 ){
					oDivListados.removeChild( oDivListados.firstChild );
				}
			}
		
			var p = document.createElement("p");
			p.setAttribute("id","mError")
			var textnode = document.createTextNode("No hay datos disponibles");
			p.appendChild(textnode);
			oDivListados.appendChild(p);
			oDivListados.style.display = "block";
		

	}

}

function mostrarListaVentas(){
	inicio();
	var oDivListados = document.getElementById("listas");
	
	if (cvCoches._ventas.length!==0){
		
	if ( oDivListados.hasChildNodes() ){
				while ( oDivListados.childNodes.length >= 1 ){
					oDivListados.removeChild( oDivListados.firstChild );
				}
			}
	oDivListados.style.display = "block";
	//oDivListados.innerHTML = cvCoches._proveedores[0].toHTMLRow();

	var tabla = document.createElement("table");
	tabla.setAttribute("border","1");
	
	tabla.setAttribute("id","tabla");
	tabla.setAttribute("class","table table-hover");
	
	var thVeh = document.createElement("th");
	var thCli = document.createElement("th");
	var thEmp = document.createElement("th");
	var thObs = document.createElement("th");
	



	var textnode = document.createTextNode("Vehiculo");
	thVeh.appendChild(textnode);
	tabla.appendChild(thVeh);


	var textnode = document.createTextNode("Cliente");
	thCli.appendChild(textnode);
	tabla.appendChild(thCli);

	var textnode = document.createTextNode("Empleado");
	thEmp.appendChild(textnode);
	tabla.appendChild(thEmp);

	var textnode = document.createTextNode("Observaciones");
	thObs.appendChild(textnode);
	tabla.appendChild(thObs);



	for(var i=0;i<cvCoches._ventas.length;i++){

	var tr = document.createElement("tr");
	var tdVeh = document.createElement("td");
	var tdCli = document.createElement("td");
	var tdEmp = document.createElement("td");
	var tdObs = document.createElement("td");

	/*textnode = document.createTextNode(cvCoches._ventas[i].oVehiculo.matricula+' - '+cvCoches._ventas[i].oVehiculo.marca+' '+cvCoches._ventas[i].oVehiculo.modelo);
	tdVeh.appendChild(textnode);
	
	textnode = document.createTextNode(cvCoches._ventas[i].oCliente.dni+' - '+cvCoches._ventas[i].oCliente.nombre+' '+cvCoches._ventas[i].oCliente.apellidos);
	tdCli.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._ventas[i].oEmpleado.dni+ ' - '+cvCoches._ventas[i].oEmpleado.nombre+' '+cvCoches._ventas[i].oEmpleado.apellidos);
	tdEmp.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._ventas[i].comentarios);
	tdObs.appendChild(textnode);*/

	textnode = document.createTextNode(cvCoches._ventas[i].oVehiculo);
	tdVeh.appendChild(textnode);
	
	textnode = document.createTextNode(cvCoches._ventas[i].oCliente);
	tdCli.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._ventas[i].oEmpleado);
	tdEmp.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._ventas[i].comentarios);
	tdObs.appendChild(textnode);

	tr.appendChild(tdVeh);
	tr.appendChild(tdCli);
	tr.appendChild(tdEmp);
	tr.appendChild(tdObs);
	
	tabla.appendChild(tr);
	
	}
	oDivListados.appendChild(tabla);
	}
	else {
		
		
			if ( oDivListados.hasChildNodes() ){
				while ( oDivListados.childNodes.length >= 1 ){
					oDivListados.removeChild( oDivListados.firstChild );
				}
			}
		
			var p = document.createElement("p");
			p.setAttribute("id","mError")
			var textnode = document.createTextNode("No hay datos disponibles");
			p.appendChild(textnode);
			oDivListados.appendChild(p);
			oDivListados.style.display = "block";
		

	}

}

function mostrarListaCompras()
{
	inicio();
	var oDivListados = document.getElementById("listas");
	
	if (cvCoches._compras.length!==0){
		
	if ( oDivListados.hasChildNodes() ){
				while ( oDivListados.childNodes.length >= 1 ){
					oDivListados.removeChild( oDivListados.firstChild );
				}
			}
	oDivListados.style.display = "block";
	//oDivListados.innerHTML = cvCoches._proveedores[0].toHTMLRow();

	var tabla = document.createElement("table");
	tabla.setAttribute("border","1");
	
	tabla.setAttribute("id","tabla");
	tabla.setAttribute("class","table table-hover");
	
	var thVeh = document.createElement("th");
	var thImp = document.createElement("th");
	var thEmp = document.createElement("th");
	var thFech = document.createElement("th");
	var thPro = document.createElement("th");
	var thObs = document.createElement("th");
	



	var textnode = document.createTextNode("Vehiculo");
	thVeh.appendChild(textnode);
	tabla.appendChild(thVeh);


	var textnode = document.createTextNode("Importe");
	thImp.appendChild(textnode);
	tabla.appendChild(thImp);

	var textnode = document.createTextNode("Fecha");
	thFech.appendChild(textnode);
	tabla.appendChild(thFech);

	var textnode = document.createTextNode("Proveedor");
	thPro.appendChild(textnode);
	tabla.appendChild(thPro);

	var textnode = document.createTextNode("Empleado");
	thEmp.appendChild(textnode);
	tabla.appendChild(thEmp);

	var textnode = document.createTextNode("Observaciones");
	thObs.appendChild(textnode);
	tabla.appendChild(thObs);



	for(var i=0;i<cvCoches._compras.length;i++){

	var tr = document.createElement("tr");
	var tdVeh = document.createElement("td");
	var tdImp = document.createElement("td");
	var tdFech = document.createElement("td");
	var tdPro = document.createElement("td");
	var tdEmp = document.createElement("td");
	var tdObs = document.createElement("td");

	/*textnode = document.createTextNode(cvCoches._ventas[i].oVehiculo.matricula+' - '+cvCoches._ventas[i].oVehiculo.marca+' '+cvCoches._ventas[i].oVehiculo.modelo);
	tdVeh.appendChild(textnode);
	
	textnode = document.createTextNode(cvCoches._ventas[i].oCliente.dni+' - '+cvCoches._ventas[i].oCliente.nombre+' '+cvCoches._ventas[i].oCliente.apellidos);
	tdCli.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._ventas[i].oEmpleado.dni+ ' - '+cvCoches._ventas[i].oEmpleado.nombre+' '+cvCoches._ventas[i].oEmpleado.apellidos);
	tdEmp.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._ventas[i].comentarios);
	tdObs.appendChild(textnode);*/

	textnode = document.createTextNode(cvCoches._compras[i].oVehiculo);
	tdVeh.appendChild(textnode);
	
	textnode = document.createTextNode(cvCoches._compras[i].importe);
	tdImp.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._compras[i].fecha);
	tdFech.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._compras[i].oProveedor);
	tdPro.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._compras[i].oEmpleado);
	tdEmp.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._compras[i].comentarios);
	tdObs.appendChild(textnode);

	tr.appendChild(tdVeh);
	tr.appendChild(tdImp);
	tr.appendChild(tdFech);
	tr.appendChild(tdPro);
	tr.appendChild(tdEmp);
	tr.appendChild(tdObs);
	
	tabla.appendChild(tr);
	
	}
	oDivListados.appendChild(tabla);
	}
	else {
		
		
			if ( oDivListados.hasChildNodes() ){
				while ( oDivListados.childNodes.length >= 1 ){
					oDivListados.removeChild( oDivListados.firstChild );
				}
			}
		
			var p = document.createElement("p");
			p.setAttribute("id","mError")
			var textnode = document.createTextNode("No hay datos disponibles");
			p.appendChild(textnode);
			oDivListados.appendChild(p);
			oDivListados.style.display = "block";
		

	}
}

function mostrarListaReparaciones()
{
	inicio();
	var oDivListados = document.getElementById("listas");
	
	if (cvCoches._reparaciones.length!==0){
		
	if ( oDivListados.hasChildNodes() ){
				while ( oDivListados.childNodes.length >= 1 ){
					oDivListados.removeChild( oDivListados.firstChild );
				}
			}
	oDivListados.style.display = "block";
	//oDivListados.innerHTML = cvCoches._proveedores[0].toHTMLRow();

	var tabla = document.createElement("table");
	tabla.setAttribute("border","1");
	
	tabla.setAttribute("id","tabla");
	tabla.setAttribute("class","table table-hover");
	
	var thVeh = document.createElement("th");
	var thObs = document.createElement("th");
	var thCost = document.createElement("th");

	var textnode = document.createTextNode("Vehiculo");
	thVeh.appendChild(textnode);
	tabla.appendChild(thVeh);

	var textnode = document.createTextNode("Observaciones");
	thObs.appendChild(textnode);
	tabla.appendChild(thObs);

	var textnode = document.createTextNode("Coste");
	thCost.appendChild(textnode);
	tabla.appendChild(thCost);



	for(var i=0;i<cvCoches._reparaciones.length;i++){

	var tr = document.createElement("tr");
	var tdVeh = document.createElement("td");
	var tdObs = document.createElement("td");
	var tdCost = document.createElement("td");

	/*textnode = document.createTextNode(cvCoches._ventas[i].oVehiculo.matricula+' - '+cvCoches._ventas[i].oVehiculo.marca+' '+cvCoches._ventas[i].oVehiculo.modelo);
	tdVeh.appendChild(textnode);
	
	textnode = document.createTextNode(cvCoches._ventas[i].oCliente.dni+' - '+cvCoches._ventas[i].oCliente.nombre+' '+cvCoches._ventas[i].oCliente.apellidos);
	tdCli.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._ventas[i].oEmpleado.dni+ ' - '+cvCoches._ventas[i].oEmpleado.nombre+' '+cvCoches._ventas[i].oEmpleado.apellidos);
	tdEmp.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._ventas[i].comentarios);
	tdObs.appendChild(textnode);*/

	textnode = document.createTextNode(cvCoches._reparaciones[i].selectVeh);
	tdVeh.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._reparaciones[i].descVeh);
	tdObs.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._reparaciones[i].nCoste);
	tdCost.appendChild(textnode);

	tr.appendChild(tdVeh);
	tr.appendChild(tdObs);
	tr.appendChild(tdCost);
	
	tabla.appendChild(tr);
	
	}
	oDivListados.appendChild(tabla);
	}
	else {
		
		
			if ( oDivListados.hasChildNodes() ){
				while ( oDivListados.childNodes.length >= 1 ){
					oDivListados.removeChild( oDivListados.firstChild );
				}
			}
		
			var p = document.createElement("p");
			p.setAttribute("id","mError")
			var textnode = document.createTextNode("No hay datos disponibles");
			p.appendChild(textnode);
			oDivListados.appendChild(p);
			oDivListados.style.display = "block";
		

	}
}

function mostrarListarVehiculos()
{
	inicio();
	var oDivListados = document.getElementById("listas");
	
	if (cvCoches._vehiculos.length!==0){
		
	if ( oDivListados.hasChildNodes() ){
				while ( oDivListados.childNodes.length >= 1 ){
					oDivListados.removeChild( oDivListados.firstChild );
				}
			}
	oDivListados.style.display = "block";
	//oDivListados.innerHTML = cvCoches._proveedores[0].toHTMLRow();

	var tabla = document.createElement("table");
	tabla.setAttribute("border","1");
	
	tabla.setAttribute("id","tabla");
	tabla.setAttribute("class","table table-hover");
	
	var thMat = document.createElement("th");
	var thMar = document.createElement("th");
	var thMod = document.createElement("th");
	var thTas = document.createElement("th");
	var thComb = document.createElement("th");
	var thPla = document.createElement("th");
	var thTip = document.createElement("th");

	var textnode = document.createTextNode("Matricula");
	thMat.appendChild(textnode);
	tabla.appendChild(thMat);

	var textnode = document.createTextNode("Marca");
	thMar.appendChild(textnode);
	tabla.appendChild(thMar);

	var textnode = document.createTextNode("Modelo");
	thMod.appendChild(textnode);
	tabla.appendChild(thMod);

	var textnode = document.createTextNode("Tasación");
	thTas.appendChild(textnode);
	tabla.appendChild(thTas);

	var textnode = document.createTextNode("Combustible");
	thComb.appendChild(textnode);
	tabla.appendChild(thComb);

	var textnode = document.createTextNode("Plazas");
	thPla.appendChild(textnode);
	tabla.appendChild(thPla);

	var textnode = document.createTextNode("Tipo");
	thTip.appendChild(textnode);
	tabla.appendChild(thTip);



	for(var i=0;i<cvCoches._vehiculos.length;i++){

	var tr = document.createElement("tr");
	var tdMat = document.createElement("td");
	var tdMar = document.createElement("td");
	var tdMod = document.createElement("td");
	var tdTas = document.createElement("td");
	var tdComb= document.createElement("td");
	var tdPla = document.createElement("td");
	var tdTip = document.createElement("td");

	/*textnode = document.createTextNode(cvCoches._ventas[i].oVehiculo.matricula+' - '+cvCoches._ventas[i].oVehiculo.marca+' '+cvCoches._ventas[i].oVehiculo.modelo);
	tdVeh.appendChild(textnode);
	
	textnode = document.createTextNode(cvCoches._ventas[i].oCliente.dni+' - '+cvCoches._ventas[i].oCliente.nombre+' '+cvCoches._ventas[i].oCliente.apellidos);
	tdCli.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._ventas[i].oEmpleado.dni+ ' - '+cvCoches._ventas[i].oEmpleado.nombre+' '+cvCoches._ventas[i].oEmpleado.apellidos);
	tdEmp.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._ventas[i].comentarios);
	tdObs.appendChild(textnode);*/

	textnode = document.createTextNode(cvCoches._vehiculos[i].matricula);
	tdMat.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._vehiculos[i].marca);
	tdMar.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._vehiculos[i].modelo);
	tdMod.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._vehiculos[i].tasacion);
	tdTas.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._vehiculos[i].combustible);
	tdComb.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._vehiculos[i].plazas);
	tdPla.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._vehiculos[i].tipoVehiculo);
	tdTip.appendChild(textnode);

	tr.appendChild(tdMat);
	tr.appendChild(tdMar);
	tr.appendChild(tdMod);
	tr.appendChild(tdTas);
	tr.appendChild(tdComb);
	tr.appendChild(tdPla);
	tr.appendChild(tdTip);

	tabla.appendChild(tr);
	
	}
	oDivListados.appendChild(tabla);
	}
	else {
		
		
			if ( oDivListados.hasChildNodes() ){
				while ( oDivListados.childNodes.length >= 1 ){
					oDivListados.removeChild( oDivListados.firstChild );
				}
			}
		
			var p = document.createElement("p");
			p.setAttribute("id","mError")
			var textnode = document.createTextNode("No hay datos disponibles");
			p.appendChild(textnode);
			oDivListados.appendChild(p);
			oDivListados.style.display = "block";
		

	}
}


function mostrarListaEmple(){
	inicio();
	var oDivListados = document.getElementById("listas");
	
	if (cvCoches._empleados.length!==0){
	if ( oDivListados.hasChildNodes() ){
				while ( oDivListados.childNodes.length >= 1 ){
					oDivListados.removeChild( oDivListados.firstChild );
				}
	}
	oDivListados.style.display = "block";


	var tabla = document.createElement("table");
	tabla.setAttribute("border","1");
	tabla.setAttribute("id","tabla");
	tabla.setAttribute("class","table table-hover");
	
	var thDni = document.createElement("th");
	var thNom = document.createElement("th");
	var thApe = document.createElement("th");
	var thSal = document.createElement("th");


	var textnode = document.createTextNode("DNI");
	thDni.appendChild(textnode);
	tabla.appendChild(thDni);


	var textnode = document.createTextNode("Nombre");
	thNom.appendChild(textnode);
	tabla.appendChild(thNom);

	var textnode = document.createTextNode("Apellidos");
	thApe.appendChild(textnode);
	tabla.appendChild(thApe);

	var textnode = document.createTextNode("Salario");
	thSal.appendChild(textnode);
	tabla.appendChild(thSal);


	for(var i=0;i<cvCoches._empleados.length;i++){

	var tr = document.createElement("tr");
	var tdDni = document.createElement("td");
	var tdNom = document.createElement("td");
	var tdApe = document.createElement("td");
	var tdSal = document.createElement("td");
	
	textnode = document.createTextNode(cvCoches._empleados[i].dni);
	tdDni.appendChild(textnode);
	
	textnode = document.createTextNode(cvCoches._empleados[i].nombre);
	tdNom.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._empleados[i].apellidos);
	tdApe.appendChild(textnode);

	textnode = document.createTextNode(cvCoches._empleados[i].salario);
	tdSal.appendChild(textnode);

	tr.appendChild(tdDni);
	tr.appendChild(tdNom);
	tr.appendChild(tdApe);
	tr.appendChild(tdSal);
	
	tabla.appendChild(tr);
	
	}
	oDivListados.appendChild(tabla);
	}
	else {
		if ( oDivListados.hasChildNodes() ){
				while ( oDivListados.childNodes.length >= 1 ){
					oDivListados.removeChild( oDivListados.firstChild );
				}
			}
			var p = document.createElement("p");
			p.setAttribute("id","mError")
			var textnode = document.createTextNode("No hay datos disponibles");
			p.appendChild(textnode);
			oDivListados.appendChild(p);
			oDivListados.style.display = "block";
		

	}


}



//OCULTAR FORMULARIOS

/*function inicio(){
	$("#mensaje").empty(); 
	document.getElementById("formAltaProv").style.display = "none";
	document.getElementById("formAltaEmpleado").style.display = "none";
	document.getElementById("formAltaVeh").style.display = "none";
	document.getElementById("formAltaCli").style.display = "none";
	document.getElementById("formRegCompra").style.display = "none";
	document.getElementById("formRegVenta").style.display = "none";
	document.getElementById("formRegReparacion").style.display = "none";
	//Ocultar listas
	document.getElementById("listas").style.display = "none";
	
}*/

/*var oBtnTipoCoche= document.getElementById("radioCoche");
oBtnTipoCoche.addEventListener("click",mostrarTipoCoche,false);

var oBtnTipoCamion= document.getElementById("radioCamion");
oBtnTipoCamion.addEventListener("click",mostrarTipoCamion,false);*/

function mostrarTipoCoche(){
	document.getElementById("tipoCamion").style.display = "none";
	document.getElementById("tipoCoche").style.display = "block";

}

function mostrarTipoCamion(){
	document.getElementById("tipoCoche").style.display = "none";
	document.getElementById("tipoCamion").style.display = "block";

}

//FUNCIONES PARA RELLENAR COMBOS
var aProveedores;
var aEmpleados;
var aVehiculos;

var existeProv;
var existeEmp;
var existeVeh;

function rellenarCombosCompra(){
	

	//Combo proveedores

	$.ajax({
		url: './php/getProveedores.php',
		type: 'POST', 
		dataType: 'json',
	})
	.done(function(data) {
		
		console.log(data);
		aProveedores=data;
		existeProv=true;
		
		
	})
	.fail(function() {
		console.log("error");
		existeProv=false;
	});
	
	
	console.log(existeProv);
	if (!existeProv){
		$("#selectCompraProv").empty();
		$("#selectCompraProv").append("<option>No hay proveedores dados de alta</option>");
		
	} else {
		$("#selectCompraProv").empty();
		for (var i=0;i<aProveedores.length;i++){
			var datoProv = aProveedores[i].toString().split(",");
			
			$("#selectCompraProv").append('<option value="'+datoProv[0]+'">'+datoProv[0]+' - '+datoProv[1]+'</option>');
		
		}
	}
	
	//Combo empleados

	$.ajax({
		url: './registrarCompra/rellenaCombos.php?c=emp',
		type: 'POST', 
		dataType: 'json',
	})
	.done(function(data) {
		
	//	console.log(data);
		aEmpleados=data;
		existeEmp=true;
		
		
	})
	.fail(function() {
		
	existeEmp=false;
	});


;
	if (!existeEmp){
		$("#selectCompraEmp").empty();
		$("#selectCompraEmp").append("<option>No hay proveedores dados de alta</option>");

	} else {

		$("#selectCompraEmp").empty();
		for (var i=0;i<aEmpleados.length;i++){
			var datoProv = aEmpleados[i].toString().split(",");
			
			$("#selectCompraEmp").append('<option value="'+datoProv[0]+'">'+datoProv[0]+' - '+datoProv[1]+' '+datoProv[2]+'</option>');
		
		}
	}
	

}

function rellenarCombosVenta(){
	var formRegVenta = document.getElementById("formRegVenta");

	//Combo clientes
	if (cvCoches._clientes.length==0){
		for (var k=0;k<formRegVenta.selectVentaCliente.length;k++){
			formRegVenta.selectVentaCliente.remove(k);
		}
		var optionProv = document.createElement("option");
		var textnode = document.createTextNode("No hay clientes dados de alta");
		optionProv.appendChild(textnode);
		optionProv = formRegVenta.selectVentaCliente.appendChild(optionProv);
		//formRegRep.appendChild(option);
		//formRegRep.selectCompraProv.innerHTML = '<option>No hay proveedores dados de alta</option>';
	} else {
		for (var k=0;k<formRegVenta.selectVentaCliente.length;k++){
			formRegVenta.selectVentaCliente.remove(k);
		}
		for (var i=0;i<cvCoches._clientes.length;i++){
			var optionProv = document.createElement("option");
			optionProv.setAttribute("value",cvCoches._clientes[i].dni)
			optionProv.setAttribute("id","comboProv")
			var textnode = document.createTextNode( cvCoches._clientes[i].dni+' - '+cvCoches._clientes[i].nombre+' '+cvCoches._clientes[i].apellidos);
			optionProv.appendChild(textnode);
			optionProv = formRegVenta.selectVentaCliente.appendChild(optionProv);
		
		}
	}


	//Combo empleados
	var selectVentaEmp = document.getElementById("selectVentaEmp");
	if (cvCoches._empleados.length==0){
		for (var k=0;k<selectVentaEmp.length;k++){
			selectVentaEmp.remove(k);
		}
		var optionEmp = document.createElement("option");
		var textnode = document.createTextNode("No hay empleados dados de alta");
		optionEmp.appendChild(textnode);
		optionEmp = selectVentaEmp.appendChild(optionEmp);

	} else {

		for (var k=0;k<selectVentaEmp.length;k++){
			selectVentaEmp.remove(k);
		}

		
		for (var i=0;i<cvCoches._empleados.length;i++){
			

			var optionEmp = document.createElement("option");
			optionEmp.setAttribute("value",cvCoches._empleados[i].dni)
			optionEmp.setAttribute("id","comboEmp")
			var textnode = document.createTextNode(cvCoches._empleados[i].dni+' - '+cvCoches._empleados[i].nombre+' '+cvCoches._empleados[i].apellidos);
			optionEmp.appendChild(textnode);
			optionEmp = selectVentaEmp.appendChild(optionEmp);



		
		}
	}

	//Combo Vehiculo
	if (cvCoches._vehiculos.length==0){

		for (var k=0;k<formRegVenta.selectVentaVehiculo.length;k++){
			formRegVenta.selectVentaVehiculo.remove(k);
		}
		var optionVeh = document.createElement("option");
		var textnode = document.createTextNode("No hay vehiculos dados de alta");
		optionVeh.appendChild(textnode);
		optionVeh = formRegVenta.selectVentaVehiculo.appendChild(optionVeh);


		
	} else {
		/*for (var k=0;k<selectVentaVehiculo.length;k++){
			selectVentaVehiculo.remove(k);
		}*/

		if ( formRegVenta.selectVentaVehiculo.hasChildNodes() )
		{
			while ( formRegVenta.selectVentaVehiculo.childNodes.length >= 1 ){
					formRegVenta.selectVentaVehiculo.removeChild( formRegVenta.selectVentaVehiculo.firstChild );
				}
		}

		
		for (var i=0;i<cvCoches._vehiculos.length;i++){

			var optionVeh = document.createElement("option");
			optionVeh.setAttribute("value",cvCoches._vehiculos[i].matricula)
			optionVeh.setAttribute("id","comboVeh")
			var textnode = document.createTextNode(cvCoches._vehiculos[i].matricula+' - '+cvCoches._vehiculos[i].marca+' '+cvCoches._vehiculos[i].modelo);
			optionVeh.appendChild(textnode);
			optionVeh = formRegVenta.selectVentaVehiculo.appendChild(optionVeh);

		
		}
	}	
}

function rellenarCombosReparacion(){
	var formRegRep = document.getElementById("formRegReparacion");

		if (cvCoches._vehiculos.length==0){

		for (var k=0;k<formRegRep.selectRepVehiculo.length;k++){
			formRegRep.selectRepVehiculo.remove(k);
		}
		var optionVeh = document.createElement("option");
		var textnode = document.createTextNode("No hay vehiculos dados de alta");
		optionVeh.appendChild(textnode);
		optionVeh = formRegRep.selectRepVehiculo.appendChild(optionVeh);


		
	} else {
		/*for (var k=0;k<selectCompraVehiculo.length;k++){
			selectCompraVehiculo.remove(k);
		}*/

		if ( formRegReparacion.selectRepVehiculo.hasChildNodes() )
		{
			while ( formRegReparacion.selectRepVehiculo.childNodes.length >= 1 ){
					formRegReparacion.selectRepVehiculo.removeChild( formRegReparacion.selectRepVehiculo.firstChild );
				}
		}

		
		for (var i=0;i<cvCoches._vehiculos.length;i++){

			var optionVeh = document.createElement("option");
			optionVeh.setAttribute("value",cvCoches._vehiculos[i].matricula)
			optionVeh.setAttribute("id","comboVeh")
			var textnode = document.createTextNode(cvCoches._vehiculos[i].matricula+' - '+cvCoches._vehiculos[i].marca+' '+cvCoches._vehiculos[i].modelo);
			optionVeh.appendChild(textnode);
			optionVeh = formRegRep.selectRepVehiculo.appendChild(optionVeh);

		
		}
	}	
}




//--------------VALIDACION----------------------

//validacion formulario alta proveedor
/*function validarAltaProv()
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
		sError += "El telefono tiene que empezar por 6 o 7 y tiene que tener 9 cifras. <br>"; 
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
}*/

//validacion formulario alta empleado
/*function validarAltaEmpleado(oEvento)
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
}*/

//validacion formulario alta coche
/*function validarAltaVeh(oEvento)
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
		sError = 'Matricula incorrecta. Debe ser 4 numeros y 3 letras. Esta basado en el formato actual (Empezando por la letra B). Ejemplo : 2341KJD \n';
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
		sError += 'Introduzca una marca \n';
	}
	else
		formAltaVeh.marcaVehiculo.classList.remove('error');

	//campo modelo
	var sModelo = formAltaVeh.modVehiculo.value.trim();
	formAltaVeh.modVehiculo.value = formAltaVeh.modVehiculo.value.trim();
	var oExpReg = /^\w{2,40}$/i;

	if (oExpReg.test(sModelo)==false) 
	{
		formAltaVeh.modVehiculo.classList.add('error');
		formAltaVeh.modVehiculo.focus();
		bValido = false;
		sError += 'Introduzca un modelo \n';
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
		sError += 'Debe introducir una cantidad valida \n';
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
		sError += 'El combustible solo puede ser Diesel o Gasolina \n';
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
		sError += 'Los vehiculos pueden tener 2,4,5,6,7 o 8 plazas \n';
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
		sError += 'Debe elegir un tipo de vehiculo \n';
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
				sError += 'Los vehiculos pueden 3 o 5 puertas \n';
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
				sError += 'La tapiceria puede ser cuero, tela y vinilo \n';
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
				sError += 'El tipo puede ser turismo, todoterreno, monovolumen, furgoneta y berlina \n';
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
				sError += 'Debe introducir una cantidad \n';
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
				sError += 'La carga puede ser valiosa, refrigerada, peligrosa, granel o remolque \n';
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
				sError += 'La capacidad del combustible puede ser de 500, 1000 y 1500 \n';
			}
			else
				formAltaVeh.capCombCamion.classList.remove('error');
		}
		
	}

	if (bValido == false) 
	{
		alert(sError);
		//oE.preventDefault();
		return false;
	}
	else
		return true;		
}*/

 /*function validarAltaCli(oEvento)
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
		sError = 'El DNI tiene que tener 8 cifras y una letra \n';
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
		sError += 'Escriba un nombre \n';
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
		sError += 'Escriba los apellidos \n';
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
		sError += 'El telefono tiene que tener 9 digitos y debe empezar por 6 o 7 \n';
	}
	else
		formAltaCli.telCliente.classList.remove('error');


	if (bValido == false) 
	{
		alert(sError);
		//oE.preventDefault();
		return false;
	}
	else
		return true;	
 }*/

/*function validarCompra(oEvento)
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
}*/

/*function validarVenta()
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
}*/

/*plantilla validaciones
function validarAltaVeh(oEvento)
{
	var oE = oEvento || window.event;
	var bValido = true;
	var sError = "";

	if (bValido == false) 
	{
		alert(sError);
		oE.preventDefault();
	}	
}*/