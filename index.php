<?php
session_start(); /// initialize session
include("passwords.php");
check_logged(); /// function checks if visitor is logged.
//If user is not logged the user is redirected to login.php page 
?>
<html>
<head>
<style>
body {
    background: url(2.jpg), url(2.jpg);
    background-size: 100% 100%;
    background-repeat: no-repeat;
}
</style>
<body>
<h3>
<center>
<p style="text-shadow:2px 2px 8px orange;">Welcome to RAMIR!</p></h3>
<h3> <p style="text-shadow:2px 2px 8px orange;">Rural Area Microgrid Implementation Repository!</p>
</head>
<div style="letter-spacing:12px;"></div>
<div style="color:#000000;"></div>
<br>
</br>
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
</center>
</body>
</html>

