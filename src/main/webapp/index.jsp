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

   <img src="images/MusicWeb.jpg" alt="MyWeb" width="1500" height="300">
  
</div>

<nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="container" style="padding-left: 700px">
          <form class="navbar-form navbar-left" action="songs.jsp">
            <div class="form-group">
              <input name="mname" type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
          </form>
        </div>
      </nav>

<div class="container" align="center" style="background-color: white; color: #f1f1f1; font-weight: bold; font-size: x-large; margin-top: 100px">

<% try{
for(int i=65;i<=90;i++){%>
	<a href='movies.jsp?mname=<%=(char)i%>'><%=(char)i %></a> &nbsp;&nbsp;
	<% }}
	catch(Exception e){
		
		
	}%>
</div>
<div class="container" style="margin-top: 150px; background-color: white" >
   <div class="container" style="background-color: white; color: red; font-weight: bold; font-size: x-large; text-align: center">
NEW RELEASED:
</div>
<div class="row" style="margin-top: 30px">
<% File f=new File("d:\\NewR");
    File files[]=f.listFiles();
    for(File file:files){%>
    
	<div class="col-sm-2">
	<a href="songs.jsp?mname=<%=file.getName()%>">
      <img src="images/<%=file.getName()%>.jpg" alt="MyWeb" width="120" height="200">
            <h3><%=file.getName()%></h3>
      
      </a>
    </div>
	
<% }
	%>
</div>


</div>

<div style="     text-align: center;     background-color: black;     color: #fefcfc;     font-size: 18px;     max-height: 30px;     margin-top: 500px; margin-bottom: 50px">
        copyright 2023 MusicWeb
    </div>
</body>
</html>