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
            <h1></h1>
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
                    <td><a href="http://data.worldbank.org/country/burkina-faso"style="text-decoration:none;">17,256,568</a></td>
                    <td>Renewable Energy Outlook 2020</td>
                    <td>Embassy Phone: ,Email:</td>
                    <td><a href="http://www.sonabel.bf/"style="text-decoration:none;">SONABEL</a>, <a href="http://www.sonabhy.bf/"style="text-decoration:none;">SONABHY</a></td>
                     <td><a href="../testwphp/RealBKTest.hmr.htm"style="text-decoration:none;">Results from HOMER</a>
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
            <table border=1 style="border-collapse:collapse;">
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
<iframe height='300'width='500' 
src='http://cartagen.org?fullscreen=true&gss=/static/rome/style.gss'
style='border:0;'>
</iframe>
  </html>
 
<?php if(empty($same_page)): ?>
  //write whatever you want to hide in excel like export button,heading etc.
 <form method="POST" action="" target="_blank">
  <input type="hidden" name="same-page" value="1"/>
  <input id="export-btn" type="submit" value="Export as Excel on Form Submit"/>  </form>
<?php endif; ?>
 