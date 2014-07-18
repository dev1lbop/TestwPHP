<?php
  $filename = 'Burkina_FasoUse';
  header('Content-type: application/vnd.xls');
  header('Content-Disposition: attachment; filename="'.$filename.'.xls"');
  //Your Table code.
  ?>
  <html>
    <head>
        <h1> Energy Useage</h1>
    </head>
    <body>
            <table border=1 style="border-collapse:collapse;">
            <tr>
                <th>Annual Electricity Useage</th><th>Estimated Energy Demand</th><th>Types of Energy Used</th><th>Existing Power Plants</th><th>HOMER Results</th>
            </tr>
                <tr>
                    <td><a href="http://data.worldbank.org/country/burkina-faso"style="text-decoration:none;">17,256,568</a></td>
                    <td>Renewable Energy Outlook 2020</td>
                    <td>Embassy Phone: ,Email:</td>
                    <td><a href="http://www.sonabel.bf/"style="text-decoration:none;">SONABEL</a>, <a href="http://www.sonabhy.bf/"style="text-decoration:none;">SONABHY</a></td>
                    <td><a href="../testwphp/RealBKTest.hmr.htm"style="text-decoration:none;">Results from HOMER</a>
                </tr>
             </table>
            </html>
  <a href="http://your_site_url.com/export_excel.php" target="_blank">
   <input id="export-btn" type="button" value="Export as Excel" onclick="export()"/>
  </a>


          