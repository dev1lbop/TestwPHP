<?php
//Actual code that works -----http://stackoverflow.com/questions/16425270/html-to-excel-export-with-xls-extension-in-javascript-or-php
//////------- http://elavarasanlee.in/php/
$same_page = $_POST['same-page'];
if(!empty($same_page) && $same_page == 1) {
  $filename = 'Sample Table';
  header('Content-type: application/vnd.xls');
  header('Content-Disposition: attachment; filename="'.$filename.'.xls"');
  $same_page++;
}?>
   <html>
    <head>
        <h1> Standard Info</h1>
    </head>
    <body>
    <style>
body {
    background: url(2.jpg), url(2.jpg);
    background-size: 100% 100%;
    background-repeat: no-repeat;
}
</style>
            <h1></h1>
            <table border=1 style="border-collapse:collapse;">
            <tr>
                <th>Population</th><th>Programs</th><th>Points of Contact</th><th>Companies in Energy</th><th>Policies in the Region</th>
            </tr>
                <tr>
                    <td><a href="http://data.worldbank.org/indicator/SP.POP.TOTL/countries/BF?display=graph">16,934,839 (2013)</a></td>
                    <td><a href="http://web.worldbank.org/WBSITE/EXTERNAL/COUNTRIES/AFRICAEXT/EXTAFRREGTOPENERGY/0,,contentMDK:22500298~menuPK:8913746~pagePK:34004173~piPK:34003707~theSitePK:717306,00.html"style="text-decoration:none;">Africa Renewable Energy and Access program (AFREA)</a>, <a href="http://www.ecreee.org/"style="text-decoration:none;">Excellence of the Economic Community for West African States (ECOWAS) Centre for Renewable Energy and Energy Efficiency (ECREEE)</a></td>
                    <td>Embassy Phone: ,Email;</td>
                    <td><a href="http://www.sonabel.bf/"style="text-decoration:none;">SONABEL</a></td>
                    <td><a href ="http://www.ecreee.org/sites/default/files/documents/basic_page/151012_ecowas_renewable_energy_policy_final.pdf"style="text-decoration:none;">ECOWAS Renewable Energy Policy (EREP) [Document, </a> <a href= "http://www.ecreee.org/page/ecowas-renewable-energy-policy-erep"style="text-decoration:none;">Policy Website]</a></td>
                </tr>
             </table>
               <a href="BKstdinfoo.php" target="_blank">
         <input id="export-btn" type="button" value="Export as Excel"/>
        </a>
        <form method="POST" action="" target="_blank">
         <input type="hidden" name="same-page" value="1"/>
        </form>
             <!----Next table--->
             <br></br>
             <h1> Energy Useage</h1>
            <table border=1 style="border-collapse:collapse;">
            <tr>
                <th>Annual Electricity Useage</th><th>Estimated Energy Demand</th><th>Types of Energy Used</th><th>Existing Power Plants</th><th>HOMER Results</th>
            </tr>
                <tr>
                    <td><a href="http://data.worldbank.org/country/burkina-faso"style="text-decoration:none;">Numbers#####</a></td>
                    <td>Numbers#####</td>
                    <td>Diesel, Hydropower, Wind, Solar</td> <!--Create links that go to sonabels site or the gis map?-->
                    <td><a href="http://www.sonabel.bf/"style="text-decoration:none;">Maps</a>, <a href="http://www.sonabhy.bf/"style="text-decoration:none;">SONABHY</a></td>
                     <td><a href="RealBKTest.hmr.htm"style="text-decoration:none;">Results from HOMER</a>
                </tr>
             </table>
                <a href="BKEnergyUse.php" target="_blank">
         <input id="export-btn" type="button" value="Export as Excel"/>
        </a>
        <form method="POST" action="" target="_blank">
         <input type="hidden" name="same-page" value="2"/>
        </form>
        <!----Next table--->
             <br></br>
             <h1> Previously Conducted Work </h1>
            <table border=1 background="3.jpg">
            <tr>
                <th>Title of Work</th><th>Institution/Organization</th><th>Author</th><th>Publication Site</th>
            </tr>
                <tr>
                    <td>DE L&#146&#201LECTRICIT&#201 VERTE POUR CENT MILLE RURAUX AU BURKINA FASO. Translation: Green Electricity for One Hundred Houses in Burkina Faso.</td>
                    <td>Fondation Energies Pour Le Monde</td>		
                    <td><a href="http://www.energies-renouvelables.org/partenaires_fond.asp">Fondation Energies Pour Le Monde</a>, <a href="http://www.mines.gov.bf/">Ministre des Mines</a></td>
                    <td><a href="http://www.energies-renouvelables.org/Noria/docs/Burkina_Faso.pdf">Direct Link to Work</a></td>
                </tr>
             </table>
                <a href="PrecondWrk.php" target="_blank">
         <input id="export-btn" type="button" value="Export as Excel"/>
        </a>
        <form method="POST" action="" target="_blank">
         <input type="hidden" name="same-page" value="3"/>
        </form>
        </body>
  </html>
