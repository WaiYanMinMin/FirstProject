import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html");
		String Username,password;
		
		PrintWriter out=response.getWriter();
		Username = request.getParameter("username");
		password = request.getParameter("password");
		
		
		
		
		
		int flag=0;
		ServletContext context = getServletContext();
		
			
			if(context.getAttribute("username"+Username)!=null) {
			if(Username.equals(context.getAttribute("username"+Username)) && password.equals(context.getAttribute("password"+Username))) {
				
				HttpSession session = request.getSession();
				session.setAttribute("username", Username);
				session.setAttribute("age", context.getAttribute("age"+Username));
				session.setAttribute("address", context.getAttribute("address"+Username));
				session.setAttribute("education", context.getAttribute("education"+Username));
				session.setAttribute("email", context.getAttribute("email"+Username));
				flag=1;
				
			}
			
		
		 if(flag==0) {
					
					
					context.setAttribute("flag","password");
					request.getRequestDispatcher("LogIn.jsp").include(request,response);
		 }
			}else {
				
				
				context.setAttribute("flag","notRegister");
				request.getRequestDispatcher("LogIn.jsp").include(request,response);
			}
		
		if(flag==1) {
			context.setAttribute("flag","successlogin");
			request.getRequestDispatcher("index2.jsp").forward(request,response);
			
		}
		
		
	
}		

}		
	
