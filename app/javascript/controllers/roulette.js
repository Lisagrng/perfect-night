    ///////////////////////////////
    // Déclaration des variables //
    ///////////////////////////////

// Contexte: le canvas du code HTML
var canvas = document.getElementById('roulette');
var context = canvas.getContext('2d');
// Centre de la roulette
var centreX = canvas.width/2;
var centreY = canvas.height/2;
// Rayon du cercle
var radius = 295;
// Nombre de cases fixée à six ... pour l'instant
var n=6;
// Angle de la case sur laquelle la flèche s'arrête
var a=0;
// Case sur laquelle la flèche s'arrête
var x=1;


    ///////////////
    // Fonctions //
    ///////////////

// Dessin de l'arrière plan de la roulette et contour
function dessinRoulette(){
context.beginPath();
// Dessin du cercle
context.arc(centreX, centreY, radius, 0, 2 * Math.PI, false);
// Couleur
context.fillStyle = '#A5BDCD'
context.fill();
// Taille de la bordure
context.lineWidth = 5;
// Couleur de la bordure
context.strokeStyle = '#485D6C';
context.stroke();
}

// Dessin des cases de la roulette
function decoupe(nombre){
  // Six fois de suite on va ...
  for (i = 1; i <= nombre; i++) {
    context.beginPath();
    // Tracer une ligne depuis le centre vers le bord du cercle
    context.moveTo(centreX,centreY);
    context.lineTo(centreX+radius*Math.cos(i*2*Math.PI/nombre), centreY-radius*Math.sin(i*2*Math.PI/nombre));
    // Epaisseur du trait
    context.lineWidth = 3;
    // Couleur du trait
    context.strokeStyle = '#485D6C';
    context.stroke();
  }
}

// Animation de la rotation
$.fn.animRotation = function(angle, duree, easing, complet) {
  // Vitesse de l'animation
    var args = $.speed(duree, easing, complet);
  // Paramètrage de l'animation. Ce n'est qu'un appel d'une procédure CSS.
    return this.each(function(i, e) {
        args.step = function(pos) {
            $.style(e, 'transform', 'rotate(' + pos + 'deg)');
        };
      // Lancement de l'animation
        $({deg: 0}).animate({deg: angle}, args);
    });
};

// Fonction qui donne un nombre au hasard entre 1 et n
function alea(n) {
  return Math.floor(Math.random()*(n))+1;
}

// Si on veut mettre une image de fond qui représente la roulette, tout ce qui est écrit au-dessus est inutile. Pour voir ce que ça fait, tout supprimer ou décommenter la ligne ci-dessous.
//$('#roulette').fadeTo(0, 0);


    ///////////////
    // Mécanisme //
    ///////////////

$(document).ready(function(){
  // A chaque instant, afficher la roulette avec le bon nombre de cases
  dessinRoulette();
  decoupe(n);

  // Redécouper le cercle dès que l'on change le nombre de cases
  $('#nombre').on('keyup click', function(){
    // Récupérer le nombre de découpes
    n=$('#nombre').val();
    // Effacer le dessin
    context.clearRect(0, 0, canvas.width, canvas.height);
    // Redessiner
    dessinRoulette();
    decoupe(n);
  });

  // Lancer la rotation
  $('#fleche').click(function(){
    // Determiner au hasard la case sur laquelle la flèches s'arrête
    x=alea(n);
    // Trouver l'angle de la flèche. Ici le milieu mais on peut rendre l'animation plus réaliste
    a=(360*x/n+360*(x-1)/n)/2;
    // Afficher le numéro de la case au hasard dans le paragraphe
    $("p").html("La flèche est en case " + x);
    // Lancer l'animation
    $('#fleche').animRotation(360+a, 500+a/360*500, "linear");
  });
});
