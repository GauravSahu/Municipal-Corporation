<%-- 
    Document   : admin
    Created on : 20 Feb, 2014, 3:34:02 AM
    Author     : QWERTY
--%>


<%@page import="java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
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
    

</head>

<body >
 <% 
       String name= (String)session.getAttribute("name");
     
   %>
    <div id="wrapper">

        <!-- begin TOP NAVIGATION -->
        <jsp:include page="DataSet/navigator.jsp"></jsp:include>  
        <!-- begin SIDE NAVIGATION -->
        <jsp:include page="sidebar/sidebar.jsp"></jsp:include>  
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
                       <div style="display: none; opacity: 2;" id="timer" >
                            <center><img src="../loader.gif" /></center>
                        </div>
                       <div class="col-lg-2"></div>
                 <div class="portlet portlet-default">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>Data Tables Enhanced Table</h4>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-responsive">
                                    <div id="example-table_wrapper" class="dataTables_wrapper form-inline" role="grid"><div class="row"><div class="col-sm-6"><div id="example-table_length" class="dataTables_length"><label><select size="1" name="example-table_length" aria-controls="example-table"><option value="10" selected="selected">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> records per page</label></div></div><div class="col-sm-6"><div class="dataTables_filter" id="example-table_filter"><label>Search: <input type="text" aria-controls="example-table"></label></div></div></div><table id="example-table" class="table table-striped table-bordered table-hover table-green dataTable" aria-describedby="example-table_info">
                                        <thead>
                                          <tr role="row">
                                              <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" >Employee&nbsp;ID</th>
                                              <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending">Employee&nbsp;Name</th>
                                              <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" >Employee&nbsp;Role</th>
                                              <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" >Nager&nbsp;Nigam</th>
                                              <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" >Conatact&nbsp;NO</th>
                                              <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" >Email&nbsp;ID</th>
                                <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" >Address</th>
                                <th class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" >Dept.&nbsp;Name</th>
                                <th width="150px" class="sorting" role="columnheader" tabindex="0" aria-controls="example-table" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" >Action</th>
                                
                            </tr> </thead>
                                        
                                    <tbody role="alert" aria-live="polite" aria-relevant="all">
                                        
                                        
                                        
                                        
                                    
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
                    <td><%=rs.getString("emp_id") %></td>
                    <td><%=rs.getString("emp_name") %></td>
                     <td><%=rs.getString("role") %></td>
                      <td><%out.print(ulbname);%></td>
                       <td><%=rs.getString("phone_no") %></td>
                        <td><%=rs.getString("email") %></td>
                         <td><%=rs.getString("address") %></td>
                          <td><% out.print(deptname);%></td>
                          <td>
                              <table>
                                  <tr>
                                      <td>
                                          <button class="edit btn btn-orange btn-small" id='e<%=rs.getString("emp_id") %>' data-toggle="modal" data-target="#flexModal">Edit</button>
                                      </td>
                                        <td>
                                            <input type="button" class="delete btn btn-blue btn-small fancybox  " id='e<%=rs.getString("emp_id") %>' value="Delete">
                                        </td>
                                  </tr>
                              </table> 
                          </td>             
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

       
                                    </tbody></table><div class="row"><div class="col-sm-6"><div class="dataTables_info" id="example-table_info">Showing 1 to 10 of 57 entries</div></div><div class="col-sm-6"><div class="dataTables_paginate paging_bootstrap"><ul class="pagination"><li class="prev disabled"><a href="#">← Previous</a></li><li class="active"><a href="#">1</a></li><li><a href="#">2</a></li><li><a href="#">3</a></li><li><a href="#">4</a></li><li><a href="#">5</a></li><li class="next"><a href="#">Next → </a></li></ul></div></div></div></div>
                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.portlet-body -->
                        </div>               
</div>
                <!-- /.row -->

            </div>
                    </div>
                <!-- /.row -->

             

            
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
                                    <h4>Edit Employee Data</h4>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="portlet-body">
                                
                              
         <script>
            $(document).ready(function()
{
    
   
     $(".delete").live("click",function(){
       //  alert("hi"+$(this).attr("id"));
            $("#timer").fadeIn(1000);
              $(this).parent().parent().parent().parent().parent().parent().addClass("del_bb");
            var id = $(this).attr("id");
            id = id.substring(1,id.size);
            $.ajax({
                 
                url: "http://localhost:8084/Final/rest/edataupdate/new/"+id,
                crossDomain:true,
                type:'post',
                dataType:'jsonp',
                jsonpCallback:'jsoncallback',
                success: function(data){
                   // alert(data.EmployeeID);
                    if(data.Action==123) 
                    {
                         $("#timer").fadeOut(500);
                        $(".del_bb").remove();
                    }
                  }
                        
             });
                
         
     });
    
     $("#close_model_popup").live("click",function(){
         $(".table_edit").html("");
     });
     
      $("#save_model_popup").live("click",function(){
         $(".table_edit").html(" ");
     });
    
             
            $(".edit").live("click",function(){
                  //  alert("hi"+$(this).attr("id"));
                    employeeEdit($(this).attr("id"));
             });
                function employeeEdit(id){
                id = id.substring(1,id.size);
                $.ajax({
                 
                url: "http://localhost:8084/Final/rest/edata/new/"+id,
                crossDomain:true,
                type:'post',
                dataType:'jsonp',
                jsonpCallback:'jsoncallback',
                success: function(data){
                   // alert(data.EmployeeID);
                          
                           $(".table_edit").html("\
                                       \n\
                                        <tr style=\"display: none;\"><td colspam=\"2\">Employee ID</td><td colspam=\"2\"><input type=\"text\" name=\"emp_id\" value='"+ data.EmployeeID +"' > </td></tr>\n\\n\
                                        <tr><td>Employee Name</td><td><input type=\"text\" name=\"name\" value='"+ data.EmployeeName +"' ><td>Father Name</td><td><input type=\"text\" name=\"father_name\" value='"+ data.FatherName +"' > </td> </td></tr>\n\\n\
                                        <tr></tr>\n\
                                        <tr><td>Mother Name</td><td><input type=\"text\" name=\"mother_name\" value='"+ data.MotherName +"' > </td><td>Password</td><td><input type=\"text\" name=\"password\" value='"+ data.Password +"' > </td></tr>\n\
                                        <tr></tr>\n\
                                        <tr><td>Date Of Birth</td><td><input type=\"text\" name=\"dob\" value='"+ data.DOB +"' > </td> <td>Email</td><td><input type=\"text\" name=\"email\" value='"+ data.Email +"' > </td></tr>\n\
                                        <tr></tr>\n\
                                        <tr><td>Phone No</td><td><input type=\"text\" name=\"phone_no\" value='"+ data.PhoneNo +"' > </td><td>City</td><td><input type=\"text\" name=\"City\" value='"+ data.City+"' > </td></tr>\n\
                                        <tr></tr>\n\
                                        <tr><td>Address</td><td><input type=\"text\" name=\"address\" value='"+ data.Address+"' > </td><td>Religion</td><td><input type=\"text\" name=\"religion\" value='"+ data.Religion+"' > </td></tr>\n\
                                        <tr></tr>\n\
                                        <tr><td>Gender</td><td><input type=\"text\" name=\"gender\" value='"+ data.Gender+"' > </td><td>Date Of joining</td><td><input type=\"text\" name=\"doj\" value='"+ data.DOJ+"' > </td></tr>\n\
                                        <tr></tr>\n\
                                        <tr><td>Nationality</td><td><input type=\"text\" name=\"nat\" value='"+ data.Nationality+"' > </td><td>Marital Status</td><td><input type=\"text\" name=\"marital\" value='"+ data.MaritalStatus+"' > </td></tr>\n\
                                        <tr></tr>\n\
                                        <tr><td>Role</td><td><input type=\"text\" name=\"role\" value='"+ data.Role+"' > </td><td>ULB ID</td><td><input type=\"text\" name=\"ulbsel\" value='"+ data.ULBID+"' > </td></tr>\n\\n\
                                        <tr></tr>\n\
                                        <tr><td colspam=\"2\">Department ID</td><td colspam=\"2\"><input type=\"text\" name=\"dept_id\" value='"+ data.DepartmentID+"' > </td></tr>\n\
                            ");             
                        
                        }
                        
                     });
                }
                
                
        });

        </script>     
        <div class="table-responsive">
        <form name="myform" action="emp_update.jsp" method="post"> 
        <table class="table_edit" >
            
        </table>                     
                           
        </form>            
             </div>
                                
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.portlet-body -->
                        </div>               
</div>
                <!-- /.row -->
                

            </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button id="close_model_popup" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                <button id="save_model_popup" type="button" onclick="submitform()" class="btn btn-green">Save changes</button>
                                            </div></form>
                </form>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
        </div>
   <script type="text/javascript">
function submitform()
{
   var x = document.myform.submit();
   alert(x);
}
</script>
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

