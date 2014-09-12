<%-- 
    Document   : newjsp
    Created on : 3 Apr, 2014, 11:46:09 PM
    Author     : QWERTY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="myscript.js" type="text/javascript" ></script>
        <script src="jquery.js" type="text/javascript"></script>
        <script src="jquery-ui-1.8.17.custom.min.js" type="text/javascript"></script>
        <script>
            $(document).ready(function()
{
            $("#addnew").click(function(){
             alert("hiiii");   
            ajaxProcessDB();  
        });
         function ajaxProcessDB(){
                alert("hiiii22");
                $.ajax({
                 
                url: "http://localhost:8084/Final/rest/death-cause/cause",
                crossDomain:true,
                type:'post',
                dataType:'jsonp',
                jsonpCallback:'jsoncallback',
                success: function(data){
                          
                            for (var i = 0; i < data; i++) {
                                $(".boxdemo").append("<option value='"+ data[i].CauseID+"'>"+ data[i].CauseName+"</option>");	
                            }	
                        }
                        
                     });
                }
        });

        </script>
    </head>
    <body>
        
        <form action="#">
            <input type="button" id="addnew" value="Add">
            <select name="cause" class="boxdemo">
                <option value="null">---Select One---</option>
            </select>
        </form>
    </body>
</html>
