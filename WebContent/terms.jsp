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
<div style="border:1px solid black;width:400 px;text-align: center;color:#25C4EA ">
	<h3>1.1 Contract</h3>
<p>When you use our Services you agree to all of these terms. Your use of our Services is also subject to our Cookie Policy and our Privacy Policy, which covers how we collect, use, share, and store your personal information.

You agree that by clicking here or similar, registering, accessing or using our services (described below), you are agreeing to enter into a legally binding contract with LinkedIn (even if you are using our Services on behalf of a company). If you do not agree to this contract (“Contract” or “User Agreement”), do not click “Join Now” (or similar) and do not access or otherwise use any of our Services. If you wish to terminate this contract, at any time you can do so by closing your account and no longer accessing or using our 
Services.</p>

<h3>Services</h3>
<p>This Contract applies to LinkedIn.com, LinkedIn-branded apps, LinkedIn Learning and other LinkedIn-related sites, apps, communications and other services that state that they are offered under this Contract (“Services”), including the offsite collection of data for those Services, such as our 
ads and the Apply with LinkedIn and Share with LinkedIn plugins. Registered users of our Services are Members and unregistered users are Visitors.</p>

<h3>JobSearch</h3>
<p>You are entering into this Contract with LinkedIn (also referred to as we and us).

We use the term Designated Countries to refer to countries in the European Union (EU), European Economic Area (EEA), and Switzerland.

If you reside in the Designated Countries, you are entering into this Contract with LinkedIn Ireland Unlimited Company (“LinkedIn Ireland”) and LinkedIn Ireland will be the controller of your personal data provided to, or collected by or for, or processed in connection with our Services.

If you reside outside of the Designated Countries, you are entering into this Contract with LinkedIn Corporation (LinkedIn Corp.) and LinkedIn Corp. will be the controller of your personal data provided to, or collected by or for, or processed in connection with our Services.

This Contract applies to Members and Visitors.
<br>
As a Visitor or Member of our Services, the collection, use and sharing of your personal data is subject to this Privacy Policy (which includes our Cookie Policy and other documents referenced in this Privacy Policy) and updates.<p>

<h3>1.2 Members and Visitors</h3>
When you register and join the LinkedIn Services, you become a Member. If you have chosen not to register for our Services, you may access certain features as a “Visitor.”

<h3>1.3 Change</h3>
We may make changes to the Contract.

We may modify this Contract, our Privacy Policy and our Cookies Policy from time to time. If we make material changes to it, we will provide you notice through our Services, or by other means, to provide you the opportunity to review the changes before they become effective. We agree that changes cannot be retroactive. If you object to any changes, you may close your account. Your continued use of our Services after we publish or send a notice about our changes to these terms means that you are consenting to the updated terms as of their effective date.
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