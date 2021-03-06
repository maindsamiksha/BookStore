
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Products</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


<script type="text/javascript">



function validate()
{
mess="<div class='alert alert-success'><strong>Please Check!</strong> You should enter corret details to enter in the page.</div>";

  if(!bk_name() || !bk_auther() || !bk_comm() || !bk_price() || !bk_price_dis())
  {
    document.getElementById("sub").innerHTML=mess;
    return false;
  }
  else
  {
    return true;
  }

}


  
function bk_name(){

  errmsg="";
  var bname = document.getElementById("bname").value;
  
  if(bname == "" || bname.length<5)
  {
    errmsg="Book Name should be more than 5 letters";
    document.getElementById("bnamemsg").innerHTML = errmsg;
    return false;
  }
  else
  {
    errmsg="";
    document.getElementById("bnamemsg").innerHTML = errmsg;
  return true;
  }
}


function bk_auther()
{ 
  errmsg="";
  var bauther = document.getElementById("author").value;
  
  if(bauther == "" || bauther.length<5)
  {
    errmsg="Author Name should be more than 5 letters";
    document.getElementById("bauthmsg").innerHTML = errmsg;
    return false;
  }
  else
  {
    errmsg="";
    document.getElementById("bauthmsg").innerHTML = errmsg;
  return true;
  }
}

function bk_comm(){

errmsg="";
  var bcomment = document.getElementById("description").value;
  
  if(bcomment == "" || bcomment.length<100)
  {
    errmsg="Pleae enter a detailed description of upto 100 words";
    document.getElementById("bcomm").innerHTML = errmsg;
    return false;
  }
  else
  {
    errmsg="";
    document.getElementById("bcomm").innerHTML = errmsg;
  return true;
  }

} 


function bk_price()
{

errmsg="";
  var bpri = document.getElementById("price").value;
  
  if(bpri == "" || bpri<50)
  {
    errmsg="Pleae enter the amount above Rs. 50";
    document.getElementById("bpr").innerHTML = errmsg;
    return false;
  }
  else
  {
    errmsg="";
    document.getElementById("bpr").innerHTML = errmsg;
  return true;
  }

}




function bk_price_dis()
{

errmsg="";
  var bpri = document.getElementById("price").value;
  var bpri_disc = document.getElementById("disprice").value;

  if(bpri == "" || bpri<bpri_disc)
  {
    errmsg="You may have not enterd any value in textarea or you've have enterd the Discount amount more than the Orignal price";
    document.getElementById("bpr_dis").innerHTML = errmsg;
    return false;
  }
  else
  {
    errmsg="";
    document.getElementById("bpr_dis").innerHTML = errmsg;
  return true;
  }

}



</script>

</head>
<body>

<form method="post" action="add_new_product.jsp" onsubmit="return validate()">

      <div class="container">
             <h2>Book Entry</h2>
             

        <div class="form-group">
               <label for="bname">Book Name</label>
               <input type="text" class="form-control" id="name" placeholder="Enter Book Name" name="name" onblur="bk_name()">
               <div id="bnamemsg"></div>
       </div>
       <div class="form-group">
              <label for="author">Author</label>
              <input type="text" class="form-control" id="author" placeholder="Author name" name="author" onblur="bk_auther()">
              <div id="bauthmsg"></div>
        </div>
        <div class="form-group">
                <label for="description">
                    Comments:</label>
                <textarea class="form-control" name="comments" id="comments" placeholder="Description for Book" maxlength="6000" rows="7" onblur="bk_comm()"></textarea>
              
                <div id="bcomm"></div>

            </div>

            <div class="form-group">
                    <label for="price">Price</label>
                    <input type="number" class="form-control" id="oprice" placeholder="Book price" name="oprice" onblur="bk_price()">
                    <div id="bpr"></div>

              </div>
              <div class="form-group">
                    <label for="Discount price">Price</label>
                    <input type="number" class="form-control" id="dprice" placeholder="Discount Price" name="dprice" onblur="bk_price_dis()">
                    <div id="bpr_dis"></div>

              </div>
              <div class="form-group">
                  <label for="frontcover">Front Cover of Book</label><br>
              <input type="file" name="fcover" id="fcover" accept="image/*" required="required">
            </div>

            <div class="form-group">
                    <label for="backcover">Back Cover of Book</label><br>
                <input type="file" name="bcover" id="bcover" accept="image/*" required="required">
              </div>
            
        <input type="submit" value="Register" class="btn btn-dark form-control" onclick="validate()">
        <br>
        <div id="sub"></div>

        <br>
        <br>
        <br>
        <br>
        
       </div>
       
    </div>

</form>


</body>
</html>