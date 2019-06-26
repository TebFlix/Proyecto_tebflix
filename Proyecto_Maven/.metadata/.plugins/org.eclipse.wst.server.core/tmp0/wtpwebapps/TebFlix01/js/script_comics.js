//Funcion que realiza la visualización
/**
 * 
 * @param {*} pdf nodo img de la clase .comic que contiene el nombre del pdf(data-pdf)
 */
function mostrame(pdf) {

    var pdfAMostrar = pdf;
    var lista = document.querySelectorAll('.lista');
    $("#pdf").hide(0, cambio2);
    lista.forEach(function(e) {

        e.style.display = 'none';
    })

    var embed = document.getElementById("pdf"); //obtiene por id
    embed.setAttribute("src", "comics/"); //establece un atributo
    var src = embed.getAttribute("src"); //obtiene atributo src
    var data = pdfAMostrar.getAttribute("data-pdf"); //obtencion de los datos que contiene ese atributo
    embed.setAttribute("src", src + data + ".pdf"); //establece un nuevo atributo concatenanto los datosy mostrar el pdf
    embed.style.display = 'inline-flex' ;

}


//mostrar lista de comics en imagenes
function mostrarLista(dataLista) {
    var lista = document.querySelectorAll('.lista');
    $(".img2").hide(0, cambio1);
    lista.forEach(function(e) {

        e.style.display = 'none';


    })

    var actual = document.getElementsByClassName(dataLista.getAttribute('data-lista'))[0];

    actual.style.display = 'flex';
    var embed = document.getElementById("pdf");
    embed.setAttribute('src', null); //El atributo src se cambia null para ocultar el pdf
    embed.style.display = 'none' ;
}





//mostrar los pdf una vez que se pulse en las imagenes
//carga la ventana y empieza la ejecucion
window.addEventListener('load', function() {
    // Recoge todas los nodos imagenes de clases .comic
    var imgs = document.querySelectorAll(".lista .comic img");
    $(".img2").hide(0, cambio1);
    imgs.forEach(function(e) {
        e.addEventListener("click", function(a) {

            mostrame(e);

        });

    })


});

function cambio1() {
    $(".img2").fadeIn(500);


}

function cambio2() {
    $(".img2").show(1000);


}