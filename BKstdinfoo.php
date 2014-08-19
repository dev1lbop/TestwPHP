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
                <th>Population</th><th>Programs</th><th>Points of Contact</th><th>Companies in Energy</th><th>Policies in the Region</th>
            </tr>
                <tr>
                    <td><a href="http://data.worldbank.org/indicator/SP.POP.TOTL/countries/BF?display=graph">16,934,839 (2013)</a></td>
                    <!--<td><a href="http://search.worldbank.org/quickview?name=Rural+%3Cem%3Epopulation%3C%2Fem%3E&id=SP.RUR.TOTL&type=Indicators&cube_no=2&qterm=burkina+faso+population"style="text-decoration:none;">16,934,839 (2013)</a></td>-->
                    <td><a href="http://web.worldbank.org/WBSITE/EXTERNAL/COUNTRIES/AFRICAEXT/EXTAFRREGTOPENERGY/0,,contentMDK:22500298~menuPK:8913746~pagePK:34004173~piPK:34003707~theSitePK:717306,00.html"style="text-decoration:none;">Africa Renewable Energy and Access program (AFREA)</a>, <a href="http://www.ecreee.org/"style="text-decoration:none;">Excellence of the Economic Community for West African States (ECOWAS) Centre for Renewable Energy and Energy Efficiency (ECREEE)</a></td>
                    <td>Embassy Phone: ,Email;</td>
                    <td><a href="http://www.sonabel.bf/"style="text-decoration:none;">SONABEL</a></td>
                    <td><a href ="http://www.ecreee.org/sites/default/files/documents/basic_page/151012_ecowas_renewable_energy_policy_final.pdf"style="text-decoration:none;">ECOWAS Renewable Energy Policy (EREP) [Document, </a> <a href= "http://www.ecreee.org/page/ecowas-renewable-energy-policy-erep"style="text-decoration:none;">Policy Website]</a></td>
                </tr>
             </table>
            
  <a href="http://your_site_url.com/export_excel.php" target="_blank">
   <input id="export-btn" type="button" value="Export as Excel" onclick="export()"/>
  </a>

</html>
          