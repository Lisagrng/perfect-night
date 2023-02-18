var options = [
  "Activité 1",
  "Activité 2",
  "Activité 3",
  "Activité 4",
  "Activité 5"
];

function spinRoulette() {
  var roulette = new RouletteWheel({
    canvasId: 'roulette-canvas',
    numOptions: options.length,
    outerRadius: 150,
    innerRadius: 50,
    textOrientation: 'horizontal',
    textFontFamily: 'Arial',
    textFontSize: 16,
    colors: ['#e0e0e0', '#f8f8f8', '#e0e0e0', '#f8f8f8', '#e0e0e0'],
    duration: 5,
    onStopSpinning: function(selectedIndex) {
      var activityIndex1 = selectedIndex;
      var activityIndex2 = selectedIndex;
      while (activityIndex2 === activityIndex1) {
        activityIndex2 = Math.floor(Math.random() * options.length);
      }
      var activity1 = options[activityIndex1];
      var activity2 = options[activityIndex2];
      // afficher les deux activités sélectionnées
    }
  });
  roulette.spin();
}
