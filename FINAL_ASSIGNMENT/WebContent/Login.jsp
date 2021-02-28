<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<script type="text/javascript">
  function validate()
  {
	  var email=document.getElementById("email").value;
	  var pass=document.getElementById("pass").value;
	  
	  if(email=="")
		  {
		     document.getElementById("emailerror").innerHTML="Please enter Email...";
		     return false;
		  }
	  else
		  {
		     document.getElementById("emailerror").innerHTML="";
		  }
	  
	  if(pass=="")
		  {
			     document.getElementById("passerror").innerHTML="Please enter password...";
			     return false;
			  }
		  else
			  {
			     document.getElementById("passerror").innerHTML="";
			  }
	  
	  if(pass.length<5 || pass.length>8)
		  {
		  document.getElementById("passerror").innerHTML="Password should be in betwwen 5  to 8 character..";
		  return false;
		  }
	  else
	  {
	     document.getElementById("passerror").innerHTML="";
	  }

	  return true;
  }

</script>

<style>
		body{
			font-family: "comic sans ms", sans serif;
			color:darkgrey;
			background-color: black;
			margin: 0;
			
		}
		
		h1{
			background-color: forestgreen;
			color: black;
			padding: 10px;
			text-align: center;
		}
		
		h5{
			background-color: lightgreen;
			color: white;
			padding: 10px;
			text-align: center;
		}
		td{
			padding: 7px;
		}
		input{
			height: 30px;
			border-radius: 10px;
			border: none;
			background-color: lightgrey;
			
		}
		input:submit{
		text-align:center
		}
		
		input:focus{
			outline: none;
			border: 1px solid forestgreen;
		}
		input:hover{
			box-shadow: 5px 5px 5px black;
		}
		
		.button{
			background-color: forestgreen;
			color:#fff;
			border: none;
			padding: 7px
		}
		
		.button:hover {
			cursor: pointer;
			box-shadow: 5px 5px 5px red;
		}
			.container {
  margin: 20px;
  max-width: 500px;
  padding: 16px;
  background-color: lightyellow;
}
	</style>
</head>
<body>
<div align="center">
     <fieldset>
     
     <%
         String status =(String)request.getAttribute("status");
         if(status != null)
         {
        	 out.println(status);
         }
     %>
        <legend><h1>Login</h1></legend>
        <form  onsubmit="return validate()"  action="loginServlet" method="post" class="container">
              <table>
                    <tr>
                        <td>Email : </td>
                        <td><input type="email" id="email"  name="emailid"></td>
                        <td><span style="color:red" id="emailerror" >*</span></td>
                    </tr>
                    
                     <tr>
                        <td>Password : </td>
                        <td><input type="password" id="pass" name="password"></td>
                        <td><span style="color:red" id="passerror">*</span></td>
                    </tr>
                    
                    <tr>
                    <td><input type="submit" value="login"></td>
                    </tr>
              </table>
        </form>
        <br>
        <hr>
        <h5><a href="signup.jsp">Sign Up</a></h5>
      </fieldset>
 </div>
</body>
</html>