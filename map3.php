<!DOCTYPE html>
  <html>
    <head>
    <link rel="stylesheet" href="http://js.arcgis.com/3.10/js/esri/css/esri.css">
  <script src="http://js.arcgis.com/3.10/"></script>
  
   <script>
    require(["esri/map"], function(Map) { ... });
  </script>
  <script>
    require(["esri/map", "dojo/domReady!"], function(Map) { 
      // code to create the map and add a basemap will go here 
    });
  </script>
  
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
      <title></title>
      <?php
      var map;
  require(["esri/map", "dojo/domReady!"], function(Map) { 
    map = new Map("mapDiv", {
      center: [-56.049, 38.485],
      zoom: 3,
      basemap: "streets"
    });
  });
  ?>
    </head>
   <body class="claro">
    <div id="mapDiv"></div>
  </body>
  <style>
    html, body, #mapDiv {
      padding: 0;
      margin: 0;
      height: 100%;
    }
  </style>
  </html>