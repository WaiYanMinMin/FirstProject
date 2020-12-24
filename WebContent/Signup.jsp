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
  	<td><img src="${pageContext.request.contextPath}/image/logo.jpg"   style="width:33.3%"></td>
    <td style="text-align:center;width:50%">Job-Search</td>
   	<td style="text-align:center;width:50%">Sign-up</td>
  </tr>
  
</table>
</div>
</header>


<div style="margin-top: 10%;margin-bottom:20%;border:solid black 1px">
<form action="Signup" method="post">
<div >
<table id="table">
<tr><td style="color:#3A72BB;width:25%;text-align: center">Photo</td><td><input type="file" onchange="stringifyImage(this)" /></td></tr>
<tr><td style="color:#3A72BB;width:25%;text-align: center" >Name:</td><td style="width:25%"><input type="text" name="username" ></td>
<td style="color:#3A72BB;width:25%;text-align: center" >e-mail:</td><td style="width:25%"><input type="email" name="email"></td></tr>
<tr ><td style="color:#3A72BB;width:25%;text-align: center" >Password:</td><td style="width:25%"><input type="text" name="password"></td>
<td style="color:#3A72BB;width:25%;text-align: center" >Confirm Password:</td><td style="width:25%"><input type="text" name="confirmpassword"></td></tr>
<tr ><td style="color:#3A72BB;width:25%;text-align: center" >Age:<br></td><td style="width:25%"><input type="text" name="age"></td>
<td style="color:#3A72BB;width:25%;text-align: center" >Address:</td><td><textarea  name="address" rows="4" cols="50" ></textarea></td></tr>
<tr ><td style="color:#3A72BB;width:25%;text-align: center" >University:</td><td style="width:25%"><input type="text" name="education"></td></tr>
</table>
</div>
<input type="submit" value="Sign Up" style="color:#247DDB ">
</form>	

	<form action="index.jsp" >
	 	<input type="submit" value="cancel" style="color:#247DDB ">
</form>
<% if(application.getAttribute("flag").equals("empty")){%>
		 <p style="color:red">Please fill all the fields.</p>
	 <%}else if(application.getAttribute("flag").equals("password")){%>
		 <p style="color:red">Your passwords do not match.</p>
	<% }else if( application.getAttribute("flag").equals("exist")){%>
		 <p style="color:red">The username already exists.</p>
	 <%}%>
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
 <a href="about.html">About Developer</a>
</td>
<td style="width:50px;text-align: center">
 <a href="help.html">Help and Support</a>
</td>
<td style="width:25%;text-align: center">
 <a href="terms.html">terms and condition</a>
</td>
<td style="width:25%;text-align: center">
 <a href="contact.html">contact</a>
</td>
</tr>
 </table>
</footer>
<script type="text/javascript">
	function stringifyImage(element) {
      	var file = element.files[0];
      	var reader = new FileReader();
      	reader.onloadend = function() {
       
        localStorage.setItem('profilePic',reader.result)
      }
      reader.readAsDataURL(file);
    }
	</script>	 
</body>
</html>