function dialog_form(){


  $("#dialog").dialog({
        resizable: false,
        modal: true,
        title: "No se pudo realizar la acción debido a los siguientes errores",
    });
}

function mostrarOcultarRutaVideo () {

	if ($("#video").prop("checked")){
		$("#rutavideo").css("visibility", "visible");
	}else{
		$("#rutavideo").css("visibility", "hidden");
	}

}

function mostrarOcultarRutaImagen () {

	if ($("#imagenes").prop("checked")){
		$("#images_").css("visibility", "visible");;
	}else{
		$("#images_").css("visibility", "hidden");;
	}

}

function limpiar (){
	$("#titulo_art").val("");
  $("#summary").val("");
	$("#fecha").val("");
	$("#body").val("");
	$("#rutavideo").val("");
	$("#rutaimagen1").val("");
	$("#rutaimagen2").val("");
	$("#rutaimagen3").val("");
	$("#rutaimagen4").val("");
	$("#liga").val("0").selectmenu("refresh");
	$("#provincia").val("0").selectmenu("refresh");
	$("#equipo").val("0").selectmenu("refresh");
	$("#jugador").val("0").selectmenu("refresh");
	if ($("#video").is(":checked")){
		$("#video").click();
	}
	if ($("#imagenes").is(":checked")){
		$("#imagenes").click();
	}

}

function tipoPartido () {
	
  
	if($("#partido").is(":checked")){
		$("#noticia").prop('checked', false);
		loadTipo("Partido");
	}else{
		loadTipo("");
	}
}

function tipoNoticia () {

	if($("#noticia").is(":checked")){
		$("#partido").prop('checked', false);
		loadTipo("Noticia");
	}else{
		loadTipo("");
	}

}
function loadTipo (query) {
	$.ajax({
		type: "GET",
		url: "/form",
		data: { "query": query },
		dataType: "html",
	    error: function(){
			alert( "No se ha podido establecer conexión con el servidor");
        },
		success: function(msg){
			console.log('resp: ' + msg);
      formulario = document.getElementById("dinamico");
			formulario.innerHTML = msg;
			
			
			 $( "#liga" ).selectmenu();
			$( "#article_locations" ).selectmenu();
      $( "#locations" ).selectmenu();
      $( "#locations2" ).selectmenu();
			$( "#equipo-local" ).selectmenu();
      $( "#equipo-visitante" ).selectmenu();
			$( "#jugador" ).selectmenu();    
$("#article_published_at").datepicker();
		}
	})
}
