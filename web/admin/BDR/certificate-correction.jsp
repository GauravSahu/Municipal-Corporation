<div class="page-content page-content-ease-in">

                <!-- begin PAGE TITLE ROW -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-title">
                            <h1>
                                Certificate Correction
                            </h1>
                            <ol class="breadcrumb">
                                <li><i class="fa fa-dashboard"></i>  <a href="index.jsp">Dashboard</a>
                                </li>
                                <li class="active">Certificate Correction</li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- end PAGE TITLE ROW -->

                <div class="row">
                   
                    <div class="col-lg-6">
                       <div class="portlet portlet-red">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>Birth And Death Certificate Correction</h4>
                                </div>
                               
                                <div class="clearfix"></div>
                            </div>
                            <div id="redPortlet" class="panel-collapse collapse in">
                                <div class="portlet-body">
                                    <form id="correction_form" >
                                        <div class="form-inline">
                                            <label  class="control-label">Certificate&nbsp;Type&nbsp;&nbsp;&nbsp;</label>
                                            <select class="form-control" id="cerificate_type">
                                                <option value="Birth">Birth Data</option>
                                                <option value="Death">Death Data</option>
                                            </select>
                                        </div>
                                        <br>
                                       <div class="input-group">
                                          <span class="input-group-addon">Registration ID</span>
                                          <input type="text" class="form-control " id="reg_id" placeholder="Enter Registration id">
                                         <span class="input-group-btn">
                                             <button class="btn btn-default" id="cerificate_edit" data-toggle="modal" data-target="#flexModal" type="button">Search!!</button>
                                         </span>
                                       </div> 
                                    </form>
                                 </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                     <div class="col-lg-6">
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
               
                <!-- /.row -->
                <!-- End PAGE TITLE ROW -->
                  <div class="row">
                       <div class="col-lg-2"></div>
                            <div class="portlet portlet-default">
                                <div class="portlet-heading">
                                    <div class="portlet-title">
                                        <h4>Edit Birth Data</h4>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="portlet-body">
                                    <form name="myform" action="birth-update.jsp" method="post"> 
                                        <table class="table_edit" >
            
                                        </table>                     
                                    </form> 
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
                     </div>
                </div>
                <!-- /.row -->

            </div>

<script>
     $("#cerificate_edit").click(function(){
            
        var x = document.forms["correction_form"]["cerificate_type"].value;
        var y = document.forms["correction_form"]["reg_id"].value;
        if(x==='Birth'){
               
                 $.ajax({
                 
                url: "http://localhost:8084/Final/rest/BirthCertificateData/new/"+y,
                crossDomain:true,
                type:'post',
                dataType:'jsonp',
                jsonpCallback:'jsoncallback',
                success: function(data){
                   // alert(data.EmployeeID);
                          
                           $(".table_edit").html("\
                                       \n\
                                        <tr style=\"display: none;\"><td>Employee ID</td><td><input type=\"text\" name=\"child_id\" value='"+ data.ChildID +"' > </td></tr>\n\\n\
                                        <tr><td>Child Name</td><td><input type=\"text\" name=\"child_name\" value='"+ data.ChildName +"' > </td></tr>\n\\n\
                                        <tr><td>Father Name</td><td><input type=\"text\" name=\"father_name\" value='"+ data.FatherName +"' > </td></tr>\n\
                                        <tr><td>Mother Name</td><td><input type=\"text\" name=\"mother_name\" value='"+ data.MotherName +"' > </td></tr>\n\
                                        <tr><td>Gender</td><td><input type=\"text\" name=\"gender\" value='"+ data.Gender +"' > </td></tr>\n\
                                        <tr><td>Date Of Birth</td><td><input type=\"date\" name=\"dob\" value='"+ data.DOB +"' > </td></tr>\n\
                                        <tr><td>Email</td><td><input type=\"text\" name=\"email\" value='"+ data.Email +"' > </td></tr>\n\
                                        <tr><td>Phone No</td><td><input type=\"text\" name=\"mobile_number\" value='"+ data.PhoneNo +"' > </td></tr>\n\
                                        <tr><td>Birth Place</td><td><input type=\"text\" name=\"birth_place\" value='"+ data.BirthPlace+"' > </td></tr>\n\
                                        <tr><td>Address</td><td><input type=\"text\" name=\"address\" value='"+ data.Address+"' > </td></tr>\n\
                                        <tr><td>Religion</td><td><input type=\"text\" name=\"religion\" value='"+ data.Religion+"' > </td></tr>\n\
                                        <tr><td>Hospital Name</td><td><input type=\"text\" name=\"hospital_name\" value='"+ data.HospitalName+"' > </td></tr>\n\
                                        <tr><td>Ulb ID</td><td><input type=\"text\" name=\"ulbsel\" value='"+ data.ULBID+"' > </td></tr>\n\
                                        <tr><td>Father Nationality</td><td><input type=\"text\" name=\"fnat\" value='"+ data.Fathernationality+"' > </td></tr>\n\
                                        <tr><td>Mohalla ID</td><td><input type=\"text\" name=\"mohallaSel\" value='"+ data.MohallaId+"' > </td></tr>\n\
                                        <tr><td>Hospital Type</td><td><input type=\"text\" name=\"hospital_type\" value='"+ data.Type+"' > </td></tr>\n\
                                        <tr><td>Permanent Address</td><td><input type=\"text\" name=\"p_address\" value='"+ data.PermanentAddress+"' > </td></tr>\n\
                                        <tr><td>Mother Nationality</td><td><input type=\"text\" name=\"mnat\" value='"+ data.Mothernationality+"' > </td></tr>\n\
                                        <tr><td>Registration Place</td><td><input type=\"text\" name=\"registration_place\" value='"+ data.RegisterationPlace+"' > </td></tr>\n\
                                        <tr><td>Registration Date</td><td><input type=\"text\" name=\"reg_date\" value='"+ data.RegisterationDate+"' > </td></tr>\n\
                                        <tr><td>Status</td><td><input type=\"text\" name=\"status\" value='"+ data.Status+"' > </td></tr>\n\
                            ");             
                        
                        }
                        
             });
                
        }
        else if(x==='Death'){
                alert("Death");
        }
    });
    
</script>
<script type="text/javascript">
function submitform()
{
  document.myform.submit();
}
</script>