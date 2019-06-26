//Función de inicio
$(document).ready(function () {
	var x1 = $("#email1").change(validarCorreo);
	var x2 = $("#email2").change(correosCoincidentes);
	/*
	var y1 = $("#contra1").change(validarContra);
	var y2 = $("#contra2").change(contraCoincidentes);
	$("#formulario").submit(function() {
		if (x1 && x2) {
			return true;
		} else {
			return false;
		}
	});*/
	
	//Funciones relativas al menú desplegable
	$("#logoMenu").click(openNav);
	$("[name='logoMenuRot']").click(closeNav);
	$("#capaCubrir").click(closeNav);

	//Controla el tamaño de la pantalla dinámicamente
	var mediaquery800 = window.matchMedia("(max-width: 800px)");
	mediaquery800.addListener(cambioMediaQuery);
});

//Funciones para validar y recoger datos de formulario.

//Validar correo: que sea un correo válido y que los correos coincidan. 
function validarCorreo() {
	var correo = $(".correo");
	var regexEmail = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/; 
	//No he hecho yo la RE, cuando me las estudie haré una más sencilla. 
	if(regexEmail.test(correo.val()) == false) {
		correo.css("border", "1px solid red");
		$("#infoEmail1").text("\tCorreo inválido.").css("color", "red").css("font-size", "11pt");
		//return true;
	} else {
		correo.css("border", "0px");
		$("#infoEmail1").text("").css("color", "red").css("font-size", "11pt");
		//return  false;
	}
}

function correosCoincidentes() {
	var correo = $(".correo");
	if(correo.eq(0).val() != correo.eq(1).val()) {
			correo.eq(1).css("border", "1px solid red");
			$("#infoEmail2").text("\tCorreos no coincidentes.").css("color", "red").css("font-size", "11pt");
	} else {
		correo.eq(1).css("border", "0px");
		$("#infoEmail2").text("").css("color", "red").css("font-size", "11pt");
	}
}
	
//Validar contraseña: contraseña válida y que ambas contraseñas coincidan. 
function validarContra() {
	var contra = $(".contra");
	var regexContra = /^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$/; //mirar expresiones regulares.
	if(regexContra.test(contra.val()) == false) {
		contra.css("border", "1px solid red");
		$("#infoContra1").text("Contraseña no válida, debe tener entre 6 y 10 caractéres.")
			.css("color", "red").css("font-size", "11pt");
		return false;
	} else {
		contra.css("border", "0px");
		$("#infoContra1").text("")
			.css("color", "red").css("font-size", "11pt");
		return true;
	}
}

function contraCoincidentes() {
	var contra = $(".contra");
	var regexContra = /[a-zA-Z0-9]{6-10}$/;
	if(contra.eq(0).val() != contra.eq(1).val()) {
			contra.eq(1).css("border", "1px solid red");
		$("infoContra2").text("\tContraseñas no coincidentes.")
			.css("color", "red").css("font-size", "11pt");
		return false;
		} else {
			contra.eq(1).css("border", "0px");
		$("infoContra2").text("")
			.css("color", "red").css("font-size", "11pt");
		return true;
		}
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