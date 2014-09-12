<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Flex Admin - Responsive Admin Theme</title>

    <!-- PACE LOAD BAR PLUGIN - This creates the subtle load bar effect at the top of the page. -->
    <link href="css/plugins/pace/pace.css" rel="stylesheet">
    <script src="js/plugins/pace/pace.js"></script>

    <!-- GLOBAL STYLES - Include these on every page. -->
    <link href="css/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href='../fonts.googleapis.com/css.css' rel="stylesheet" type="text/css">
    <link href='../fonts.googleapis.com/css_2.css' rel="stylesheet" type="text/css">
    <link href="icons/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- PAGE LEVEL PLUGIN STYLES -->

    <!-- THEME STYLES - Include these on every page. -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/plugins.css" rel="stylesheet">
 <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/jquery-ui-1.8.17.custom.min.js" type="text/javascript"></script>
    <!-- THEME DEMO STYLES - Use these styles for reference if needed. Otherwise they can be deleted. -->
    <link href="css/demo.css" rel="stylesheet">
  <script type="text/javascript" src="d3.v3.min.js"></script>
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
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
       String name= (String)session.getAttribute("name");
       String role= (String)session.getAttribute("role");
       String id= (String)session.getAttribute("emp_id");
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
                            <i class="fa fa-windows"></i>Analytics                        </a>
                    </li>
                     <li>
                        <a href="#" id="certificate_edit"  >
                              <i class="fa fa-edit"></i>Certificate Correction
                        </a>
                    </li>
                    <li>
                        <a href="#" onclick="signature()">
                              <i class="fa fa-check-square"></i>Sign Certificate 
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

                <!-- begin PAGE TITLE ROW -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-title">
                            <h1>Data Analysis</h1>
                            <ol class="breadcrumb">
                                <li><i class="fa fa-dashboard"></i>  <a href="BDR-admin.jsp">Dashboard</a>
                                </li>
                                <li class="active">Data Analysis</li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- end PAGE TITLE ROW -->

                <div class="row">

                    <!-- Line Chart Example -->
                    <div class="col-lg-12">
                        <div class="portlet portlet-default">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>ULB Wise Detail Of Birth</h4>
                                </div>
                                <div class="portlet-widgets">
                                    <a href="javascript:;"><i class="fa fa-refresh"></i></a>
                                    <span class="divider"></span>
                                    <a data-toggle="collapse" data-parent="#accordion" href="flot.html#areaChart"><i class="fa-chevron-down fa"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div id="areaChart" class="panel-collapse collapse in">
                                <div class="portlet-body">
                                    <div class="flot-chart">
                                        <div class="flot-chart-content" id="chart" >
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                    
                    <!-- Line Chart Example -->
                    <div class="col-lg-12">
                        <div class="portlet portlet-default">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>ULB Wise Detail Of Death</h4>
                                </div>
                                <div class="portlet-widgets">
                                    <a href="javascript:;"><i class="fa fa-refresh"></i></a>
                                    <span class="divider"></span>
                                    <a data-toggle="collapse" data-parent="#accordion" href="flot.html#areaChart"><i class="fa-chevron-down fa"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div id="areaChart" class="panel-collapse collapse in">
                                <div class="portlet-body">
                                    <div class="flot-chart">
                                        <div class="flot-chart-content" id="chart_death" >
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->

                    <!-- Multiple Axes Example -->
                    <div class="col-lg-12">
                        <div class="portlet portlet-green">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>Birth And Death Line Chart</h4>
                                </div>
                                <div class="portlet-widgets">
                                    <a href="javascript:;"><i class="fa fa-refresh"></i></a>
                                    <span class="divider"></span>
                                    <a data-toggle="collapse" data-parent="#accordion" href="flot.html#lineChart"><i class="fa fa-chevron-down"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div id="lineChart" class="panel-collapse collapse in">
                                <div class="portlet-body">
                                    <div class="flot-chart">
                                        <div class="flot-chart-content" id="flot-chart-multiple-axes"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->

                    <!-- Bar Chart Example -->
                   
                    <!-- /.col-lg-6 -->

                    <!-- Pie Chart Example -->
                    <div class="col-lg-6">
                        <div class="portlet portlet-orange">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>Birth Pi Chart</h4>
                                </div>
                                <div class="portlet-widgets">
                                    <a href="javascript:;"><i class="fa fa-refresh"></i></a>
                                    <span class="divider"></span>
                                    <a data-toggle="collapse" data-parent="#accordion" href="flot.html#donutChart"><i class="fa fa-chevron-down"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div id="donutChart" class="panel-collapse collapse in">
                                <div class="portlet-body">
                                    <div class="flot-chart">
                                        <div class="flot-chart-content" id="flot-chart-pie1"></div>
                                    </div>
                                    <br><br><br><br>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.col-lg-6 -->

                    <!-- Moving Line Chart Example -->
                     <div class="col-lg-6">
                        <div class="portlet portlet-orange">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>Death Pi Chart</h4>
                                </div>
                                <div class="portlet-widgets">
                                    <a href="javascript:;"><i class="fa fa-refresh"></i></a>
                                    <span class="divider"></span>
                                    <a data-toggle="collapse" data-parent="#accordion" href="flot.html#donutChart"><i class="fa fa-chevron-down"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div id="donutChart" class="panel-collapse collapse in">
                                <div class="portlet-body">
                                    <div class="flot-chart">
                                        <div class="flot-chart-content" id="flot-chart-pie"></div>
                                    </div>
                                    <br><br><br><br>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.col-lg-6 -->
                    <div class="col-lg-6">
                        <div class="portlet portlet-red">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>Death Report With Detail</h4>
                                </div>
                                <div class="portlet-widgets">
                                    <a href="javascript:;"><i class="fa fa-refresh"></i></a>
                                    <span class="divider"></span>
                                    <a data-toggle="collapse" data-parent="#accordion" href="flot.html#donutChart"><i class="fa fa-chevron-down"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div id="donutChart" class="panel-collapse collapse in">
                                <div class="portlet-body">
                                    <div class="flot-chart">
                                        <div class="flot-chart-content" id="flot-chart-pie2"></div>
                                    </div>
                                    <br><br><br><br>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.page-content -->

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
            <img class="img-circle img-logout" src="1034810001.png" alt="">
            <h3>
                <i class="fa fa-sign-out text-green"></i> Ready to go?
            </h3>
            <p>Select "Logout" below if you are ready<br> to end your current session.</p>
            <ul class="list-inline">
                <li>
                    <a href="login.html" class="btn btn-green">
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
    <script src="js/plugins/popupoverlay/logout.js"></script>
    <!-- HISRC Retina Images -->
    <script src="js/plugins/hisrc/hisrc.js"></script>

    <!-- PAGE LEVEL PLUGIN SCRIPTS -->
    <!-- Flot Charts -->
    <script src="js/plugins/flot/jquery.flot.js"></script>
    <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="js/plugins/flot/jquery.flot.pie.js"></script>
    <!-- Flot Demo/Dummy Data -->
    <script src="js/plugins/flot/flot-demo-data.js"></script>

    <!-- THEME SCRIPTS -->
    <script src="js/flex.js"></script>

</body>
