<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Bootstrap Example</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 <script>
 /* 
  function validate()
  {
	  
	  mess="<br><div class='alert alert-success'><strong>Please Check!</strong> You should enter corret details to enter in the page.</div>";
	  
	  if(!ch_number()|| !ch_address() || !ch_pincode() || !ch_pass() || !check_pass()|| !ch_email())
	 {
		  document.getElementById("sub").innerHTML=mess;
		  return false;
		  
	 }
	  else
		  {
		       return true;
		  }
  }
 */
 
 
  function ch_number()
  {
	  errnumber="";
	  var x=document.getElementById("mobile").value;
	  var pat=/^[7-9][0-9]{9}$/
	  if(pat.test(x))
	  {
		  errnumber="Entered Number is valid";
		  document.getElementById("pnumber").innerHTML=errnumber;
		  return true;
      }
	  else
	  {
		  errnumber="Entered Number is invalid";
		  document.getElementById("pnumber").innerHTML=errnumber;
		  return false;	  
	  }
  }

  function ch_address()
  {
	  errmsg="";
		var addr = document.getElementById("addressl").value;
		
		if(addr == "" || addr.length<6)
		{
			//errmsg=" ";
			document.getElementById("errp").innerHTML = 'Address should be maximum 6 characters';
			return false;
		}
		else
		{
			//errmsg="";
			document.getElementById("errp").innerHTML = 'Entered value is correct.';
		return true;
		}
  }
  
  function ch_pincode()
  {
	  errnumber="";
	  var x=document.getElementById("pincode").value;
	  var pat=/^[0-9]{6}$/
	  if(pat.test(x))
	  {
		  errnumber="Entered Pincode is correct";
		  document.getElementById("pinmess").innerHTML=errnumber;
		  return true;
      }
	  else
	  {
		  errnumber="The entered pincode is less than 6 digit number, please check";
		  document.getElementById("pinmess").innerHTML=errnumber;
		  return false;	  
	  }
  } 
  function ch_pass()
  {

  	errpss="";
  	var pp=document.getElementById("password").value;
  		
  	//var regexp = new RegExp(var);

  	if((pp.match(/[a-z]/g) && pp.match(/[A-Z]/g)&& pp.match(/[0-9]/g) && pp.length>=8))
  	{
  			errpss="Correct Message";
  			document.getElementById("passerr").innerHTML=errpss;
  		
  		return true;
  	}
  	else{
  			errpss="Password length should be more than 8 charaters should also contain one Special charater,number and uppercase letter";
  		document.getElementById("passerr").innerHTML=errpss;
  	  	return false;
  	
  	}


  }

  function check_pass()
  {
    errormessagge="";
  	var tp=document.getElementById("password").value;
  	var rp=document.getElementById("passwordr").value;
  	
  	if(tp!=rp)
  	{
  		
  		errormessagge="Password Mismatch";
  		document.getElementById("errorp").innerHTML=errormessagge;
  	
  		return false;
  	}
  	else
  	{
  		errormessagge="Correct Password";
  		document.getElementById("errorp").innerHTML=errormessagge;
  		return true;
  	}

  }
  function ch_email()
  {
  var mail=document.getElementById('email').value;
  var mail_pattern=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

  if(mail=='')
  {
  document.getElementById('ch_email').innerHTML='Enter Your E-MailID';
  return false;
  }
  else if(mail_pattern.test(mail)==false)
  {
  document.getElementById('ch_email').innerHTML='Entered Email Id is Invalid';
  return false;
  }
  else
  {
  document.getElementById('ch_email').innerHTML='Entered Email Id is Valid';
  }
  }  
 
 </script>
</head>
<body>

<%

%>
<form action="add_new_user.jsp" onsubmit="return validate()">
      <div class="container">
             <h2>Registration</h2>
       <div class="form-group" >
             <label for="mobile">Mobile-Number *</label>
             <input type="text" class="form-control" id="mobile" placeholder="Number" onblur="ch_number()"name="mobile">
        <div id="pnumber"></div>
        </div>
       
       <div class="form-group" >
             <label for="mobile">Name *</label>
             <input type="text" class="form-control" id="name" placeholder="Number" onblur="ch_number()" name="name">
        <div id="pnumber"></div>
        </div>
         
        
        
        <div class="form-group" >
               <label for="Pwd">Password *</label>
               <input type="password" class="form-control" id="password" placeholder="Enter password"  onblur="ch_pass()" name="password">
       <div id="passerr"></div>
       </div>
       <div class="form-group" >
              <label for="Pwd">confirm-Password *</label>
              <input type="password" class="form-control" id="passwordr" placeholder="Re-Enter password" onblur="check_pass()" name="cnfpassword" >
        <div id="errorp"></div>
        </div>
       <div class="form-group">
               <label for="email">Email *</label>
               <input type="email" class="form-control" id="email" placeholder="Enter email" onblur="ch_email()" name="email" >
         <div id="ch_email"></div>
         </div>      
        <div class="form-group">
             <label for="address">Address Line 1 *</label>
             <input type="text" class="form-control" id="address" placeholder="Enter the full address" name="address" onblur="ch_address()" >
             <div id="errp"></div>
        </div>
        <div class="form-group">
             <label for="address">Address Line 2(optional)</label>
             <input type="text" class="form-control" id="address1" placeholder="Enter the full address" name="address1" onblur="ch_address()">
             <div id="errp"></div>
        </div>
        <div class="form-group">
             <label for="city">City *</label>
             <input type="text" class="form-control" id="city" placeholder="Enter city" name="city" required>
        </div>
        <div class="form-group">
             <label for="pincode">Pincode *</label>
             <input type="number" class="form-control" id="pincode" placeholder="Enter pincode" name="pincode" onblur="ch_pincode()">
             <div id="pinmess"></div>
        </div>
        
        <div>
        <p><input type="checkbox" required> Please accept our term and conditions !!!</p>
        
        </div>
        <input type="submit" value="submit" class="btn btn-dark form-control" onclick="validate()">
       <br>
        <div id="sub"></div>
       
       </div>
       
       <br><br><br><br><br>
       
</form>
</body>
</html>
