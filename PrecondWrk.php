<?php
  $filename = 'Burkina_FasoWork';
  header('Content-type: application/vnd.xls');
  header('Content-Disposition: attachment; filename="'.$filename.'.xls"');
  //Your Table code.
  ?>
  <html>
    <head>
     <h1> Previously Conducted Work </h1>
            </head>
    <body>
            <table border=1 style="border-collapse:collapse;">
            <tr>
                <th>Title of Work</th><th>Institution/Organization</th><th>Author</th><th>Publication Site</th>
            </tr>
                <tr>
                    <td>DE L&#146&#201LECTRICIT&#201 VERTE POUR CENT MILLE RURAUX AU BURKINA FASO. Translation: Green Electricity for One Hundred Houses in Burkina Faso.</td>
                    <td>Fondation Energies Pour Le Monde</td>		
                    <td>Fondation Energies Pour Le Monde</td>
                    <td><a href="http://www.energies-renouvelables.org/partenaires_fond.asp">Fondation Energies Pour Le Monde</a>, <a href="http://www.mines.gov.bf/">Ministre des Mines</a></td>
                    <td><a href="http://www.energies-renouvelables.org/Noria/docs/Burkina_Faso.pdf">Direct Link to Work</a></td>
                </tr>
             </table>
            </html>
  <a href="http://your_site_url.com/export_excel.php" target="_blank">
   <input id="export-btn" type="button" value="Export as Excel" onclick="export()"/>
  </a>


          