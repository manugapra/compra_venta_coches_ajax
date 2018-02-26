$('#btnEnviarCompra').click(enviarCompra);

	$.get('./php/getProveedores.php',null,tratarGetProveedores,'json');
	$.get('./php/getEmpleados.php',null,tratarGetEmpleados,'json');
	$.get('./php/getVehiculos.php',null,tratarGetVehiculos,'json');
	


function enviarCompra()
{

	if (validarCompra()) 
	{
		var formRegCompra= document.getElementById("formRegCompra");
		//var sMensaje = "";
		
		var selectCompraVehiculo= formRegCompra.selectCompraVehiculo.value.trim();
		var importeCompraVehiculo= formRegCompra.importeCompraVehiculo.value.trim();
		var fechaCompraVehiculo= formRegCompra.fechaCompraVehiculo.value.trim();
		var selectCompraProv= formRegCompra.selectCompraProv.value.trim();
		var selectCompraEmp= formRegCompra.selectCompraEmp.value.trim();
		var observCompraVehiculo= formRegCompra.observCompraVehiculo.value.trim();
		
		//var oCompra = new Compra(selectCompraVehiculo,importeCompraVehiculo,fechaCompraVehiculo,selectCompraProv,selectCompraEmp,observCompraVehiculo);
		
		//sMensaje = cvCoches.altaCompra(oCompra);
		if(observCompraVehiculo==""){
			observCompraVehiculo=" ";
		}
		$.post("./php/alta.php", {m: "compra", v: selectCompraVehiculo, i: importeCompraVehiculo, f: fechaCompraVehiculo, p: selectCompraProv, e: selectCompraEmp, o: observCompraVehiculo },
			function (data,status){
				if(status=="success"){
					
					$("#mensaje").append(data);
					
					formRegCompra.reset();
					inicio();
				} else {
					$("#mensaje").append('<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Ha ocurrido un error de conexión</strong></div>')


				}
			});
        

	//alert(sMensaje);
	
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
		sError = 'Debe introducir un importe.<br>';
	}
	else
		formRegCompra.importeCompraVehiculo.classList.remove('error');

	//campo fecha
	
	
	if ($("#fechaCompraVehiculo").val()=="") 
	{
		formRegCompra.fechaCompraVehiculo.classList.add('error');
		formRegCompra.fechaCompraVehiculo.focus();
		bValido=false;
		sError += 'Debe introducir una fecha.<br>';
	}
	else{

		formRegCompra.fechaCompraVehiculo.classList.remove('error');
	}
	if($("#selectCompraVehiculo").val()==0){
		$("#selectCompraVehiculo").addClass('error','error');
		$("#selectCompraVehiculo").focus();
		bValido=false;
		sError+= 'Debe seleccionar algún vehiculo.<br>'
	} else {
		$("#selectCompraVehiculo").removeClass('error');
	}
	if($("#selectCompraProv").val()==0){
		$("#selectCompraProv").addClass('error');
		$("#selectCompraProv").focus();
		bValido=false;
		sError+= 'Debe seleccionar algún Proveedor.<br>'
	} else {
		$("#selectCompraProv").removeClass('error');
	}
	
	if($("#selectCompraEmp").val()==0){
		$("#selectCompraEmp").addClass('error');
		$("#selectCompraEmp").focus();
		bValido=false;
		sError+= 'Debe seleccionar algún empleado.<br>'
	} else {
		$("#selectCompraEmp").removeClass('error');
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
function tratarGetProveedores(oArrayProv, sStatus, oXHR)
{
	$('#selectCompraProv').empty();
	$("#selectCompraProv").append('<option value="0" >Seleccione un proveedor...</option>');
	jQuery.each(oArrayProv, function(i, elemento) {
       
        $("#selectCompraProv").append('<option value="' + elemento.cif + '" >' + elemento.nombre + '</option>');
    });
}

function tratarGetEmpleados(oArrayProv, sStatus, oXHR)
{
	$('#selectCompraEmp').empty();
	$("#selectCompraEmp").append('<option value="0" >Seleccione un empleado...</option>');
	jQuery.each(oArrayProv, function(i, elemento) {
        
        $("#selectCompraEmp").append('<option value="' + elemento.dni + '" >' + elemento.nombre + ' '+elemento.apellidos+'</option>');
    });
}

function tratarGetVehiculos(oArrayProv, sStatus, oXHR)
{
		
	$('#selectCompraVehiculo').empty();
	$("#selectCompraVehiculo").append('<option value="0" >Seleccione un vehiculo...</option>');
	jQuery.each(oArrayProv, function(i, elemento) {
		
       
        $("#selectCompraVehiculo").append('<option value="' + elemento.matricula + '" >' + elemento.marca + ' '+elemento.modelo+'</option>');
    });
}
