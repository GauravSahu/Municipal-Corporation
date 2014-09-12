/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */



$(document).ready(function(){
        var valid='0';
	$("#login_form").submit(function()
	{
		
		$("#msgbox").removeClass().addClass('alert alert-block').text('Authenticating...........').fadeIn(500);
		
		$.ajax({
                url: "rest/login/new/"+$("#username").val()+"/"+$("#password").val()+"",
                crossDomain:true,
                type:'get',
                dataType:'jsonp',
                jsonpCallback:'jsoncallback',
                success: function(data){
                    if(data.data==164) 
                    {
		  	
		  	$("#msgbox").fadeTo(200,0.1,function()  
			{ 
			valid='1';
			 
			
                            $(this).html('Welcome.........').addClass('alert alert-success').fadeTo(900,1,
                            function()
                            { 
                                
			  	 $().redirect('login.jsp', {'emp_id':data.EmployeeID,'role': data.role ,'name':data.EmployeeName ,'dept_id': data.dept_id,'ulb_id': data.ULBID }, 'POST');
                            });
                             
                               
			});
                        
		  }
                   else if(data.data==168 ) 
		  {
		  	$("#msgbox").fadeTo(200,0.1,function()
			{ 
                            $(this).addClass("");
			  $(this).html('Provide login ID  !!').addClass('alert alert-error').fadeTo(900,1);
			  document.getElementById('username').value='';
			    document.getElementById('password').value='';
			}
			
			);		
          }
                  else if(data.data==166 ) 
		  {
		  	$("#msgbox").fadeTo(200,0.1,function()
			{ 
                            $(this).addClass("");
			  $(this).html('Your login ID Incorrect !!').addClass('alert alert-error').fadeTo(900,1);
			  document.getElementById('username').value='';
			    document.getElementById('password').value='';
			}
			
			);		
          }
		  else if(data.data!=164 && valid=='0') 
		  {
		  	$("#msgbox").fadeTo(200,0.1,function()
			{ 
                            $(this).addClass("");
			  $(this).html('Your login detail Incorrect !!').addClass('alert alert-error').fadeTo(900,1);
			  document.getElementById('username').value='';
			    document.getElementById('password').value='';
			}
			
			);		
          }
                }
				
        });
 		return false; 
	});
	
	$("#password").blur(function()
	{
		$("#login_form").trigger('submit');
	});
        
       
	$("#add").click(function()
	{
		
		$("#msgbox").removeClass().addClass('alert alert-block').text('Capatcha Checking.........').fadeIn(500);
		
		$.post("captchasubmit.jsp",{ answer:$("#answer").val(), child_id:$("#child_id").val(), rand:Math.random() } ,function(data)
        {
		  if(data==164) 
		  {
		  	
		  	$("#msgbox").fadeTo(200,0.1,function()  
			{ 
			valid='1';
			 
			  
			  $(this).html('Certificate is openning....').addClass('alert alert-success').fadeTo(900,1,
              function()
			  {
                             document.location='./BirthCertificate?child_id='+$("#child_id").val();
                                // $().redirect('http://localhost:8084/Final/BirthCertificate', {'child_id':$("#child_id").val()}, 'post');
			   });
			  
			});
		  }
                   else if(data==188) 
		  {
		  	$("#msgbox").fadeTo(200,0.1,function()
			{ 
			
			  $(this).html('Child ID Incorrect !!').addClass('alert alert-error').fadeTo(900,1);
			  document.getElementById('child_id').value='';
			    
			}
			
			);		
                }
                 
		  else if(data!=164 && valid=='0') 
		  {
		  	$("#msgbox").fadeTo(200,0.1,function()
			{ 
			
			  $(this).html('Capatcha code Incorrect !!').addClass('alert alert-error').fadeTo(900,1);
			  document.getElementById('answer').value='';
			    
			}
			
			);		
          }
				
        });
 		return false; 
	});
        
        
        $("#add_death").click(function()
	{
		
		$("#msgbox").removeClass().addClass('alert alert-block').text('Capatcha Checking.........').fadeIn(500);
		
		$.post("captchasubmit.jsp",{ answer:$("#answer").val(), child_id:$("#person_id").val(), rand:Math.random() } ,function(data)
        {
		  if(data==164) 
		  {
		  	
		  	$("#msgbox").fadeTo(200,0.1,function()  
			{ 
			valid='1';
			 
			  
			  $(this).html('Certificate is openning1....').addClass('alert alert-success').fadeTo(900,1,
              function()
			  {
                              document.location='./DeathCertificate?person_id='+$("#child_id").val();
                             //    $().redirect('http://localhost:8084/Final/BirthCertificate', {'child_id':$("#child_id").val()}, 'post');
			   });
			  
			});
		  }
                   else if(data==188) 
		  {
		  	$("#msgbox").fadeTo(200,0.1,function()
			{ 
			
			  $(this).html('Child ID Incorrect !!').addClass('alert alert-error').fadeTo(900,1);
			  document.getElementById('child_id').value='';
			    
			}
			
			);		
                }
                 
		  else if(data!=164 && valid=='0') 
		  {
		  	$("#msgbox").fadeTo(200,0.1,function()
			{ 
			
			  $(this).html('Capatcha code Incorrect !!').addClass('alert alert-error').fadeTo(900,1);
			  document.getElementById('answer').value='';
			    
			}
			
			);		
          }
				
        });
 		return false; 
	});
        
        $("#death").load(function()
	{
		
		$.ajax({
                url: "localhost:8084/Final/rest/death-cause/cause",
                crossDomain:true,
                type:'get',
                dataType:'jsonp',
                jsonpCallback:'jsoncallback',
               
                success: function(data){
                    
                    while(data.CauseID != 0){
                        
                    }
                }
				
        });
 		return false; 
	});
        
        $("#edit_data").click(function(){
             alert("hiiii");   
             ajaxProcessDB("insert",-1);  
        });
        $("#hospital_request").click(function(){
        $("#main").load("hospital-request.jsp");
    });
    $("#user_profile").click(function(){        
        $("#main").load("user-profile.jsp");
    });
    $("#compose_mail").click(function(){        
        $("#main").load("compose-mail.jsp");
    });
    $("#add_employee").click(function(){        
        $("#main").load("add-employee-form.jsp");
    });
    
    $("#add_ulb").click(function(){        
        $("#main").load("add-ulb.jsp");
    });
    
     $("#ulb_detail_click").click(function(){  
         alert("hii");
        $("#ulb_detail").load("http://e-nagarsewaup.gov.in/ulbapps/publicDownload/ulbdetails.html");
    });
    
   
       
  $(".hospital_approve").click(function (){
        var id = $(this).attr("id");
        id = id.substring(1,id.size);
        alert(id);
        
   }); 
     
    
     $("#leave_request_show").click(function(){
                   
                     $("#main").load("http://localhost:8084/Final/admin/show-leave.jsp");
                });
    
    
    
	
});
