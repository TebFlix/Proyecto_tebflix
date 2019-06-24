 $(document).ready(function () {
       $("#imagen1").show(3000,cambio1);
       // Como la imagen 1 ya está mostrada, esto solo 
       // tiene efecto de retardo. Cuando pasen 3000 
       // milisegundos ejecutará la función cambio1.
   });

  function cambio1() {
      $("#imagen1").hide(5000,cambio2);
      // Oculta la imagen1 mediante efecto de desvanecimiento
      // modo que se irá mostrando la imagen2 que está por debajo.
      // El efecto de desvanecimiento dura 5000 milisegundos.
  }
  function cambio2() {
      $("#imagen2").fadeOut(5000,cambio3);
      // Oculta la imagen2 mediante efecto de desvanecimiento
      // modo que se irá mostrando la imagen3 que está por debajo.
      // El efecto de desvanecimiento dura 5000 milisegundos.
  }
  function cambio3() {
      $("#imagen3").fadeOut(5000,cambio4);
  }
  function cambio4() {
      $("#imagen4").fadeOut(5000,cambio5);
  }
  function cambio5() {
      $("#imagen5").fadeOut(5000,cambio6);
  }
  function cambio6() {
      $("#imagen6").fadeOut(5000,cambio7);
  }
  function cambio7() {
      $("#imagen7").fadeOut(5000,cambio8);
  }
  function cambio8() {
      $("#imagen8").fadeOut(5000, cambio9);
  }
