<?php
  $filename = 'Burkina_Faso';
  header('Content-type: application/vnd.xls');
  header('Content-Disposition: attachment; filename="'.$filename.'.xls"');
  //Your Table code.
  ?>
  <html>
    <head>
        <h1> Standard Info</h1>
    </head>
    <body>
            <table border=1 style="border-collapse:collapse;">
            <tr>
                <th>Population</th><th>Policies</th><th>Points of Contact</th><th>Companies in Energy</th>
            </tr>
                <tr>
                    <td><a href="http://data.worldbank.org/country/burkina-faso"style="text-decoration:none;">17,256,568</a></td>
                    <td>Renewable Energy Outlook 2020</td>
                    <td>Embassy Phone: ,Email;</td>
                    <td><a href="http://www.sonabel.bf/"style="text-decoration:none;">SONABEL</a>, <a href="http://www.sonabhy.bf/"style="text-decoration:none;">SONABHY</a></td>
                </tr>
             </table>
            
  <a href="http://your_site_url.com/export_excel.php" target="_blank">
   <input id="export-btn" type="button" value="Export as Excel" onclick="export()"/>
  </a>
  /* IE10 Consumer Preview */ 
background-image: -ms-linear-gradient(top left, #FFFFFF 0%, #1EA654 100%);

/* Mozilla Firefox */ 
background-image: -moz-linear-gradient(top left, #FFFFFF 0%, #1EA654 100%);

/* Opera */ 
background-image: -o-linear-gradient(top left, #FFFFFF 0%, #1EA654 100%);

/* Webkit (Safari/Chrome 10) */ 
background-image: -webkit-gradient(linear, left top, right bottom, color-stop(0, #FFFFFF), color-stop(1, #1EA654));

/* Webkit (Chrome 11+) */ 
background-image: -webkit-linear-gradient(top left, #FFFFFF 0%, #1EA654 100%);

</html>
          