          

                
<div class="page-content page-content-ease-in">

                <!-- begin PAGE TITLE ROW -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-title">
                            <h1>
                                Add Death Data
                            </h1>
                            <ol class="breadcrumb">
                                <li><i class="fa fa-dashboard"></i>  <a href="BDR-admin.jsp">Dashboard</a>
                                </li>
                                <li class="active">Add Death Record</li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- end PAGE TITLE ROW -->

                <div class="row">
                    
                  <div class="col-lg-10">
                                <div class="portlet portlet-blue">
                                    <div class="portlet-heading">
                                        <div class="portlet-title">
                                         <h4>Add Death Record</h4>
                                        </div>
                                        <div class="portlet-widgets">
                                            <a data-toggle="collapse" data-parent="#accordion" href="basic-form-elements.html#horizontalFormExample"></a>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div id="death" id="horizontalFormExample" class="panel-collapse collapse in">
                                        <div class="portlet-body">
                                            <form class="form-horizontal" role="form" action="death-reg.jsp" method="post">
                                                <div class="table-responsive">  
                                                <table>
                                                    <tr>
                                                        <td><label class="col-sm-3 control-label">Person&nbsp;Name</label></td>
                                                        <td width="200px"> <input type="text" class="form-control" name="person_name" required placeholder="Person Name"></td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td><label class="col-sm-3 control-label">Father&nbsp;Name</label></td>
                                                        <td width="200px"><input type="text" class="form-control" name="father_name" required placeholder="Father Name"></td>
                                                    </tr>
                                                   
                                                    <tr>
                                                        <td><label class="col-sm-3 control-label">Mother&nbsp;Name</label></td>
                                                        <td> <input type="text" class="form-control" name="mother_name" required placeholder="Mother Name"></td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td><label class="col-sm-3 control-label">Gender</label></td>
                                                        <td><input type="radio"  name="gender"  value= 'male' required >&nbsp;&nbsp;Male&nbsp;&nbsp;<input  type="radio"  value= 'female' name="gender"  required />&nbsp;&nbsp;Female</td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td><label class="col-sm-3 control-label">Date&nbsp;of&nbsp;Birth</label></td>
                                                        <td> <input type="date" class="form-control" name="dob" required placeholder="Date of Birth"></td>
                                                         <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td><label class="col-sm-3 control-label">Death&nbsp;Place</label></td>
                                                        <td><input type="text" class="form-control" name="death_place" required placeholder="Death Place"></td>
                                                    </tr>
                                                     <tr>
                                                        <td><label class="col-sm-3 control-label">Date&nbsp;of&nbsp;Death</label></td>
                                                        <td> <input type="date" class="form-control" name="dod" required placeholder="Date of Death"></td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td><label class="col-sm-3 control-label">ULB&nbsp;</label></td>
                                                        <td><div id="ulb"> <jsp:include page="../BDR/getULB.jsp"></jsp:include></div></td>
                                                    </tr>
                                                    <tr>
                                                        <td><label class="col-sm-3 control-label">Mohalla</label></td>
                                                        <td> <div id="chkMohalla" >
                                                                <select class="form-control" id="mohallaSel" name="mohallaSel"  onchange="show_zone(this.value)">
                                                                <option value="">--Select Mohalla--</option>                      
                                                                </select></div></td>
                                                         <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td><label class="col-sm-3 control-label">Pregnancy&nbsp;Detail</label></td>
                                                        <td><select class="form-control" name="p_detail">
                                                                <option value="null">---select----</option>
                                                                 <option value="0">No</option>
                                                                  <option value="1">Yes</option>
                                                            </select></td>
                                                    </tr>
                                                    <tr>
                                                        <td><label class="col-sm-3 control-label">Death&nbsp;Time</label></td>
                                                        <td><input type="time" name="time" class="form-control" required></td>
                                                         <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td><label class="col-sm-3 control-label">Death&nbsp;Cause</label></td>
                                                        <td><div class="cause_div">
                                                                <jsp:include page="getDeath-Cause.jsp" ></jsp:include>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><label class="col-sm-3 control-label">Informent Name</label></td>
                                                        <td><input type="text" class="form-control" name="info_name" required placeholder="Informent Name"></td>
                                                         <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td><label class="col-sm-3 control-label">Informent&nbsp;Address</label></td>
                                                        <td><textarea class="form-control" name="info_address" required placeholder="Informent Address"></textarea></td>
                                                     </tr>
                                                      <tr>
                                                        <td><label class="col-sm-3 control-label">Informent Mobile</label></td>
                                                        <td><input type="text" class="form-control" name="info_mob" required placeholder="Informent Mobile"></textarea></td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td ><label class="col-sm-3 control-label">Informent&nbsp;Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                                        <td><input type="email" class="form-control" name="email" required placeholder="Email"></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2"><label class="col-sm-3 control-label">Religion&nbsp;</label></td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td colspan="2"> <input type="radio" name="religion" value="Hindu"  />&nbsp;&nbsp;Hindu&nbsp;<input type="radio" id="name" name="religion" value="Muslim"  />&nbsp;&nbsp;Muslim&nbsp;<input type="radio" id="name" name="religion" placeholder="Sikh"  />&nbsp;&nbsp;Sikh&nbsp;<input type="radio" id="name" name="religion" value="Christian"  />&nbsp;&nbsp;Christian<input type="radio" id="name" name="religion" value="other"  />&nbsp;&nbsp;Other</td>
                                                        
                                                        
                                                    </tr>
                                                    <tr>
                                                        <td><label class="col-sm-3 control-label">Registration Date</label></td>
                                                        <td><input type="date" class="form-control" name="reg_date" required placeholder="Registration Date"></textarea></td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                        <td ><label class="col-sm-3 control-label">Registration&nbsp;Place&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                                        <td><input type="text" class="form-control" name="registration_place" required placeholder="Registration Place"></td>
                                                    </tr>
                                                   
                                                     
                                                    <tr>
                                                        <td><label class="col-sm-3 control-label">Nationality&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                                        <td><input type="text" class="form-control" name="nat" required placeholder="Nationality"></td>
                                                        <td></td>
                                                        <td><button type="reset" class="btn btn-default">&nbsp;&nbsp;&nbsp;Reset&nbsp;&nbsp;&nbsp;</button></td>
                                                        <td><button  type="submit" class="btn btn-default">&nbsp;&nbsp;&nbsp;Submit&nbsp;&nbsp;&nbsp;</button></td>
                                                    </tr>
                                                </table>
                                                
                                                </div>
                                                
                                            </form>
                                            
                                        </div>
                                    </div>
                                </div>
                                <!-- /.portlet -->
                            </div>
                    <!-- /.col-lg-12 -->
                        <div class="col-lg-2"></div>
                </div>
                <!-- /.row -->

            </div>
               