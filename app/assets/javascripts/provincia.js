
function callCookie () {

  var query = Tools.readCookie("provincia");
  if(query != null){
	loadProvincia(query);
  }


}

function getProvincia(){

	
	$("#dialog-confirm").html("¿Quiere establecer esta Provincia por defecto?");
	
	select = document.getElementById("prov");
	query = select.options[select.selectedIndex].value;
	
	$("#dialog-confirm").dialog({
        resizable: false,
        modal: true,
        title: "Establecer provincia",
        buttons: {
            "Si": function () {
                $(this).dialog('close');
                Tools.createCookie("provincia", query, 7);
            },
                "No": function () {
                $(this).dialog('close');
              
            }
        }
    });
	
	/*if (confirm("¿Quiere establecer esta Provincia por defecto?")){
		Tools.createCookie("provincia", query, 7);
	}*/
	
	
	loadProvincia(query);
	

	
	
}

function loadProvincia(query){
  jQuery.ajax({
    url: '/province',
    type: 'GET',
    data: {"province" : query},
    dataType: "html",
    success: function(data){
      console.log('resp: ' + data);
      var ca = data.split('<div class="grid_8 alpha" id="articulos">');
      
      data = ca[1].split('</div><!--grid_9_articulos-->');
      articulos = document.getElementById("articulos");
			articulos.innerHTML = data[0];
    }
  });

}

	/*select = document.getElementById("prov");
	query = select.options[select.selectedIndex].value;
	filename = "php/provincia.php?query=" + query;
	ajaxCallback = DisplayResults;

	ajaxRequest(filename);


}

function DisplayResults () {
	articulos = document.getElementById("articulos");
	articulos.innerHTML = ajaxreq.responseText;
	console.log('resp: ' + ajaxreq.responseText);
}*/
