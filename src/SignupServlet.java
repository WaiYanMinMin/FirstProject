
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		int flag=0;
		ServletContext ctx=request.getServletContext();
	
			if(request.getParameter("username").isEmpty()|| request.getParameter("password").isEmpty() ||  request.getParameter("confirmpassword").isEmpty() ||
			   request.getParameter("age").isEmpty() || request.getParameter("address").isEmpty() || request.getParameter("education").isEmpty()) {
				ctx.setAttribute("flag","empty");
			}else if(!request.getParameter("confirmpassword").equals(request.getParameter("password"))) {
				ctx.setAttribute("flag","password");
			}else if(request.getParameter("username").equals(ctx.getAttribute("username"+request.getParameter("username")))){
				ctx.setAttribute("flag","exist");
			}else {
				ctx.setAttribute("flag","success");
				
				ctx.setAttribute("username"+request.getParameter("username"),request.getParameter("username"));
		        ctx.setAttribute("password"+request.getParameter("username"),request.getParameter("password"));
		        ctx.setAttribute("email"+request.getParameter("username"),request.getParameter("email"));
				ctx.setAttribute("age"+request.getParameter("username"),request.getParameter("age"));
				ctx.setAttribute("address"+request.getParameter("username"),request.getParameter("address"));
				ctx.setAttribute("education"+request.getParameter("username"),request.getParameter("education"));
				request.getRequestDispatcher("regtologin.jsp").forward(request,response);
				flag=1;
		} 
			if(flag==0) {
			request.getRequestDispatcher("Signup.jsp").forward(request,response);
			}
	}
   
	
}