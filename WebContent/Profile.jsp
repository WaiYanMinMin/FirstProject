<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

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

<title>Insert title here</title>
</head>
<body>
<header>
<div id="head">
<table style="height:92px;">
  <tr>
  	<td><img src="${pageContext.request.contextPath}/image/logo.jpg"  style="width:25%;height:5%" ></td>
    <td style="text-align:center;width:25%">Job-Search</td>
    <td style="text-align:center;width:25%" ><p>Profile</p></td>
    <td  style="text-align:center;width:25%"><span style="text-color:#4ACFEE"><%= session.getAttribute("username") %></span></td>

	
	
  </tr>
  
</table>
</div>
</header>
<div style="margin-top: 10%;margin-bottom:20%;border:solid black 1px;background-color:#25C4EA">
<table  border=1 style="width:100%" >
<%if(session.getAttribute("username")!=null) {%>
<tr><td>Photo</td><td><img class="image" src="" id="tableBanner" width="150px" /></td></tr>
<tr><td style="font-size: 150% ;">Name:</td><td style="font-size: 150%"><%=session.getAttribute("username")%></td></tr>
<tr><td style="font-size: 150% ">Age:</td><td style="font-size: 150%"><%=session.getAttribute("age")%></td></tr>
<tr><td style="font-size: 150% ">Address:</td><td style="font-size: 150% "><%=session.getAttribute("address")%></td></tr>
<tr><td style="font-size: 150% ">E-mail:</td><td style="font-size: 150% "><%=session.getAttribute("email")%></td>
<tr><td style="font-size: 150% ">University:</td><td style="font-size: 150% "><%=session.getAttribute("education")%></td></tr>
	
</table>
<form action="index2.jsp" >
	 	<input type="submit" value="Go Back" style="height:40px;width:100px;background-color:#25C4EA;font-size:20px;">
    </form>
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
<%}%>
	<script>
	    var dataImage = localStorage.getItem('profilePic');
	    bannerImg = document.getElementById('tableBanner');
	    bannerImg.src = dataImage;
  	</script>
</body>
</html>