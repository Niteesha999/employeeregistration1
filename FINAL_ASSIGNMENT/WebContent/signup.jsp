<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="ISO-8859-1">

<title>Sign up</title>

<script type="text/javascript">

  function validate()

  {
	  var eid=document.getElementById("eid").value;
	  var first=document.getElementById("first").value;
	  var last=document.getElementById("last").value;
	  var phone=document.getElementById("phone").value;
	  var email=document.getElementById("email").value;
	  var desi=document.getElementById("desi").value;
	  var add=document.getElementById("add").value;
	  var sal=document.getElementById("sal").value;

	  var pass=document.getElementById("pass").value;

	  var cpass=document.getElementById("cpass").value;
	  
	  if(eid=="")

	  {

	     document.getElementById("eiderror").innerHTML="Please enter Employee ID...";

	     return false;

	  }

  else

	  {

	     document.getElementById("eiderror").innerHTML="";

	  }
	  
	  if(first=="")

	  {

	     document.getElementById("firsterror").innerHTML="Please enter First name...";

	     return false;

	  }

  else

	  {

	     document.getElementById("firsterror").innerHTML="";

	  }
	  
	  
	  
	  if(last=="")

	  {

	     document.getElementById("seconderror").innerHTML="Please enter Last name...";

	     return false;

	  }

  else

	  {

	     document.getElementById("seconderror").innerHTML="";

	  }
	  
	  
	  if(phone=="")

	  {

	     document.getElementById("phoneerror").innerHTML="Please enter phone number...";

	     return false;

	  }

  else

	  {

	     document.getElementById("phoneerror").innerHTML="";

	  }
	  
	  
	  if(email=="")

	  {

	     document.getElementById("emailerror").innerHTML="Please enter Email...";

	     return false;

	  }

  else

	  {

	     document.getElementById("emailerror").innerHTML="";

	  }
	  
	  
	  
	  if(desi=="")

	  {

	     document.getElementById("desierror").innerHTML="Please enter designation...";

	     return false;

	  }

  else

	  {

	     document.getElementById("desierror").innerHTML="";

	  }
	  
	  
	  if(add=="")

	  {

	     document.getElementById("adderror").innerHTML="Please enter address...";

	     return false;

	  }

  else

	  {

	     document.getElementById("adderror").innerHTML="";

	  }
	  
	  if(sal=="")

	  {

	     document.getElementById("salerror").innerHTML="Please enter salary...";

	     return false;

	  }

  else

	  {

	     document.getElementById("salerror").innerHTML="";

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

	  

	  if(cpass=="")

	  {

		     document.getElementById("cpasserror").innerHTML="Please re-enter password...";

		     return false;

	 }

	  else

	 {

		     document.getElementById("passerror").innerHTML="";

	 } 

	  if(cpass != pass)

	  {

		     document.getElementById("cpasserror").innerHTML="please enter same password";

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
			color:white;
			background-color: black;
			margin: 0;
			text-align:center;
			
		}
		
		h1{
			background-color: forestgreen;
			color: white;
			padding: 10px;
			text-align: center;
		}
		
		h5{
			background-color: lightgreen;
			color: white;
			padding: 10px;
			text-align: center;
		}
		table{
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
  background-color: green;
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

        <legend><h1>Employee Sign up form</h1></legend>

        <form onsubmit="return validate()" action="signupServlet" method="post" class="container">
        <table>
                  <tr>
                        <td>Employee ID: </td>

                        <td><input type="text" style="background-color:lightgrey;" id="eid" name="eid" placeholder="Enter Employee ID" >
                        <span style="color:red" id="eiderror">*</span></td>
                        
                    </tr>
               
				  <tr>
                        <td>First name:</td>

                        <td><input type="text" id="first" name="first" placeholder="Enter firstname">

                        <span style="color:red" id="firsterror">*</span></td>
                        
                   </tr>
                   <tr>
                   

                        <td>Last name:</td>

                        <td><input type="text" id="last" name="last" placeholder="Enter lastname">

                       <span style="color:red" id="seconderror">*</span></td>
                        
                    </tr>
                    
                  <tr>
                        <td>Phone number:</td>

                        <td><input type="text" id="phone" name="phone" placeholder="Enter phone number">

                        <span style="color:red" id="phoneerror">*</span></td>
                        
                   </tr>

                    
                 <tr>
                       <td>Email:</td>

                       <td><input type="email" id="email" name="email" placeholder="Enter email">

                       <span style="color:red" id="emailerror">*</span></td>
                        
                  </tr>
                  <tr>

                       <td>Designation:</td>

                        <td><input type="text" id="desi" name="desi" placeholder="Enter designation">

                        <span style="color:red" id="desierror">*</span></td>
                        

                   </tr>
                    
                    
                 <tr>
                        <td>Address:</td>

                        <td><input type="text" id="add" name="add" placeholder="Enter address">

                        <span style="color:red" id="adderror">*</span></td>
                </tr>
                   
                    
                <tr>
                    
                    <td>Gender:</td>
                    <td><input type="radio" id="male" name="gender" value="male">
                     <label for="male">Male</label>
                     <input type="radio" id="female" name="gender" value="female">
                      <label for="female">Female</label>
                      <span style="color:red" id="gendererror">*</span></td>
                      
                </tr>      
                      
                   
                <tr>
                   <td>Major Specialization:</td>
                           <td><input type="radio" id="s1" name="skill" value="java">JAVA
                           <input type="radio" id="s2" name="skill" value="c"> C
                            <input type="radio" id="s3" name="skill" value="cp"> C++
                           <input type="radio" id="s4" name="skill" value="html"> HTML
                           <span style="color:red" id="skillerror">*</span></td>
                           
                           
                   </tr>        
                           
                            
                    
                    
                    
               <tr>
                        <td>Salary:</td>

                       <td><input type="number" id="sal" name="sal" min="1" max="100000000" placeholder="Enter salary">

                        <span style="color:red" id="salerror">*</span></td>
                        
                </tr>
                        
                        

                    
                   <tr>
                        <td>Password:</td>

                        <td><input type="password" id="pass" name="pass" placeholder="Enter password">

                        <span style="color:red" id="passerror">*</span></td>
                        
                   </tr>
                        

                    
                <tr>
                        <td>Confirm Password:</td>

                        <td><input type="password" id="cpass" name="cpass" placeholder="Enter same password">

                        <span style="color:red" id="cpasserror">*</span></td>
                        
                </tr>        
                       

                   
                <tr>
                    <td><input type="submit" value="register"></td>
                    
                </tr>
                </table>    

                    

             

        </form>

        <br>

        <hr>

        Already User?<h5><a href="Login.jsp">Login</a></h5>

      </fieldset>

 </div>

</body>

</html>