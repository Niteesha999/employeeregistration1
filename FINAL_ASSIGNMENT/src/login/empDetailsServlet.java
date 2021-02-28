package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class empDetailsServlet
 */
@WebServlet("/empDetailsServlet")
public class empDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public empDetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	PrintWriter out=response.getWriter();
	String id=request.getParameter("id");
	
    
	out.println("<html><body style=text-align:center;");
    out.println("<head><style>\r\n"
    		+ "		body{\r\n"
    		+ "			font-family: \"comic sans ms\", sans serif;\r\n"
    		+ "			color:grey;\r\n"
    		+ "			background-color: black;\r\n"
    		+ "			margin: 0;\r\n"
    		+ "			text-align:center;\r\n"
    		+ "			\r\n"
    		+ "		} </style></head>");
    out.println("<h1><u>Employee Details</u></h1><br><br>");
	out.print("<table style=background-color:#ffffe0; align=center border=1><tr><th>First name</th>");
	out.print("<th>Last name</th>");
	out.print("<th>Phone</th>");
	out.print("<th>Email</th>");
	out.print("<th>Designation</th>");
	out.print("<th>Address</th>");
	out.print("<th>Gender</th>");
	out.print("<th>Major Specialization</th>");
	out.print("<th>Salary</th>");
	out.print("<th>Current Password</th>");
	out.print("<th>Employee ID</th></tr>");
	
	Connection con;
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost/youtube","root","niteesha");
		
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from login2 where empid="+id+"");
		while(rs.next())
		{
			out.print("<tr><td>");
			out.print(rs.getString(1));
			out.print("</td>");
			out.print("<td>");
			out.print(rs.getString(2));
			out.print("</td>");
			out.print("<td>");
			out.print(rs.getString(3));
			out.print("</td>");
			out.print("<td>");
			out.print(rs.getString(4));
			out.print("</td>");
			out.print("<td>");
			out.print(rs.getString(5));
			out.print("</td>");
			out.print("<td>");
			out.print(rs.getString(6));
			out.print("</td>");
			out.print("<td>");
			out.print(rs.getString(7));
			out.print("</td>");
			out.print("<td>");
			out.print(rs.getString(8));
			out.print("</td>");
			out.print("<td>");
			out.print(rs.getString(9));
			out.print("</td>");
			out.print("<td>");
			out.print(rs.getString(10));
			out.print("</td>");
			out.print("<td>");
			out.print(rs.getString(11));
			out.print("</td>");
			out.print("</tr>");
		}
	}
		catch (Exception p)
		{
			System.out.print(p);
		}
	
	  out.print("</table>");
	  out.print("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
