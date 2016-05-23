function muestraSlider () {
	iniciaSlider();
	if($(".slider").css('display') == 'none'){
		$(".slider").fadeIn(800);
		$(".slider").css('transform', 'scale(1.1)');
	}


}

function ocultaSlider () {

	$(document).mouseup(function (arg)
	{
	    var slider = $(".slider");

	    if (!slider.is(arg.target) && slider.has(arg.target).length === 0){ // Si se ha clicado fuera del slider y no es un hijo del mismo
	        $(".slider").fadeOut(800);
			$(".slider").css('transform', 'scale(1.0)');
	    }
	});
	
}