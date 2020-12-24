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
<div class="night">

<header>
<div id="head">
<table style="height:92px;">
  <tr>
  	<td><img src="${pageContext.request.contextPath}/image/logo.jpg"  style="width:25%;height:5%" ></td>
    <td style="text-align:center;width:50%">Job-Search</td>	
  </tr>
  
</table>
</div>
</header>
<div style="margin-top: 10%;margin-bottom:20%;marginborder:solid black 1px;background-color:#25C4EA">
<table border=1 width="100%">

<tr><td style="font-size: 150% "width="50%">Sale Manager</td><td style="font-size: 100%;text-align: center "width="30%"><a href="can't.html">Apply</td></tr>
<tr><td style="font-size: 150% "width="50%">Marketing</td><td style="font-size: 100%;text-align: center  "width="30%"><a href="can't.html">Apply</td></tr>
<tr><td style="font-size: 150% "width="50%">Backend Developer</td><td style="font-size: 100%;text-align: center  "width="30%"><a href="can't.html">Apply</td></tr>
<tr><td style="font-size: 150% "width="50%">Graphic Designer</td><td style="font-size: 100% ;text-align: center "width="30%"><a href="can't.html">Apply</td></tr>
<tr><td style="font-size: 150% "width="50%">Network Engineer</td><td style="font-size: 100%;text-align: center  "width="30%"><a href="can't.html">Apply</td></tr>
<tr><td style="font-size: 150% "width="50%">CEO</td><td style="font-size: 100%;text-align: center  "width="30%"><a href="can't.html">Apply</td></tr>
<tr><td style="font-size: 150% "width="50%">My Girlfriend</td><td style="font-size: 100% ;text-align: center "width="30%"><a href="can't.html">Apply</td></tr>
</table>
<form action="index2.jsp" >
	 	<input type="submit" value="Go Back" style="height:40px;width:100px;background-color:#25C4EA;font-size:20px;">
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/darkmode-js@1.5.6/lib/darkmode-js.min.js"></script>
<script type="text/javascript">
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

<footer>
<table id="foot" style="border:solid;width:100%;height:100px;background-color: #25C4EA">
<tr>
<td style="width:25%;text-align: center">
 <a href="about.jsp">About Developer</a>
</td>
<td style="width:50px;text-align: center">
 <a href="help.jsp">Help and Support</a>
</td>
<td style="width:25%;text-align: center">
 <a href="terms.jsp">terms and condition</a>
</td>
<td style="width:25%;text-align: center">
 <a href="contact.jsp">contact</a>
</td>
<tr>
 </table>
</footer>
</div>


</body>
</html>