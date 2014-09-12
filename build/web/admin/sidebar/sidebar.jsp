<%-- 
    Document   : sidebar
    Created on : 20 Feb, 2014, 3:31:28 AM
    Author     : QWERTY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <body>
          <nav class="navbar-side" role="navigation">
            <div class="navbar-collapse sidebar-collapse collapse">
                <ul id="side" class="nav navbar-nav side-nav">
                    <!-- begin SIDE NAV USER PANEL -->
                    <li class="side-user hidden-xs">
                        <img  src="http://localhost:8084/Final/admin/img/1034810002.png" width="150" height="230" alt="">
                        <p class="welcome">
                            <i class="fa fa-key"></i> Logged in as
                        </p>
                        <p class="name tooltip-sidebar-logout">
                            Gaurav
                            <span class="last-name">Sahu</span> 
                            <a style="color: inherit" class="logout_open" href="#logout" data-toggle="tooltip" data-placement="top" title="Logout"><i class="fa fa-sign-out"></i></a>
                        </p>
                        <div class="clearfix"></div>
                    </li>
                    <!-- end SIDE NAV USER PANEL -->
                    <!-- begin SIDE NAV SEARCH -->
                    <li class="nav-search">
                        <form role="form">
                            <input type="search" class="form-control" placeholder="Search...">
                            <button class="btn">
                                <i class="fa fa-search"></i>
                            </button>
                        </form>
                    </li>
                    <!-- end SIDE NAV SEARCH -->
                    <!-- begin DASHBOARD LINK -->
                    <li>
                        <a class="active" id="user_profile" >
                            <i class="fa fa-dashboard"></i> Dashboard
                        </a>
                    </li>
                    <!-- end DASHBOARD LINK -->
                    <!-- begin CHARTS DROPDOWN -->
                    <li class="panel">
                        <a href="#"  id="add_employee" data-parent="#side"  data-target="#charts">
                            <i class="fa fa-user"></i> Add New Employee 
                        </a>
                        
                    </li>
                    <!-- end CHARTS DROPDOWN -->
                    <!-- begin FORMS DROPDOWN -->
                    <li class="panel">
                        <a href="http://localhost:8084/Final/admin/employee-update.jsp"  data-target="#forms">
                            <i class="fa fa-edit"></i> Update Record 
                        </a>
                       
                    </li>
                    <!-- end FORMS DROPDOWN -->
                    <!-- begin CALENDAR LINK -->
                    <li>
                        <a onclick="report()">
                            <i class="fa fa-calendar"></i> Report
                        </a>
                    </li>
                    <!-- end CALENDAR LINK -->
                    <!-- begin TABLES DROPDOWN -->
                    <li class="panel">
                        <a href="#"  id="hospital_request" class="hospital_request" >
                            <i class="fa fa-table"></i>Hospital Request  
                        </a>
                       
                    </li>
                    <!-- end TABLES DROPDOWN -->
                    <!-- begin UI ELEMENTS DROPDOWN -->
                   <li class="panel">
                        <a href="#"  id="leave_request_show"  >
                            <i class="fa fa-table"></i>Leave Request  
                        </a>
                       
                    </li>
                    
                    <li class="panel">
                        <a href="#"  id="add_ulb" >
                            <i class="fa fa-table"></i>Add New ULB
                        </a>
                       
                    </li>
                    <!-- end UI ELEMENTS DROPDOWN -->
                    <!-- begin MESSAGE CENTER DROPDOWN -->
                    <li class="panel">
                        <a href="javascript:;" data-parent="#side" data-toggle="collapse" class="accordion-toggle" data-target="#message-center">
                            <i class="fa fa-inbox"></i> Message Center <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="collapse nav" id="message-center">
                            <li>
                                <a onclick="mailbox()">
                                    <i class="fa fa-angle-double-right"></i> Mailbox
                                </a>
                            </li>
                            <li>
                                <a  id="compose_mail">
                                    <i class="fa fa-angle-double-right"></i> Compose Message
                                </a>
                            </li>
                            <li>
                                <a href="chat.html">
                                    <i class="fa fa-angle-double-right"></i> Chat
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- end MESSAGE CENTER DROPDOWN -->
                    <!-- begin PAGES DROPDOWN -->
                    <li class="panel">
                        <a href="javascript:;" data-parent="#side" data-toggle="collapse" class="accordion-toggle" data-target="#pages">
                            <i class="fa fa-files-o"></i> Pages <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="collapse nav" id="pages">
                            <li>
                                <a href="profile.html">
                                    <i class="fa fa-angle-double-right"></i> User Profile
                                </a>
                            </li>
                            <li>
                                <a href="invoice.html">
                                    <i class="fa fa-angle-double-right"></i> Invoice
                                </a>
                            </li>
                            <li>
                                <a href="pricing.html">
                                    <i class="fa fa-angle-double-right"></i> Pricing Tables
                                </a>
                            </li>
                            <li>
                                <a href="faq.html">
                                    <i class="fa fa-angle-double-right"></i> FAQ Page
                                </a>
                            </li>
                            <li>
                                <a href="search-results.html">
                                    <i class="fa fa-angle-double-right"></i> Search Results
                                </a>
                            </li>
                            <li>
                                <a href="login.html">
                                    <i class="fa fa-angle-double-right"></i> Login Basic
                                </a>
                            </li>
                            <li>
                                <a href="login-social.html">
                                    <i class="fa fa-angle-double-right"></i> Login Social
                                </a>
                            </li>
                            <li>
                                <a href="404.html">
                                    <i class="fa fa-angle-double-right"></i> 404 Error
                                </a>
                            </li>
                            <li>
                                <a href="500.html">
                                    <i class="fa fa-angle-double-right"></i> 500 Error
                                </a>
                            </li>
                            <li>
                                <a href="blank.html">
                                    <i class="fa fa-angle-double-right"></i> Blank Page
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- end PAGES DROPDOWN -->
                </ul>
                <!-- /.side-nav -->
            </div>
            <!-- /.navbar-collapse -->
        </nav>
    </body>
</html>
