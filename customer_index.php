<?php
    session_start();
    include("connection.php");
?>


<?php
    if($_GET["msg"]){
        $a=$_GET["msg"];
        if($a=="done"){
        echo "<script> alert('Movie Booking Successful');</script>";
        }
    }
    
?>


<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>
    MOVIE CLUB
  </title>
  <style>
ul {
  list-style-type: none;
  margin: -10px;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: right;
  border-right:1px solid #bbb;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #04AA6D;
}
</style>
  
</head>
<body background="index_images/2.jpg" >
   
   <h3 align= "center">
       <font face="Arial" size="8"><u>Movie Club</u></font>
        <img src="index_images/6.png" height="70" width="70"></img>
    </h3> 

    <h2 align= "right">
        <font face="calibri" size="6">
          <ul>
              <li><a href='movies.php'>  Movies  </a> </li>
              <li><a href='customer_comingsoon.php'>  Coming Soon  </a> </li>
              <li><a href='#'>  Offers  </a></li>
              <li><a href='About.php'>  About  </a> </li>
             <li> <a href="#">

 
                <?php
                    $a=$_SESSION["login"];
                    $find = "select * from registration where sno='$a'";
                    $result=$con->query($find);
                    $row=$result->fetch_assoc();
                    echo "profile:".$row["username"];
                ?>
              </a> </li>
              <li> <a href='logout.php'>  Logout  </a> </li>
         </font>
    </h2>
</ul> 
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
 &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;

<img src="index_images/3.gif" height="200" width="300"></img>

 &nbsp;&nbsp; &nbsp;&nbsp;

<img src="index_images/4.gif" height="200" width="300"></img>
<br /> <br />
<h1 align="right">
<img src ="index_images/7.gif"></img>
</h1>
<br /> <br /><br /> <br /><br /> <br /><br />
 <br /><br /><br /><br />
<h1 align="right">
<img src ="index_images/8.jpg"></img>
</h1>

 &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
<img src ="index_images/10.gif"></img>
<br /> <br /><br /> <br /><br /> <br /><br /> <br /><br />
<br /> <br /><br /> <br /><br /> <br /><br /> <br /><br />
<br /> <br /><br /><br />
<h1 align="right">
<img src ="index_images/9.jpg"></img>
</h1>



</body>
</html>


