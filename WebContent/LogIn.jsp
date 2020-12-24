<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
</head>
<body>
<header>
<div id="head">
<table style="height:92px;">
  <tr>
  	<td style="width:33.3%"><img src="${pageContext.request.contextPath}/image/logo.jpg"  style="width:120px"></td>
    <td style="text-align:center;width:60.3%">Job-Search</td>
   	<td style="text-align:center;width:53.3%">Log-in</td>
  </tr>
  
</table>
</div>
</header>

<div style="margin-top: 10%;margin-bottom:20%;margin-left:40%;margin-right:30%;border:solid black 1px;background-color:#25C4EA">
	<form action="login" method="post" >
	<table  border=1 >
		<tr ><td style="width:25%;text-align: center;font-size: 150% ">Name     :</td> <td style="color:#3A72BB;width:25%;text-align: center"><input type="text" name="username"style="width:90%;height:20px"></td></tr>
		<tr><td style="width:25%;text-align: center;font-size: 150% ">Password :</td><td style="color:#3A72BB;width:25%;text-align: center"> <input type="password" name="password"style="width:90%;height:20px"></td></tr>
		
	</table>
	<input type="submit" value="Login" style="height:40px;width:100px;background-color:#25C4EA;font-size:20px;">	
	</form>
	
	<form action="index.jsp" >
	 	<input type="submit" value="Cancel" style="height:40px;width:100px;background-color:#25C4EA;font-size:20px;">
	 </form>
</div>		
	<% if(application.getAttribute("flag").equals("password")){%>
		
		<p style="color:red">Your Password or Username is wrong.</p>
		<%}else if(application.getAttribute("flag").equals("notRegister")){%>
			<p style="color:red">You haven't registered yet.</p>
		<%}%>
		
		
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
</body>
</html>