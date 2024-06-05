<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">

function login() 
{
alert("Hello Login");

var un=document.getElementById("un").value;
var ps=document.getElementById("ps").value;

alert(un);
alert(ps);

var req=new XMLHttpRequest();
var url="http://localhost:8085/getConsumeData/"+un+"/"+ps+"";
req.open("GET",url,true);
req.send();

req.onreadystatechange=function()
{
	alert("Hi");
	if(req.readyState==4 && req.status==200)
		{
		alert(req.responseText);
		}
	}
}



</script>


<body>
<form action="log">
UserName
<input type="text" name="un" id="un">
Password
<input type="text" name="ps" id="ps">
<input type="button" value="login" onclick="login()">
<a href="reg">New User</a>
</form>
</body>
</html>