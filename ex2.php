<?php
//Actual code that works -----http://stackoverflow.com/questions/16425270/html-to-excel-export-with-xls-extension-in-javascript-or-php
//////------- http://elavarasanlee.in/php/


$same_page = $_POST['same-page'];
if(!empty($same_page) && $same_page == 1) {
  $filename = 'Sample Table';
  header('Content-type: application/vnd.xls');
  header('Content-Disposition: attachment; filename="'.$filename.'.xls"');
}?>
   <html>
    <head>
        <title>Standard Info Table</title>
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
                <a href="http://elavarasanlee.in/php/export_excel.php" target="_blank">
         <input id="export-btn" type="button" value="Export as Excel"/>
        </a>
        <form method="POST" action="" target="_balnk">
         <input type="hidden" name="same-page" value="1"/>
         <input id="export-btn" type="submit" value="Export as Excel on Form Submit"/>
        </form>
            </body>
</html>
  
  


<?php if(empty($same_page)): ?>
  //write whatever you want to hide in excel like export button,heading etc.
 <form method="POST" action="" target="_balnk">
   <input type="hidden" name="same-page" value="1"/>
   <input id="export-btn" type="submit" value="Export as Excel on Form Submit"/>
 </form>
<?php endif; ?>
 