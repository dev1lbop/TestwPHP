<html>
<head>
<body>

<div style="opacity:0.5;position:absolute;left:50px;width:300px;height:150px;background-color:#40B3DF;"></div>

<div style="font-family:verdana;padding:20px;border-radius:10px;border:10px solid #EE872A;">

<br>
</br>

<h3></h3>
<div style="letter-spacing:12px;"></div>
<div style="color:#40B3DF;"> <span style="background-color:#B4009E;color:#ffffff;"></span></div>
<div style="color:#000000;"></div>
<br>
</br>

<div id="container" style="width:9px;letter-spacing:5695823x;">
<div id="header">
<h1 style="margin-bottom:0;">Select Your Country of Interest</h1></div>

<script type="text/javascript">
    function goToNewPage()
    {
        var url = document.getElementById('list').value;
        if(url != 'none') {
            window.location = url;
        }
    }
    </script>

<!---new this works!!!!------->
<select name="list" id="list" accesskey="target">
    <option value='none' selected>Select a Country</option>
    <option value="burkinafaso2.php">Burkina Faso</option>
    <option value="ex2.php">Example3 Export</option>
   <!-- <option value="ex4.html">Blob of CSV info</option>-->
    <option value="ex5.html">Example5</option>
    <option value="BKMap.htm">map</option>
    <option value="map2.htm">map 2</option>
    <option value="map3.php">map 3</option>
   
<select>
<input type=button value="Go" onclick="goToNewPage()" />
<br>
</br>

</table>

</body>
</html>

