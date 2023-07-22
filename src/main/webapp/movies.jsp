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
<body style="background-color: white">
<div class="jumbotron text-center" style="minimum-hight: 300px; background-color: white">

    <a href="index.jsp"> <img src="images/MusicWeb.jpg" alt="MyWeb" width="1500" height="300"> </a>
  
</div>
<div class="container" style="background-color: #FFFCD5; color: red; font-weight: bold; font-size: x-large; text-align: center">
MOVIES:
</div>
<div class="container" style="margin-top: 30px">
<ul class="list-group" style="font-weight: bold; font-size: x-large">

<% String mname=request.getParameter("mname");
    File f=new File("d:\\MusicWeb");
    File files[]=f.listFiles();
    for(File file:files)
    {
    	if(file.getName().startsWith(mname)){%>
  <li class="list-group-item" style="margin-top: 10px">   <img src="images/<%=file.getName()%>.jpg" alt="MyWeb" width="120" height="200">
  <a href="songs.jsp?mname=<%=file.getName() %>"><%=file.getName() %></a><br>
    		<%} %>
    <%}

%> 
</ul>
</div>
<div style="     text-align: center;     background-color: black;     color: #fefcfc;     font-size: 18px;     max-height: 30px;     margin-top: 500px; margin-bottom: 50px">
        copyright 2023 MyMusic
    </div>
</body>
</html>