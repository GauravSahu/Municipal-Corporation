      
 <% 
     //  String name= request.getParameter("name");
       
       
     
       String id = (String)session.getAttribute("emp_id");
      
       String ulb_id = (String)session.getAttribute("ulb_id");
     %>           
<div class="page-content page-content-ease-in">

                <!-- begin PAGE TITLE ROW -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-title">
                            <h1>
                                Leave Application 
                            </h1>
                            <ol class="breadcrumb">
                                <li><i class="fa fa-dashboard"></i>  <a href="BDR-admin.jsp">Dashboard</a>
                                </li>
                                <li class="active">Request for Leave</li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- end PAGE TITLE ROW -->

                <div class="row">
                    <div class="col-lg-2"></div>
                  <div class="col-lg-8">
                                <div class="portlet portlet-blue">
                                    <div class="portlet-heading">
                                        <div class="portlet-title">
                                         <h4>Leave Request</h4>
                                        </div>
                                        <div class="portlet-widgets">
                                            <a data-toggle="collapse" data-parent="#accordion" href="basic-form-elements.html#horizontalFormExample"></a>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div id="leave_request"  class="panel-collapse collapse in">
                                        <br>
                                        <form class="form-horizontal" id="leave_form" action="leave.jsp" method="post">
                                          
                                          
                                           
                                            <div class="form-group">
                                                    <label class="col-sm-2 control-label">Leave Cause</label>
                                                    <div class="col-sm-6">
                                                        <textarea class="form-control" name="cause" id="textArea" placeholder="Leave Cause......"></textarea>
                                                    </div>
                                            </div>
                                            <div class="form-group">
                                                    <label class="col-sm-2 control-label">Duration</label>
                                                    <div class="col-sm-6">
                                                        <input type="text" class="form-control" name="duration" placeholder="Duration">
                                                    </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                 <label class="col-sm-2 control-label">From</label>
                                                     <div class="col-sm-3">
                                                       
                                                            <input class="form-control" name="from" type="date">
                                               
                                                    </div>
                                                   <label class="col-sm-2 control-label">To</label>
                                                    <div class="col-sm-3">
                                                        
                                                            <input class="form-control" name="to" type="date">
                                                
                                                    </div>
                                            </div>
                                            <div class="form-group">
                                                   
                                                    <div class="col-sm-2">
                                                        <button id="success-message-demo" class="btn btn-warning">Submit</button>
                                                    </div>
                                                 
                                            </div>
                                        </form>
                                        
                                    </div>
                                </div>
                                <!-- /.portlet -->
                            </div>
                    <!-- /.col-lg-12 -->
                        <div class="col-lg-2"></div>
                </div>
                <!-- /.row -->

            </div>
