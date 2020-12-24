<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
 header{
	background:#25C4EA;
	
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
table td{
font-family: "Lucida Bright", Georgia, serif; font-size: 24px; font-style: normal; font-variant: normal; font-weight: 1000; line-height: 80px;
}
.alert {
  padding: 20px;
  background-color: green;
  color: white;
}

.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
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
  	<td><img src="${pageContext.request.contextPath}/image/logo.jpg"  style="width:25%;height:5%" ></td>
    <td style="text-align:center;width:25%">Job-Search</td>
    
    <td  style="text-align:center;width:25%">Name<br><span style="text-color:#4ACFEE"><%= session.getAttribute("username") %></span></td>

	<td style="text-align:center;width:25%" ><a href="Logout.jsp">Logout</a></td>
	
  </tr>
  
</table>
</div>
</header>

<% if(application.getAttribute("flag")!="null"){%>
		<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Login Success!</strong>Welcome <%=session.getAttribute("username") %>.
</div>
<% application.setAttribute("flag", "null");
} %>
<div style="border:1px solid black;margin-top: 10%;margin-bottom:20%;background-color: #25C4EA">
<table style="height:92px;">
  <tr>
  	
    
    <td  style="width:33.3%;"><div><a href="Profile.jsp">Profile</a> </td>

	<td  style="width:33.3%"><a href="jobs.jsp">Find out available jobs</a> </td><td style="width:33.3%"> <a href="offers.jsp">Job Offers to You</a> </td> 
	<td  style="width:33.3%"><a href="Setting.jsp">Setting</a></div></td>
	
  </tr>
  
</table>
</div>
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