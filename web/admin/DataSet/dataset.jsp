<%@page import="java.sql.*,javax.sql.*,java.io.*,java.sql.DriverManager,java.sql.Connection"  session="true" contentType="text/html" pageEncoding="UTF-8"%>
<%
     int ans = 0;
     int ans1 = 0;
     int ans2 = 0;
        try{
                   
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");           
            PreparedStatement pstmt  = con.prepareStatement("SELECT COUNT(*) FROM `hospital_master` WHERE `status` = 0");
            PreparedStatement pstmt1  = con.prepareStatement("SELECT COUNT(*) FROM `child_birth`  ");
             PreparedStatement pstmt2  = con.prepareStatement("SELECT COUNT(*) FROM `leave_master` WHERE  `status` = 0");
            ResultSet rst  = pstmt.executeQuery();
            ResultSet rst1  = pstmt1.executeQuery();
             ResultSet rst2  = pstmt2.executeQuery();
          
            while(rst.next()){
               
               ans = rst.getInt("COUNT(*)");
           }
            
            while(rst1.next()){
               
               ans1 = rst1.getInt("COUNT(*)");
           }
              while(rst2.next()){
               
               ans2 = rst2.getInt("COUNT(*)");
           }
            
             
           
            
 %>
<!-- begin PAGE TITLE AREA -->
                <!-- Use this section for each page's title and breadcrumb layout. In this example a date range picker is included within the breadcrumb. -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-title">
                            <h1>Dashboard
                                <small>Content Overview</small>
                            </h1>
                            <ol class="breadcrumb">
                                <li class="active"><i class="fa fa-dashboard"></i> Dashboard</li>
                                <li class="pull-right">
                                    <div id="reportrange" class="btn btn-green btn-square date-picker">
                                        <i class="fa fa-calendar"></i>
                                        <span class="date-range"></span> <i class="fa fa-caret-down"></i>
                                    </div>
                                </li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- end PAGE TITLE AREA -->

<!-- begin DASHBOARD CIRCLE TILES -->
                <div class="row">
                    <div class="col-lg-2 col-sm-6">
                        <div class="circle-tile">
                            <a href="#">
                                <div class="circle-tile-heading dark-blue">
                                    <i class="fa fa-users fa-fw fa-3x"></i>
                                </div>
                            </a>
                            <div class="circle-tile-content dark-blue">
                                <div class="circle-tile-description text-faded">
                                       Birth Status
                                </div>
                                <div class="circle-tile-number text-faded">
                                    <% out.print(ans1);%>
                                    <span id="sparklineA"></span>
                                </div>
                                <a href="#" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-sm-6">
                        <div class="circle-tile">
                            <a href="#">
                                <div class="circle-tile-heading green">
                                    <i class="fa fa-users fa-fw fa-3x"></i>
                                </div>
                            </a>
                            <div class="circle-tile-content green">
                                <div class="circle-tile-description text-faded">
                                    Death Status
                                </div>
                                <div class="circle-tile-number text-faded">
                                    32,384
                                </div>
                                <a href="#" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-sm-6">
                        <div class="circle-tile">
                            <a href="#">
                                <div class="circle-tile-heading orange">
                                    <i class="fa fa-bell fa-fw fa-3x"></i>
                                </div>
                            </a>
                            <div class="circle-tile-content orange">
                                <div class="circle-tile-description text-faded">
                                    Hospital Request
                                </div>
                                <div class="circle-tile-number text-faded">
                                    <% out.print(ans);%> New
                                </div>
                                <a href="#" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-sm-6">
                        <div class="circle-tile">
                            <a href="#">
                                <div class="circle-tile-heading blue">
                                    <i class="fa fa-tasks fa-fw fa-3x"></i>
                                </div>
                            </a>
                            <div class="circle-tile-content blue">
                                <div class="circle-tile-description text-faded">
                                    Leave Request
                                </div>
                                <div class="circle-tile-number text-faded">
                                   <% out.print(ans2);%>
                                    <span id="sparklineB"></span>
                                </div>
                                <a href="#" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-sm-6">
                        <div class="circle-tile">
                            <a href="#">
                                <div class="circle-tile-heading red">
                                    <i class="fa fa-shopping-cart fa-fw fa-3x"></i>
                                </div>
                            </a>
                            <div class="circle-tile-content red">
                                <div class="circle-tile-description text-faded">
                                    Orders
                                </div>
                                <div class="circle-tile-number text-faded">
                                    24
                                    <span id="sparklineC"></span>
                                </div>
                                <a href="#" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-sm-6">
                        <div class="circle-tile">
                            <a href="#">
                                <div class="circle-tile-heading purple">
                                    <i class="fa fa-comments fa-fw fa-3x"></i>
                                </div>
                            </a>
                            <div class="circle-tile-content purple">
                                <div class="circle-tile-description text-faded">
                                    Mentions
                                </div>
                                <div class="circle-tile-number text-faded">
                                    96
                                    <span id="sparklineD"></span>
                                </div>
                                <a href="#" class="circle-tile-footer">More Info <i class="fa fa-chevron-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end DASHBOARD CIRCLE TILES -->
                
                <% }
        catch(ClassNotFoundException e){
            out.println(e);
        }catch(SQLException e){
            out.println(e);
        }catch(Exception e){
            out.println(e);
        }
%> 
    