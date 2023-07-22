<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="java.io.*" %>
    
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
SONGS:
</div>

<div class="container" style=" padding-top: 20px">
<%String mname=request.getParameter("mname"); 
%>
<img src="images/<%=mname%>.jpg" alt="MyWeb" width="240" height="400;" style="display: inline; float: left">
<ul class="list-group" style="font-weight: bold; font-size: x-large; display: inline; float: right">
<% 
File f=new File("d:\\MusicWeb\\"+mname);
File files[]=f.listFiles();
for(File file:files){%>
  <li class="list-group-item"><a href="play.jsp?mname=<%=mname %>&sname=<%=file.getName()%>"> <%=file.getName()%></a> <br></li>
	
<% }%>
</ul>

</div>
<div style="     text-align: center;     background-color: black;     color: #fefcfc;     font-size: 18px;     max-height: 30px;     margin-top: 500px; margin-bottom: 50px">
        copyright 2023 MyMusic
    </div>
</body>
</html>