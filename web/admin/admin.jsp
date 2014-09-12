<%-- 
    Document   : admin
    Created on : 20 Feb, 2014, 3:34:02 AM
    Author     : QWERTY
--%>


<%@page import="java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin Panel</title>

    <!-- PACE LOAD BAR PLUGIN - This creates the subtle load bar effect at the top of the page. -->
    <link href="css/plugins/pace/pace.css" rel="stylesheet">
    <script src="js/plugins/pace/pace.js"></script>

    <!-- GLOBAL STYLES - Include these on every page. -->
    <link href="css/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
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

    <!-- THEME DEMO STYLES - Use these styles for reference if needed. Otherwise they can be deleted. -->
    <link href="css/demo.css" rel="stylesheet">

    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
  <![endif]-->

<script > 
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
</script>

  
 <script>
        $(document).ready(function(){
           
                $("#leave_request_show").click(function(){
                   
                     $("#main").load("http://localhost:8084/Final/admin/show-leave.jsp");
                });
        });
    </script>   
   


<script type="text/javascript">
    function demo(){
var auto_refresh = setInterval(
function ()
{
$('#refresh').load('./DataSet/navigator.jsp');
}, 2000); // refresh every 10000 milliseconds
    }
</script>
</head>

<body  >
 <% 
       String name= (String)session.getAttribute("name");
     
   %>
    <div id="wrapper">

        <!-- begin TOP NAVIGATION -->
        <div id ="refresh">
             </div>
        <!-- begin SIDE NAVIGATION -->
        <jsp:include page="sidebar/sidebar.jsp"></jsp:include>  
        <!-- /.navbar-side -->
        <!-- end SIDE NAVIGATION -->

        <!-- begin MAIN PAGE CONTENT -->
        <div id="page-wrapper">

            <div id="main" class="page-content">

              

                <!-- begin DASHBOARD CIRCLE TILES -->
            <jsp:include page="DataSet/dataset.jsp" ></jsp:include>
                <!-- end DASHBOARD CIRCLE TILES -->

                <div class="row">
                         
                    <div class="col-lg-3">
                        <div class="tile tile-img tile-time" style="height: 200px">
                            <p class="time-widget">
                                <span class="time-widget-heading">It Is Currently</span>
                                <br>
                                <strong>
                                    <span id="datetime"></span>
                                </strong>
                            </p>
                        </div>
                        <div class="tile dark-blue checklist-tile" style="height: 370px">
                            <h4><i class="fa fa-check-square-o"></i> To-Do List</h4>
                            <div class="checklist">
                                <label class="selected">
                                    <input type="checkbox" checked> <i class="fa fa-wrench fa-fw text-faded"></i> Software Update 2.1
                                    <span class="task-time text-faded pull-right">Yesterday</span>
                                </label>
                                <label class="selected">
                                    <input type="checkbox" checked> <i class="fa fa-wrench fa-fw text-faded"></i> Server #2 Hardward Upgrade
                                    <span class="task-time text-faded pull-right">9:39 AM</span>
                                </label>
                                <label class="selected">
                                    <input type="checkbox" checked> <i class="fa fa-warning fa-fw text-orange"></i> Call Ticket #2032
                                    <span class="task-time text-faded pull-right">9:53 AM</span>
                                </label>
                                <label>
                                    <input type="checkbox"> <i class="fa fa-warning fa-fw text-orange"></i> Emergency Maintenance
                                    <span class="task-time text-faded pull-right">10:14 AM</span>
                                </label>
                                <label>
                                    <input type="checkbox"> <i class="fa fa-file fa-fw text-faded"></i> Purchase Order #439
                                    <span class="task-time text-faded pull-right">10:20 AM</span>
                                </label>
                                <label>
                                 
                            </div>
                        </div>
                    </div>

                    <div id="myDiv" class="col-lg-9">
                        
                    <jsp:include page="DataSet/content.jsp" ></jsp:include>
                    </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-8">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="portlet portlet-green">
                                    <div class="portlet-heading">
                                        <div class="portlet-title">
                                            <h4><i class="fa fa-map-marker fa-fw"></i> Hospital Request For Birth Certificate  </h4>
                                        </div>
                                        <div class="portlet-widgets">
                                            <!-- Button Dropdown -->
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                                    Export
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu dropdown-left" style="margin-left: -90px" role="menu">
                                                    <li><a href="#"><i class="fa fa-cloud-download fa-fw"></i> CSV</a>
                                                    </li>
                                                    <li><a href="#"><i class="fa fa-cloud-download fa-fw"></i> TSV</a>
                                                    </li>
                                                    <li><a href="#"><i class="fa fa-cloud-download fa-fw"></i> TSV for Excel</a>
                                                    </li>
                                                    <li><a href="#"><i class="fa fa-cloud-download fa-fw"></i> Excel (XLSX)</a>
                                                    </li>
                                                    <li><a href="#"><i class="fa fa-cloud-download fa-fw"></i> PDF</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="portlet-body" >
                                        <div id="div1"></div> 
                                        <div id="chart">
                                    </div>
                                        <br>
                                        <div class="table-responsive">
                                            <table class="table table-striped table-bordered table-hover table-green" id="map-table-example">
                                                <thead>
                                                    <tr>
                                                        <th>Ulb&nbsp;ID</th>
                                                        <th>District</th>
                                                        <th>Total Population</th>
                                                        <th>Birth Rate</th>
                                                        <th>Death Rate</th>
                                                        <th>Daily Request</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td><strong>01</strong></td>
                                                        <td>United States</td>
                                                        <td>14,624</td>
                                                        <td>28,981</td>
                                                        <td>281</td>
                                                        <td>30.43%</td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>02</strong></td>
                                                        <td>China</td>
                                                        <td>5,745</td>
                                                        <td>10,491</td>
                                                        <td>121</td>
                                                        <td>36.73%</td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>03</strong></td>
                                                        <td>Japan</td>
                                                        <td>5,390</td>
                                                        <td>11,165</td>
                                                        <td>102</td>
                                                        <td>35.52%</td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>04</strong></td>
                                                        <td>Germany</td>
                                                        <td>3,305</td>
                                                        <td>7,651</td>
                                                        <td>71</td>
                                                        <td>36.24%</td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>05</strong></td>
                                                        <td>France</td>
                                                        <td>2,555</td>
                                                        <td>5,615</td>
                                                        <td>56</td>
                                                        <td>34.83%</td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>06</strong></td>
                                                        <td>United Kingdom</td>
                                                        <td>2,258</td>
                                                        <td>4,651</td>
                                                        <td>42</td>
                                                        <td>32.73%</td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>07</strong></td>
                                                        <td>Italy</td>
                                                        <td>2,036</td>
                                                        <td>4,498</td>
                                                        <td>44</td>
                                                        <td>32.54%</td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>08</strong></td>
                                                        <td>Brazil</td>
                                                        <td>2,023</td>
                                                        <td>4,948</td>
                                                        <td>43</td>
                                                        <td>33.97%</td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>09</strong></td>
                                                        <td>Canada</td>
                                                        <td>1,563</td>
                                                        <td>3,961</td>
                                                        <td>38</td>
                                                        <td>33.35%</td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>10</strong></td>
                                                        <td>Russia</td>
                                                        <td>1,476</td>
                                                        <td>3,261</td>
                                                        <td>35</td>
                                                        <td>35.27%</td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>11</strong></td>
                                                        <td>Spain</td>
                                                        <td>1,374</td>
                                                        <td>2,841</td>
                                                        <td>28</td>
                                                        <td>34.56%</td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>12</strong></td>
                                                        <td>Australia</td>
                                                        <td>1,219</td>
                                                        <td>2,753</td>
                                                        <td>25</td>
                                                        <td>31.50%</td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>13</strong></td>
                                                        <td>Mexico</td>
                                                        <td>1,004</td>
                                                        <td>2,091</td>
                                                        <td>19</td>
                                                        <td>35.17%</td>
                                                    </tr>

                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- /.table-responsive -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="row">
                            
                            <div class="col-lg-12">
                                <div class="portlet portlet-green">
                                    <div class="portlet-heading">
                                        <div class="portlet-title">
                                            <h4><i class="fa fa-exchange fa-fw"></i> Recent Transactions</h4>
                                        </div>
                                        <div class="portlet-widgets">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#transactionsPortlet"><i class="fa fa-chevron-down"></i></a>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div id="transactionsPortlet" class="panel-collapse collapse in">
                                        <div class="portlet-body">
                                            <div class="table-responsive dashboard-demo-table">
                                                <table class="table table-bordered table-striped table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th>Date</th>
                                                            <th>Time</th>
                                                            <th>Amount</th>
                                                            <th>Status</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1/31/14</td>
                                                            <td>6:14 PM</td>
                                                            <td>$12.07</td>
                                                            <td><a class="btn btn-xs btn-orange disabled"><i class="fa fa-clock-o"></i> Pending</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>1/31/14</td>
                                                            <td>6:02 PM</td>
                                                            <td>$5.32</td>
                                                            <td><a class="btn btn-xs btn-orange disabled"><i class="fa fa-clock-o"></i> Pending</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>1/31/14</td>
                                                            <td>5:56 PM</td>
                                                            <td>$6.58</td>
                                                            <td><a class="btn btn-xs btn-green"><i class="fa fa-arrow-circle-right"></i> View Order</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>1/31/14</td>
                                                            <td>5:12 PM</td>
                                                            <td>$15.61</td>
                                                            <td><a class="btn btn-xs btn-green"><i class="fa fa-arrow-circle-right"></i> View Order</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>1/31/14</td>
                                                            <td>5:02 PM</td>
                                                            <td>$9.89</td>
                                                            <td><a class="btn btn-xs btn-green"><i class="fa fa-arrow-circle-right"></i> View Order</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>1/31/14</td>
                                                            <td>4:47 PM</td>
                                                            <td>$2.21</td>
                                                            <td><a class="btn btn-xs btn-red"><i class="fa fa-warning"></i> Error</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>1/31/14</td>
                                                            <td>4:32 PM</td>
                                                            <td>$5.17</td>
                                                            <td><a class="btn btn-xs btn-default"><i class="fa fa-arrow-circle-right"></i> Special Order</a>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <a class="btn btn-green">View All Transactions</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.col-lg-12 -->
<div class="col-lg-12">
                                <div class="portlet portlet-default">
                                    <div class="portlet-heading">
                                        <div class="portlet-title">
                                            <h4><i class="fa fa-circle text-green"></i> Gaurav Sahu</h4>
                                        </div>
                                        <div class="portlet-widgets">
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-white dropdown-toggle btn-xs" data-toggle="dropdown">
                                                    <i class="fa fa-circle text-green"></i> Status
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="#"><i class="fa fa-circle text-green"></i> Online</a>
                                                    </li>
                                                    <li><a href="#"><i class="fa fa-circle text-orange"></i> Away</a>
                                                    </li>
                                                    <li><a href="#"><i class="fa fa-circle text-red"></i> Offline</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <span class="divider"></span>
                                            <a data-toggle="collapse" data-parent="#accordion" href="#chat"><i class="fa fa-chevron-down"></i></a>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div id="chat" class="panel-collapse collapse in">
                                        <div class="portlet-body chat-widget">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <p class="text-center text-muted small">January 1, 2014 at 12:23 PM</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="media">
                                                        <a class="pull-left" href="#">
                                                            <img class="media-object img-circle" src="img/user-profile-1.jpg" alt="">
                                                        </a>
                                                        <div class="media-body">
                                                            <h4 class="media-heading">Gaurav Sahu
                                                                <span class="small pull-right">12:23 PM</span>
                                                            </h4>
                                                            <p>Hi, I wanted to make sure you got the latest product report. Did Roddy get it to you?</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="media">
                                                        <a class="pull-left" href="#">
                                                            <img class="media-object img-circle" src="img/profile-pic-small.jpg" alt="">
                                                        </a>
                                                        <div class="media-body">
                                                            <h4 class="media-heading">Gaurav Sahu
                                                                <span class="small pull-right">12:28 PM</span>
                                                            </h4>
                                                            <p>Yeah I did. Everything looks good.</p>
                                                            <p>Did you have an update on purchase order #302?</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="media">
                                                        <a class="pull-left" href="#">
                                                            <img class="media-object img-circle" src="img/user-profile-1.jpg" alt="">
                                                        </a>
                                                        <div class="media-body">
                                                            <h4 class="media-heading">Gaurav Sahu
                                                                <span class="small pull-right">12:39 PM</span>
                                                            </h4>
                                                            <p>No not yet, the transaction hasn't cleared yet. I will let you know as soon as everything goes through. Any idea where you want to get lunch today?</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                        </div>
                                        <div class="portlet-footer">
                                            <form role="form">
                                                <div class="form-group">
                                                    <textarea class="form-control" placeholder="Enter message..."></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-default pull-right">Send</button>
                                                    <div class="clearfix"></div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.page-content -->

        </div>
        <!-- /#page-wrapper -->
        <!-- end MAIN PAGE CONTENT -->

    </div>
    <!-- /#wrapper -->

    <!-- GLOBAL SCRIPTS -->
    <script src="../js/jquery.min.js"></script>
    <script src="js/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="js/plugins/popupoverlay/jquery.popupoverlay.js"></script>
    <script src="js/plugins/popupoverlay/defaults.js"></script>
    <!-- Logout Notification Box -->
    <div id="logout" style="">
        <div class="logout-message">
            <img class="img-circle img-logout" src="img/profile-pic.jpg" alt="">
            <h3>
                <i class="fa fa-sign-out text-green"></i> Ready to go?
            </h3>
            <p>Select "Logout" below if you are ready<br> to end your current session.</p>
            <ul class="list-inline">
                <li>
                    <a href="../logout.jsp" class="btn btn-green">
                        <strong>Logout</strong>
                    </a>
                </li>
                <li>
                    <button class="logout_close btn btn-green">Cancel</button>
                </li>
            </ul>
        </div>
    </div>
     <div class="modal modal-flex fade" id="flexModal" tabindex="-1" role="dialog" aria-labelledby="flexModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="flexModalLabel">Edit Employee Record</h4>
                                            </div>
                                            <div class="modal-body">
                                                    <div class="page-content page-content-ease-in">

                <!-- begin PAGE TITLE ROW -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-title">
                            <h1>
                                Employee Data
                            </h1>
                            <ol class="breadcrumb">
                                <li><i class="fa fa-dashboard"></i>  <a href="index.jsp">Dashboard</a>
                                </li>
                                <li class="active"> Employee List</li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- end PAGE TITLE ROW -->
                  <div class="row">
                       <div class="col-lg-2"></div>
                 <div class="portlet portlet-default">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>Data Tables Enhanced Table</h4>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="portlet-body">
                              
                                        
                                        
                       <table>                 
                                    
<%
        try{
            String ulbname="";
            String deptname="";
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");           
            PreparedStatement pstmt  = con.prepareStatement("select * from employee_master");
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                        int ulb = rs.getInt("ulb_id");
                        int moh = rs.getInt("dept_id");
                        PreparedStatement pstmt1  = con.prepareStatement("SELECT * FROM `ulb_master` WHERE `ulb_id` = ?");
                        pstmt1.setInt(1,ulb);
                        ResultSet rs1 = pstmt1.executeQuery();
                        if(rs1.next()){
                           ulbname  = rs1.getString("ulb_name");
                        }
                        PreparedStatement pstmt2  = con.prepareStatement("SELECT * FROM `department_master` WHERE `department_id` = ?");
                        pstmt2.setInt(1,moh);
                        ResultSet rs2 = pstmt2.executeQuery();
                        if(rs2.next()){
                           deptname = rs2.getString("department_name");
                        }
                %>
                <tr>
                    <td><input type="text" value="<%=rs.getString("emp_id") %>"></td>
                    <td><%=rs.getString("emp_name") %></td>
                     <td><%=rs.getString("role") %></td>
                      <td><%out.print(ulbname);%></td>
                       <td><%=rs.getString("phone_no") %></td>
                        <td><%=rs.getString("email") %></td>
                         <td><%=rs.getString("address") %></td>
                          <td><% out.print(deptname);%></td>
                 </tr>
                <%
            }
           
            

        }
        catch(ClassNotFoundException e){
            out.println(e);
        }catch(SQLException e){
            out.println(e);
        }catch(Exception e){
            out.println(e);
        }
%>

       
                       </table>
                                
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.portlet-body -->
                        </div>               
</div>
                <!-- /.row -->

            </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-green">Save changes</button>
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
        </div>
   
    <!-- /#logout -->
   
    <!-- Logout Notification jQuery -->
    <script src="js/plugins/popupoverlay/logout.js"></script>
    <!-- HISRC Retina Images -->
    <script src="js/plugins/hisrc/hisrc.js"></script>
    <script src="../myscript.js"></script>
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
    <!-- Flot Charts -->
    <script src="js/plugins/flot/jquery.flot.js"></script>
    <script src="js/plugins/flot/jquery.flot.resize.js"></script>
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

    <!-- THEME SCRIPTS -->
    <script src="js/flex.js"></script>
    <script src="js/demo/dashboard-demo.js"></script>

</body>

</html>
