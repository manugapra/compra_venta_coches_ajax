$('#listadoEmpleado').click(listadoEmpleados);

$.get('php/getEmpleados.php',null,tratarGetEmpleados,'json');

function tratarGetEmpleados(oArrayEmple, sStatus, oXHR)
{
	$('#empleado').empty();
	$("#empleado").append('<option value="todos">Todos</option>');

	jQuery.each(oArrayEmple, function(i, elemento) {
        $("#empleado").append('<option value="' + elemento.dni + '" >' + elemento.nombre +' '+elemento.apellidos+ '</option>');
    });
}

function listadoEmpleados()
{
	// Instanciar objeto Ajax
    var oAjax = instanciarXHR();

    console.log($('#empleado').val());

    var oDatos = {
       empleado: $('#empleado').val()
    }

    var sDatos = "empleado=" + JSON.stringify(oDatos);

    //2. Configurar la llamada --> Asincrono por defecto
    oAjax.open("GET", encodeURI("php/getListadoEmpleados.php?" + sDatos));
    //oAjax.open("GET", encodeURI("php/getListadoEmpleados.php?"));

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

    $('#listaEmpleado').html(sTabla);
    $('#listaEmpleado').show();
}