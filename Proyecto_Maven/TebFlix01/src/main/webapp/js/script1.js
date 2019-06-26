//Función de inicio
$(document).ready(function () {
	//Cambio imágenes "Próximos eventos"
	cambio1();

	//Funciones relativas al menú desplegable
	$("#logoMenu").click(openNav);
	$("[name='logoMenuRot']").click(closeNav);
	$("#capaCubrir").click(closeNav);

	//Controla el tamaño de la pantalla dinámicamente
	var mediaquery800 = window.matchMedia("(max-width: 800px)");
	mediaquery800.addListener(cambioMediaQuery);

});

//Función para generar la transición de imágenes y texto
/*Es una primera versión, se puede hacer mejor mediante 
funciones que admitan argumentos*/

//Prueba 1:
function cambio1() {
	$("#info3").delay(5000).fadeToggle(1000, cambio2);	
}
function cambio2() {
	$("#info2").delay(5000).fadeToggle(1000, cambio1);
}

//Menú responsive

function cambioMediaQuery(mediaquery800) {
		if(mediaquery800.matches){
			downto800();	
		} else {
			upto800();
		}	
	}

function openNav() {
	$("#menu").css("left", "-200px").css("width", "200px").css("display", "block").animate({left: "0px"}, 300);
	$("#capaCubrir").css("zIndex", "20").css("background-color", "#1a1a1a");
	$("#logoMenu").css("position", "fixed").css("top", "26.25px");
	var angulo = 0;
	var rotacion = setInterval(function(){
		angulo+=3;
		if (angulo < 180) {
			$("#logoMenu").rotate(angulo);		
		} else {
			$("#logoMenu").rotate(180);
			clearInterval(rotacion);
		}
	});
	$("#logoMenu").attr("name", "logoMenuRot");
}

function closeNav() {
	$("#menu").animate({width: "0px"});
	$("#capaCubrir").css("left", "").css("zIndex", "").css("background-color", "");
	$("#logoMenu").css("position", "").css("top", "");
	var angulo = 180;
	var rotacion = setInterval(function(){
		angulo+=3;
		if (angulo < 360) {
			$("#logoMenu").rotate(angulo);		
		} else {
			$("#logoMenu").rotate(0);
			clearInterval(rotacion);
		}
	});
	$("#logoMenu").attr("name", "");
}

function upto800() {
	$("#menu").css("width", "").css("display", "");
	$("main").css("marginLeft", "");
	$("#capaCubrir").css("left", "").css("zIndex", "").css("background-color", "");
	$("#logoMenuRot").rotate(0).css("position", "").css("top", "");
	$("#logoMenu").rotate(0).css("position", "").css("top", "");
}

function downto800() {
	$("#menu").css("display", "none");
}


