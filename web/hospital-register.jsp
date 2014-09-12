<%-- 
    Document   : login
    Created on : 29 Sep, 2013, 8:59:33 PM
    Author     : QWERTY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link href="../css/bootstrap.css" rel="stylesheet">
  <link rel="stylesheet" href="../css/font-awesome.css">
  <link href="../css/style1.css" rel="stylesheet">
  <link href="../css/bootstrap-responsive.css" rel="stylesheet">
  <script src="../js/jquery.js"></script>
  <script type="text/javascript">

function sendID()
{
    var sat="Failed";
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("my").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("POST","registeration.jsp",true);
xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
xmlhttp.send("status="+sat+"");
}
</script>
    </head>
    <body>
       <!-- Form area -->
<div class="admin-form">
  <div class="container-fluid">

    <div class="row-fluid">
        <div class="span12" style=" margin-top: -10px;">
        <!-- Widget starts -->
            <div class="widget worange">
              <!-- Widget head -->
              <div class="widget-head">
                <i class="icon-user"></i> Hospital Registration 
              </div>

              <div class="widget-content">
                <div class="padd">
                  <!-- Login form -->
                  <form class="form-horizontal" action="registeration.jsp" method="post">
                    <!-- Email -->
                    <div class="control-group">
                     <label class="control-label" for="username">Name of Doctor</label>
                      <div class="controls">
                          <input type="text" id="name" name="docname" placeholder="Name of Doctor" required  />
                      </div>
                     
                    </div>
                    <!-- Password -->
                    <div class="control-group">
                     <label class="control-label" for="address">Address of Doctor</label>
                      <div class="controls">
                          <input type="text" id="name" name="docaddress" placeholder="Address of Doctor" required="true"  />
                      </div>
                    </div>
                    
                    <div class="control-group">
                     <label class="control-label" for="address">Hospital Name</label>
                      <div class="controls">
                          <input type="text" id="name" name="hospitalname" placeholder="Hospital Name"  />
                      </div>
                    </div>
                    
                    <div class="control-group">
                     <label class="control-label" for="address">Hospital Address</label>
                      <div class="controls">
                          <input type="text" id="name" name="hospitaladdress" placeholder="Hospital Address"  />
                      </div>
                    </div>
                    
                    <div class="control-group">
                     <label class="control-label" for="address">District/City</label>
                      <div class="controls">
                          <select name="ulbsel" id="ulbselid"  >
                    <option value="">---Select City---</option>
                    
                         <option value="101">Agra</option>
                         
                         <option value="102">Aligarh</option>
                         
                         <option value="103">Allahabad</option>
                         
                         <option value="104">Bareilly</option>
                         
                         <option value="105">Ghaziabad</option>
                         
                         <option value="106">Gorakhpur</option>
                         
                         <option value="107">Jhansi</option>
                         
                         <option value="108">Kanpur</option>
                         
                         <option value="109">Lucknow</option>
                         
                         <option value="110">Meerut</option>
                         
                         <option value="111">Moradabad</option>
                         
                         <option value="112">Saharanpur</option>
                         
                         <option value="113">Varanasi</option>
                         
                    </select>
                      </div>
                    </div>
                    
                    <div class="control-group">
                    <label class="control-label"   for="username">Type</label><div class="controls">
                          <select name="htype" id="type"   >
                                  <option value="Govt.Hospital">Govt.Hospital </option>
                                  <option value="PVT.Hospital">Pvt.Hospital</option>
                                  <option value="NursingHome">Nursing Home</option>
                                  <option value="Doctor">Doctor</option>
                                </select>
                      </div>
                    </div>
                    
                    <div class="control-group">
                     <label class="control-label" for="address">Licence No/Registration No</label>
                      <div class="controls">
                          <input type="text" id="name" name="regno" placeholder="Registration No"  />
                      </div>
                    </div>
                     
                    <div class="control-group">
                     <label class="control-label" for="address">Mobile No</label>
                      <div class="controls">
                          <input type="text" id="name" name="mobile" placeholder="Mobile No"  />
                      </div>
                    </div>
                    
                    <div class="control-group">
                     <label class="control-label" for="address">Email ID</label>
                      <div class="controls">
                          <input type="email" id="name" name="email" placeholder="Email ID"  />
                      </div>
                    </div>
                    
                    <!-- Remember me checkbox and sign in button -->
                    <div class="control-group">
                      <div class="controls">
                        
                        <br>
                         
                        <button type="submit" class="btn btn-primary" onclick="sendID()" >Register</button>
                        <button type="reset" class="btn">Reset</button>
                      </div>
                    </div>
                  </form>

                </div>
              </div>
                <div class="widget-foot" id="my">
                  <a href="#">Register here</a>
                </div>
            </div>  
      </div>
    </div>
  </div> 
</div>

    </body>
</html>
