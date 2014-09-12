<%-- 
    Document   : admin
    Created on : 20 Feb, 2014, 3:34:02 AM
    Author     : QWERTY
--%>

<%@page contentType="text/html" session="true" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Birth And Death Admin</title>

    <!-- PACE LOAD BAR PLUGIN - This creates the subtle load bar effect at the top of the page. -->
    <link href="css/plugins/pace/pace.css" rel="stylesheet">
    <script src="js/plugins/pace/pace.js"></script>

    <!-- GLOBAL STYLES - Include these on every page. -->
    <link href="css/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700,300italic,400italic,500italic,700italic' rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel="stylesheet" type="text/css">
    <link href="icons/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- PAGE LEVEL PLUGIN STYLES -->
    <link href="css/plugins/messenger/messenger.css" rel="stylesheet">
    <link href="css/plugins/messenger/messenger-theme-flat.css" rel="stylesheet">
    <link href="css/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet">
    <link href="css/plugins/morris/morris.css" rel="stylesheet">
    <link href="css/plugins/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    <link href="css/plugins/datatables/datatables.css" rel="stylesheet">

    <!-- THEME STYLES - Include these on every page. -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/plugins.css" rel="stylesheet">
    <link href="css/plugins/datatables/datatables.css" rel="stylesheet">
    <!-- THEME DEMO STYLES - Use these styles for reference if needed. Otherwise they can be deleted. -->
    <link href="css/demo.css" rel="stylesheet">
    <scrpit src="../../myscript.js" ></scrpit>
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/jquery-ui-1.8.17.custom.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="d3.v3.min.js"></script>
     
    <script>
  $(function() {
    $( "#from1" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      numberOfMonths: 3,
      onClose: function( selectedDate ) {
        $( "#to" ).datepicker( "option", "minDate", selectedDate );
      }
    });
    $( "#to" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      numberOfMonths: 3,
      onClose: function( selectedDate ) {
        $( "#from" ).datepicker( "option", "maxDate", selectedDate );
      }
    });
  });
  </script>  
    <style>
.axis text {
  font: 10px sans-serif;
}

.axis path,
.axis line {
  fill: none;
  stroke: #000;
  shape-rendering: crispEdges;
}

.bar {
  fill: steelblue;
  fill-opacity: .9;
}

.x.axis path {
  display: none;
}
</style>
    

    <script>
     function birth()
     {
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
                document.getElementById("main").innerHTML=xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET","register-birth.jsp?q="+0,true);
        xmlhttp.send();
    }
    function death()
     {
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
                document.getElementById("main").innerHTML=xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET","register-death.jsp?q="+0,true);
        xmlhttp.send();
    }
    function mohalla(str)
    {
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
                document.getElementById("chkMohalla").innerHTML=xmlhttp.responseText;
            }
        } 
        xmlhttp.open("GET","http://localhost:8084/Final/admin/BDR/getMohalla.jsp?ulb_id="+str+"",true);
        xmlhttp.send();
    }
    function sendMail()
     {
         alert("hiii");
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
                document.getElementById("main").innerHTML=xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET","compose-mail.jsp?q="+0,true);
        xmlhttp.send();
    }
    
    function signature()
     {
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
                document.getElementById("main").innerHTML=xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET","signature.jsp?q="+0,true);
        xmlhttp.send();
    }
    
    
    function sendID(hid,action)
    {
        alert(hid);
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
                document.getElementById("button1"+hid).innerHTML=xmlhttp.responseText;
            }
        }
        xmlhttp.open("POST","sign.jsp",true);
        xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        xmlhttp.send("hid="+hid+"&action="+action+"");
     }
     
     
    
    </script>
</head>

<body>
 <% 
     //  String name= request.getParameter("name");
       
       
       String name = (String)session.getAttribute("name");
       String role = (String)session.getAttribute("role");
       String id = (String)session.getAttribute("emp_id");
      
       String ulb_id = (String)session.getAttribute("ulb_id");
      // String photo_id= (String)session.getAttribute("id");
       int index = 0;
       
       for(int i = 0; i<name.length();i++){
           if (name.charAt(i) == ' '){
                 index = i;  
          }
       }
       String fname = name.substring(0,index);
       String lname = name.substring(index,name.length());
   %>
    <div id="wrapper">

        <!-- begin TOP NAVIGATION -->
        <jsp:include page="DataSet/navigator.jsp"></jsp:include>  
        <!-- begin SIDE NAVIGATION -->
         <nav class="navbar-side" role="navigation">
            <div class="navbar-collapse sidebar-collapse collapse">
                <ul id="side" class="nav navbar-nav side-nav">
                    <!-- begin SIDE NAV USER PANEL -->
                    <li class="side-user hidden-xs">
                        <img  src="<%out.print(id);%>.png" width="150" height="230" alt="">
                        <p class="welcome">
                            <i class="fa fa-key"></i> Logged in as
                        </p>
                        <p class="name tooltip-sidebar-logout">
                           <%out.print(fname);%>
                            <span class="last-name"><%out.print(lname);%></span> <a style="color: inherit" class="logout_open" href="#logout" data-toggle="tooltip" data-placement="top" title="Logout"><i class="fa fa-sign-out"></i></a>
                        </p>
        <jsp:include page="sidebar/sidebar.jsp"></jsp:include> 
            <%
                if(role.equals("admin")){
                    %>
                    <li>
                        <a href="BDR-Report.jsp">
                            <i class="fa fa-windows"></i>Analytics                        
                        </a>
                    </li>
                    <li>
                        <a href="#" onclick="signature()">
                              <i class="fa fa-check-square"></i>Sign Certificate 
                        </a>
                    </li>
                     <li>
                        <a href="#" id="certificate_edit"  >
                              <i class="fa fa-edit"></i>Certificate Correction
                        </a>
                    </li>
                    <li>
                        <a href="#" onclick="sendMail()" >
                              <i class="fa fa-envelope"></i>Compose Mail 
                        </a>
                    </li>
                    <%
                }
            %>
         </ul>
                <!-- /.side-nav -->
            </div>
            <!-- /.navbar-collapse -->
        </nav>
        <!-- /.navbar-side -->
        <!-- end SIDE NAVIGATION -->

        <!-- begin MAIN PAGE CONTENT -->
        <div id="page-wrapper">

            <div id="main" class="page-content">

                <div class="page-content page-content-ease-in">

                <!-- begin PAGE TITLE ROW -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-title">
                            <h1>
                                Dashboard
                            </h1>
                            <ol class="breadcrumb">
                                <li><i class="fa fa-dashboard"></i><a href="BDR-admin.jsp">Dashboard</a>
                                </li>
                                <li class="active">Admin Dashboard</li>
                                <li style="float: right;">
                                    <label for="from1">From</label>
<input type="text" id="from1" name="from">
<label for="to">to</label>
<input type="text" id="to" name="to">
                                </li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- end PAGE TITLE ROW -->

                <div class="row">
                    <div class="col-lg-2"></div>
                        <div class="col-lg-2 col-sm-8">
                        <div class="circle-tile">
                            <a href="#">
                                <div class="circle-tile-heading red">
                                    <i class="fa fa-users fa-fw fa-3x"></i>
                                </div>
                            </a>
                            <div class="circle-tile-content red">
                                <div class="circle-tile-description text-faded">
                                    <span>  Register New Birth</span>
                                </div>
                                <div class="circle-tile-number text-faded">
                                    216
                                    <span id="sparklineA"></span>
                                </div>
                                <a href="#" onclick="birth()" class="circle-tile-footer">Click Here <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-sm-8">
                        <div class="circle-tile">
                            <a href="#">
                                <div class="circle-tile-heading green">
                                    <i class="fa fa-users fa-fw fa-3x"></i>
                                </div>
                            </a>
                            <div class="circle-tile-content green">
                                <div class="circle-tile-description text-faded">
                                    <span>  Register Death</span>
                                </div>
                                <div class="circle-tile-number text-faded">
                                        216
                                    <span id="sparklineA"></span>
                                </div>
                                <a href="#" onclick="death()" class="circle-tile-footer">Click Here <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div> <%
                if(role.equals("admin")){
                    %>
                    <div class="col-lg-2 col-sm-8">
                        <div class="circle-tile">
                            <a href="#">
                                <div class="circle-tile-heading blue">
                                    <i class="fa fa-users fa-fw fa-3x"></i>
                                </div>
                            </a>
                            <div class="circle-tile-content blue">
                                <div class="circle-tile-description text-faded">
                                    <span>Report</span>
                                </div>
                                <div class="circle-tile-number text-faded">
                                     245
                                    <span id="sparklineA"></span>
                                </div>
                                <a href="#" onclick="report()" class="circle-tile-footer">Click Here <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-sm-8">
                        <div class="circle-tile">
                            <a href="#">
                                <div class="circle-tile-heading yellow">
                                    <i class="fa fa-users fa-fw fa-3x"></i>
                                </div>
                            </a>
                            <div class="circle-tile-content yellow">
                                <div class="circle-tile-description text-faded">
                                    <span>Signature</span>
                                </div>
                                <div class="circle-tile-number text-faded">
                                    122
                                    <span id="sparklineA"></span>
                                </div>
                                <a href="#" onclick="signature()" class="circle-tile-footer">Click Here <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <% } %>
                    </div>
                            
                        </div>
                <div class="row">
                   <!-- Line Chart Example -->
                    
                    
                </div>

                 
                    <!-- /.col-lg-12 -->
                        <div class="col-lg-2"></div>
                </div>
                <!-- /.row -->

            </div>
           

        </div>
        <!-- /#page-wrapper -->
        <!-- end MAIN PAGE CONTENT -->

    </div>
    <!-- /#wrapper -->

     <!-- GLOBAL SCRIPTS -->
    <script src="../../js/jquery.min.js"></script>
    <script src="js/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="js/plugins/popupoverlay/jquery.popupoverlay.js"></script>
    <script src="js/plugins/popupoverlay/defaults.js"></script>
    <!-- Logout Notification Box -->
    <div id="logout">
        <div class="logout-message">
            <img class="img-circle img-logout" src="img/profile-pic.jpg" alt="">
            <h3>
                <i class="fa fa-sign-out text-green"></i> Ready to go?
            </h3>
            <p>Select "Logout" below if you are ready<br> to end your current session.</p>
            <ul class="list-inline">
                <li>
                    <a href="../../logout.jsp" class="btn btn-green">
                        <strong>Logout</strong>
                    </a>
                </li>
                <li>
                    <button class="logout_close btn btn-green">Cancel</button>
                </li>
            </ul>
        </div>
    </div>
    <!-- /#logout -->
    <!-- Logout Notification jQuery -->
    <script>
        $(document).ready(function(){
         $("#certificate_edit").click(function(){
             
             $("#main").load("certificate-correction.jsp");
         });
        
      });
    </script>
    <script>
        $(document).ready(function(){
           
                $("#leave_request").click(function(){
                     $("#main").load("http://localhost:8084/Final/admin/leave-request.jsp");
                });
                
        });
    </script>
    <script src="js/plugins/popupoverlay/logout.js"></script>
    <!-- HISRC Retina Images -->
    <script src="js/plugins/hisrc/hisrc.js"></script>

    <!-- PAGE LEVEL PLUGIN SCRIPTS -->
    <!-- HubSpot Messenger -->
    <script src="js/plugins/messenger/messenger.min.js"></script>
    <script src="js/plugins/messenger/messenger-theme-flat.js"></script>
    <!-- Date Range Picker -->
    <script src="js/plugins/daterangepicker/moment.js"></script>
    <script src="js/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- Morris Charts -->
    <script src="js/plugins/morris/raphael-2.1.0.min.js"></script>
    <script src="js/plugins/morris/morris.js"></script>
    
    <!-- Sparkline Charts -->
    <script src="js/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- Moment.js -->
    <script src="js/plugins/moment/moment.min.js"></script>
    <!-- jQuery Vector Map -->
    <script src="js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="js/plugins/jvectormap/maps/jquery-jvectormap-world-mill-en.js"></script>
    <script src="js/demo/map-demo-data.js"></script>
    <!-- Easy Pie Chart -->
    <script src="js/plugins/easypiechart/jquery.easypiechart.min.js"></script>
    <!-- DataTables -->
    <script src="js/plugins/datatables/jquery.dataTables.js"></script>
    <script src="js/plugins/datatables/datatables-bs3.js"></script>
    <!-- HISRC Retina Images -->
    <script src="js/plugins/hisrc/hisrc.js"></script>

    <!-- PAGE LEVEL PLUGIN SCRIPTS -->
   
  <!-- PAGE LEVEL PLUGIN STYLES -->
    <link href="css/plugins/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
    <link href="../code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" type="text/css" rel="stylesheet">
    <link href="css/plugins/bootstrap-tokenfield/tokenfield-typeahead.css" rel="stylesheet">
    <link href="css/plugins/bootstrap-tokenfield/bootstrap-tokenfield.css" rel="stylesheet">
    <link href="css/plugins/bootstrap-datepicker/datepicker3.css" rel="stylesheet">
    
    <!-- THEME SCRIPTS -->
    <script src="js/flex.js"></script>
    <script src="js/demo/dashboard-demo.js"></script>
    <script src="js/demo/advanced-tables-demo.js"></script>

</body>

</html>

