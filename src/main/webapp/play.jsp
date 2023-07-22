<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="jumbotron text-center" style="minimum-hight: 300px; background-color: white">

    <a href="index.jsp"> <img src="images/MusicWeb.jpg" alt="MyWeb" width="1500" height="300"> </a>
  
</div>
<div class="container" style="background-color: #FFFCD5; color: red; font-weight: bold; font-size: x-large; text-align: center">
 <%String sname=request.getParameter("sname");
 String mname=request.getParameter("mname");%>
 <h1><%=sname %></h1>
</div>
<div class="container" style=" padding-top: 20px">
<img src="images/<%=mname%>.jpg" alt="MyWeb" width="240" height="400;" style="display: inline; float: left">


		<audio controls='controls' autoplay='autoplay' style="display: inline; float: right">
		<source src='MusicWeb/<%=mname%>/<%=sname%>' type='audio/mp3'> </audio>
		
</div>

<div style="     text-align: center;     background-color: black;     color: #fefcfc;     font-size: 18px;     max-height: 30px;     margin-top: 500px; margin-bottom: 50px">
        copyright 2023 MyMusic
    </div>
</body>
</html>