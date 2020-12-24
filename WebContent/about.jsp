<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
 	header{
	background:#25C4EA;
	height:120px;
	border-bottom: 1px solid #133783;
	width:100%;"
}
*{
	padding :0%;
	margin:0%;
}
#head{
	
	font-family: "Lucida Bright", Georgia, serif; font-size: 24px; font-style: normal; font-variant: normal; font-weight: 1000; line-height: 80px;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<header>
<div id="head">
<table style="height:92px;">
  <tr>
  	<td><img src="image/logo.jpg"  style="width:20%;" ></td>
    <td style="text-align:center;width:50%">Job-Search</td>	
  </tr>
  
</table>
</div>
</header>
<script src="https://cdn.jsdelivr.net/npm/darkmode-js@1.5.6/lib/darkmode-js.min.js"></script>
<script type="text/javascript">
const options = {
		  bottom: '64px', // default: '32px'
		  right: 'unset', // default: '32px'
		  left: '32px', // default: 'unset'
		  time: '0.5s', // default: '0.3s'
		  mixColor: '#fff', // default: '#fff'
		  backgroundColor: '#fff',  // default: '#fff'
		  buttonColorDark: '#100f2c',  // default: '#100f2c'
		  buttonColorLight: '#fff', // default: '#fff'
		  saveInCookies: true, // default: true,
		  label: 'ON/OFF', // default: ''
		  autoMatchOsTheme: true // default: true
		}
const darkmode = new Darkmode(options);
darkmode.showWidget();
</script>
<h1 style="text-align: center;margin-top: 10%;color:#25C4EA">About</h1>
<div style="border:1px solid black;width:400 px;text-align: center;margin-top: 5%;color:#25C4EA">
	<p>This is a website that helps you to get a job and create a successful career.When I was 16 years old,I found out that it's so hard nowadays to get a decent job.
	So,when I can finally develop a website,I tried to develop a website that is connected with lots of companies and can helps you to get a job with ease.For those,who wants to find an employee can also connect with us with just a few amount of money.The rest is our responsibility.Thank You.
	</p>
	

</div>
<%if(session.getAttribute("username")!=null) {%>
	
	<form action="index2.jsp" >
	 	<input type="submit" value="back" style="height:40px;width:100px;background-color:#25C4EA;font-size:20px;">
	 	</form>
	 <%}else if(session.getAttribute("username")==null){%>
	 	<form action="index.jsp" >
	 	<input type="submit" value="back" style="height:40px;width:100px;background-color:#25C4EA;font-size:20px;">
	 	</form>
	 <%}%>
</body>
</html>