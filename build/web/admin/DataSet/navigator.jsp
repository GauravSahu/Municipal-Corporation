<%@page import="java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>
<%
     int ans = 0; 
     int ans1 = 0;
     int id = 0;
        try{
                   
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");           
            PreparedStatement pstmt  = con.prepareStatement("SELECT COUNT(*) FROM `hospital_master` WHERE `status` = 0");
            PreparedStatement pstmt1  = con.prepareStatement("SELECT * FROM `hospital_master` WHERE `status`=0");
            PreparedStatement pstmt2  = con.prepareStatement("SELECT COUNT(*) FROM `leave_master` WHERE  `status` = 0");
            PreparedStatement pstmt5  = con.prepareStatement("SELECT * FROM `leave_master` WHERE  `status` = 0");
            
            ResultSet rst  = pstmt.executeQuery();
            ResultSet rst1  = pstmt1.executeQuery();
            ResultSet rst2  = pstmt2.executeQuery();
             ResultSet rst5  = pstmt5.executeQuery();
            
            while(rst.next()){
               
               ans = rst.getInt("COUNT(*)");
           }
             while(rst2.next()){
               
               ans1 = rst2.getInt("COUNT(*)");
              
           }
              while(rst5.next()){
               
               id = rst5.getInt("emp_id");
              
           }
             
            PreparedStatement pstmt3  = con.prepareStatement("SELECT * FROM `employee_master` WHERE `emp_id` = ?");
            pstmt3.setInt(1, id);
            ResultSet rst3  = pstmt3.executeQuery();
          
 %>
       


<nav class="navbar-top" role="navigation">

            <!-- begin BRAND HEADING -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle pull-right" data-toggle="collapse" data-target=".sidebar-collapse">
                    <i class="fa fa-bars"></i> Menu
                </button>
                <div class="navbar-brand">
                    <a href="index.html">
                        <h4 style="color: #ffffff;">Admin Panel</h4>
                    </a>
                </div>
            </div>
            <!-- end BRAND HEADING -->

            <div class="nav-top">

                <!-- begin LEFT SIDE WIDGETS -->
                <ul class="nav navbar-left">
                    <li class="tooltip-sidebar-toggle">
                        <a href="#" id="sidebar-toggle" data-toggle="tooltip" data-placement="right" title="Sidebar Toggle">
                            <i class="fa fa-bars"></i>
                        </a>
                    </li>
                    <!-- You may add more widgets here using <li> -->
                </ul>
                <!-- end LEFT SIDE WIDGETS -->

                <!-- begin MESSAGES/ALERTS/TASKS/USER ACTIONS DROPDOWNS -->
                <ul class="nav navbar-right">

                    <!-- begin MESSAGES DROPDOWN -->
                    <% if(ans>0){ %>
                    <li class="dropdown">
                        <a href="index.html#" class="messages-link dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-edit"></i>
                            <span class="number"><% out.print(ans); %></span> <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-scroll dropdown-messages">

                            <!-- Messages Dropdown Heading -->
                            <li class="dropdown-header">
                                <i class="fa fa-envelope"></i> <% out.print(ans); %> New Hospital Request
                            </li>

                            <!-- Messages Dropdown Body - This is contained within a SlimScroll fixed height box. You can change the height using the SlimScroll jQuery features. -->
                            <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 200px;"><li id="messageScroll" style="overflow: hidden; width: auto; height: 200px;">
                                <ul class="list-unstyled">
                                    <%
                                        while(rst1.next()){
                                    %>
                                    <li>
                                        <a href="#">
                                            <div class="row">
                                                
                                                <div class="col-xs-10">
                                                    <p><%=rst1.getString("hospital_name") %></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <%
                                        }
                                    %>
                                     
                                </ul>
                            </li><div class="slimScrollBar" style="background-color: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-top-left-radius: 7px; border-top-right-radius: 7px; border-bottom-right-radius: 7px; border-bottom-left-radius: 7px; z-index: 99; right: 1px; background-position: initial initial; background-repeat: initial initial;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-top-left-radius: 7px; border-top-right-radius: 7px; border-bottom-right-radius: 7px; border-bottom-left-radius: 7px; background-color: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px; background-position: initial initial; background-repeat: initial initial;"></div></div>

                            <!-- Messages Dropdown Footer -->
                            <li class="dropdown-footer">
                                <a href="#" id="hospital_request">See All Request</a>
                            </li>

                        </ul>
                        <!-- /.dropdown-menu -->
                    </li>
                    <%
                        }
                    %>
                    <!-- /.dropdown -->
                    <% if(ans1>0){ %>
                    <li class="dropdown">
                        <a href="index.html#" class="messages-link dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-edit"></i>
                            <span class="number"><% out.print(ans1); %></span> <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-scroll dropdown-messages">

                            <!-- Messages Dropdown Heading -->
                            <li class="dropdown-header">
                                <i class="fa fa-envelope"></i> <% out.print(ans1); %> New Leave Request
                            </li>

                            <!-- Messages Dropdown Body - This is contained within a SlimScroll fixed height box. You can change the height using the SlimScroll jQuery features. -->
                            <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 200px;"><li id="messageScroll" style="overflow: hidden; width: auto; height: 200px;">
                                <ul class="list-unstyled">
                                    <%
                                        while(rst3.next()){
                                    %>
                                    <li>
                                        <a href="#">
                                            <div class="row">
                                                
                                                <div class="col-xs-10">
                                                    <p><%=rst3.getString("emp_name") %></p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <%
                                        }
                                    %>
                                     
                                </ul>
                            </li><div class="slimScrollBar" style="background-color: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-top-left-radius: 7px; border-top-right-radius: 7px; border-bottom-right-radius: 7px; border-bottom-left-radius: 7px; z-index: 99; right: 1px; background-position: initial initial; background-repeat: initial initial;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-top-left-radius: 7px; border-top-right-radius: 7px; border-bottom-right-radius: 7px; border-bottom-left-radius: 7px; background-color: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px; background-position: initial initial; background-repeat: initial initial;"></div></div>

                            <!-- Messages Dropdown Footer -->
                            <li class="dropdown-footer">
                                <a href="#" id="hospital_request">See All Request</a>
                            </li>

                        </ul>
                        <!-- /.dropdown-menu -->
                    </li>
                    <%
                        }
                    %>
                    <!-- end TASKS DROPDOWN -->

                    <!-- begin USER ACTIONS DROPDOWN -->
                    
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-user"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li>
                                <a href="profile.html">
                                    <i class="fa fa-user"></i> My Profile
                                </a>
                            </li>
                            <li>
                                <a href="mailbox.html">
                                    <i class="fa fa-envelope"></i> My Messages
                                 
                                </a>
                            </li>
                           
                           
                            <li>
                                <a href="calendar.html">
                                    <i class="fa fa-calendar"></i> My Calendar
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-gear"></i> Settings
                                </a>
                            </li>
                            <li>
                                <a class="logout_open" href="../../logout.jsp">
                                    <i class="fa fa-sign-out"></i> Logout
                                    <strong>Gaurav Sahu</strong>
                                </a>
                            </li>
                        </ul>
                        <!-- /.dropdown-menu -->
                    </li>
                    <!-- /.dropdown -->
                    <!-- end USER ACTIONS DROPDOWN -->

                </ul>
                <!-- /.nav -->
                <!-- end MESSAGES/ALERTS/TASKS/USER ACTIONS DROPDOWNS -->

            </div>
            <!-- /.nav-top -->
        </nav>
        <!-- /.navbar-top -->
        <!-- end TOP NAVIGATION -->
<% }
        catch(ClassNotFoundException e){
            out.println(e);
        }catch(SQLException e){
            out.println(e);
        }catch(Exception e){
            out.println(e);
        }
%> 
                                   