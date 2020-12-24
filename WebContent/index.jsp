<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="HomeStyle.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>


 


</head>
<body >
<%! 
static int a=0;
public int increase(){
	a++;
	return a;
}
%>	
<% if(a==0){
	 application.setAttribute("flag", "null");
	 increase();
	 }
	%>
	
<header>
<div id="head">
<table style="height:92px;">
  <tr>
  	<td><img src="${pageContext.request.contextPath}/image/logo.jpg"  style="width:33.3%"></td>
    <td style="text-align:center;width:33.3%">Job-Search</td>
    
    <td class="buttons" style="width:33.3%"><div>
	<a href="LogIn.jsp" >Login</a>  |
	<a href="Signup.jsp">Sign up</a></div></td>
	
  </tr>
  
</table>
</div>
</header>
<div class="column">
<table>
<tr>
<td>
<div class="slideshow-container">	
<div class="mySlides">
  <div class="numbertext">1 / 3</div>
  <img src="${pageContext.request.contextPath}/image/image1.jpg" style="width:100%">
 
</div>

<div class="mySlides" >
  <div class="numbertext">2 / 3</div>
  <img src="${pageContext.request.contextPath}/image/image4.jpg" style="width:100%">
 
</div>

<div class="mySlides">
  <div class="numbertext">3 / 3</div>
  <img src="${pageContext.request.contextPath}/image/image3.jpg" style="width:100%">
 
</div>

</div>



<div >
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
</td>

</tr>
<tr><td>
<div class="sponsor">
		<h4 style="font-family: "Lucida Bright", Georgia, serif;">Connected with</h4>
		<table>
		<tr>
		<td><img src="${pageContext.request.contextPath}/image/microsoft.png" style="width:50px">Microsoft</td>
		<td><img src="${pageContext.request.contextPath}/image/alibaba.jpg" style="width:50px">Alibaba</td>
		</tr>
		<tr>
		<td><img src="${pageContext.request.contextPath}/image/ace.jpg" style="width:50px">Ace Data System</td>
		<td><img src="${pageContext.request.contextPath}/image/amazon.jpg" style="width:50px">Amazon</td>
		</tr>
		</table>
		<br>
		
		<h4 style="font-family: "Lucida Bright", Georgia, serif;">and more than Ten Thousands of high paying companies. </h4>
	</div>
</td></tr>
</table>	
</div>

<div class="column">
	<img src="${pageContext.request.contextPath}/image/signupnow.png" style="width:100%">
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

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>	
	 
</body>
</html>