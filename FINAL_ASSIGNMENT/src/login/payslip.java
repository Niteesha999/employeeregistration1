package login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class payslip
 */
@WebServlet("/payslip")
public class payslip extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public payslip() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		int sal=Integer.parseInt(request.getParameter("salary"));
		
		double da,hra,pf,gp=0.00,np=0.00;
        da = 0.30*sal;
        hra=12*sal;
        pf=0.12*sal;
        gp = sal+da+hra;
        np = gp - pf;
        out.println("<html><body style=text-align:center;");
        out.println("<head><style>\r\n"
        		+ "		body{\r\n"
        		+ "			font-family: \"comic sans ms\", sans serif;\r\n"
        		+ "			color:white;\r\n"
        		+ "			background-color: black;\r\n"
        		+ "			margin: 0;\r\n"
        		+ "			text-align:center;\r\n"
        		+ "			\r\n"
        		+ "		} </style></head>");
        out.println("<u>PAY SLIP</u>");
        out.println("<br><br>");
        out.println("<h3>************************</h3>");
        out.print("<br><br>");
        out.println("<h3 style=background-color:darkgreen;>Gross salary:"+gp+"</h3>");
        out.print("<br><br>");
        out.println("<h3 style=background-color:darkgreen;>Net salary:"+np+"</h3>");
        out.print("<br><br>");
        out.println("<h3>************************</h3>");
        out.println("</body></html>");
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
