package login;

import java.io.IOException;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

@WebServlet("/signupServlet")

public class signupServlet extends HttpServlet {

private static final long serialVersionUID = 1L;   

    public signupServlet() {

        super();

        // TODO Auto-generated constructor stub

    }

	/**

	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)

	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// TODO Auto-generated method stub

		response.getWriter().append("Served at: ").append(request.getContextPath());

	}

	/**

	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)

	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException         {

		// TODO Auto-generated method stub

		//doGet(request, response);
		String eid=request.getParameter("eid");
		String first=request.getParameter("first");
		String last=request.getParameter("last");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String desi=request.getParameter("desi");
		String add=request.getParameter("add");
		String gender=request.getParameter("gender");
		
		String skill=request.getParameter("skill");
		
		String sal=request.getParameter("sal");

		String pass=request.getParameter("pass");

		String cpass=request.getParameter("cpass");

		PreparedStatement stmt;

		ResultSet rs;

		Connection con;

		RequestDispatcher rd;

		try 

		{

			Class.forName("com.mysql.cj.jdbc.Driver");

			con=DriverManager.getConnection("jdbc:mysql://localhost/youtube","root","niteesha");

			String sql="insert into login2(firstname,lastname,phone,email,designation,address,gender,skills,salary,password,empid) values(?,?,?,?,?,?,?,?,?,?,?)";

			stmt=con.prepareStatement(sql);

			stmt.setString(1,first);

			stmt.setString(2,last);
			stmt.setString(3,phone);
			stmt.setString(4,email);
			stmt.setString(5,desi);
			stmt.setString(6,add);
			stmt.setString(7,gender);
		
			stmt.setString(8,skill);
			stmt.setString(9,sal);
			stmt.setString(10,pass);
			stmt.setString(11,eid);
			

			int row=stmt.executeUpdate();

			if(row>0)

			{

				request.setAttribute("status","Successfully Signed up... Now you can Login.");

				rd=request.getRequestDispatcher("Login.jsp");

				rd.forward(request, response);

			}		

			else

			{

				request.setAttribute("status","Failed to sign up....! Please Try again.");

				rd=request.getRequestDispatcher("signup.jsp");

				rd.forward(request, response);		

			}

		} 

		catch (Exception e) 

		{

			e.printStackTrace();

		}

	}


}