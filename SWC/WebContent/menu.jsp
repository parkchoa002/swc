<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/menu.css">

</head>
<body>
<div class="menu_container">


<div class="topnav_menu" id="myTopnav">
  <a href="#news">게시판1</a>
  <a href="#contact">게시판1</a>
  <a href="#about">게시판1</a>
  <a href="javascript:void(0);" class="icon_menu" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>
</div>
<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>

</body>
</html>
