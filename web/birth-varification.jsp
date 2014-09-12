<%-- 
    Document   : index
    Created on : 13 Mar, 2014, 11:49:04 PM
    Author     : QWERTY
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
<title>Municipal Corporation</title>

<link rel='stylesheet' href='./css/bootstrap.css?ver=3.6.1' type='text/css' media='all'/>
<link rel='stylesheet' href='./css/font-awesome.css?ver=3.6.1' type='text/css' media='all'/>
<link rel='stylesheet'  href='./css/default.css?ver=3.6.1' type='text/css' media='all'/>
<link rel='stylesheet'  href='./css/icons.css?ver=3.6.1' type='text/css' media='all'/>
<link rel='stylesheet'  href='./css/shortcodes.css?ver=3.6.1' type='text/css' media='all'/>
<link rel='stylesheet'  href='./css/widgets.css?ver=3.6.1' type='text/css' media='all'/>
<link rel='stylesheet'  href='./css/sliders.css?ver=3.6.1' type='text/css' media='all'/>
<link rel='stylesheet'  href='./css/bootstrap-responsive.css?ver=3.6.1' type='text/css' media='all'/>
<link rel='stylesheet'  href='./css/skin-red.css?ver=3.6.1' type='text/css' media='all'/>
<link rel='stylesheet'  href='./css/style.css?ver=3.6.1' type='text/css' media='all'/>
<link rel="stylesheet" href="./css/mycss.css" >

<script type='text/javascript' src='./js/jquery.js?ver=1.10.2'></script>
<script type='text/javascript' src='./js/jquery-migrate.min.js?ver=1.2.1'></script>
<script type='text/javascript' src='./js/comment-reply.min.js?ver=3.6.1'></script>

<script type="text/javascript"  src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script type="text/javascript" src="./lib/jquery-1.10.1.min.js"></script>
	<!-- Add fancyBox main JS and CSS files -->
<script type="text/javascript" src="./source/jquery.fancybox.js?v=2.1.5"></script>

<script>
    function valid(){

   if( document.myForm.regid.value == "" )
   {
     alert( "Please provide your ChildID!" );
     document.myForm.regid.focus() ;
     return false;
   }
   if( document.myForm.captcha.value == "" )
   {
     alert( "Please Fill Image Letter" );
     document.myForm.captcha.focus() ;
     return false;
   }
        
}  
    
</script>
<script>
function showCustomer()
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
    document.getElementById("div1").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","simplecaptcha.jsp?q="+0,true);
xmlhttp.send();
}
</script>
  
<style type="text/css" media="all">
.box1 i, .fancybox2 i, .sbutton i, .intro i  {margin-right:5px;}
.boxlink i {margin-right:0px;}
.captionicons {margin-right:5px;}
input, button, select, textarea {font-family:'open_sansregular';}
</style>
<style type="text/css" media="all">
body.boxed { 
-webkit-background-size: cover;
-moz-background-size: cover;	
-o-background-size: cover;	
background: url('./img/background.png') repeat top center;		
background-position:center left;	
background-attachment:fixed;}
</style>
<!--[if lt IE 9]>
<script src="http://www.wowthemes.net/demo-biscaya/wp-content/themes/biscaya/js/html5shiv.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="http://www.wowthemes.net/demo-biscaya/wp-content/themes/biscaya/css/ie8.css" />
<![endif]-->
<!--[if IE]>
<style>
.isotope-hidden { display: none; }
</style>
<![endif]-->
<style type="text/css">

.top {
margin-bottom: 15px;
}
.buttondiv {
margin-top: 10px;
}


</style>
<script language="javascript" src="myscript.js"></script>
</head>
<body class="home page page-id-10 page-template page-template-template-home-php boxed group-blog">
<div class="body">
	<div id="page" class="hfeed site">
		<!-- Navigation -->
                                    <jsp:include page="./header/header.jsp"></jsp:include>
		<!-- /end header -->
		<div class="container site-content">
			<div class="row-fluid">
				<div class="content-area">
					<main id="main" class="site-main" role="main">
					<article id="post-10" class="post-10 page type-page status-publish hentry">
					<div class="entry-content">
                                              <div class="row-fluid">
                                                 
                                                  <div class="span12">
							 <div class="row-fluid">
                                                            <div class="wow-pricing-table span12">
                                                                <div class="wow-pricing featured wow-column-">
                                                                    <div class="wow-pricing-header">
                                                                         <h4 >Verify Birth Certificate</h4>
                                                                       
                                                                    </div>
                                                                    <center>
                                                                       
                                                                    <div class="boxgray coloredbox pull-none" >
                                                                          <div class="padding15"> 	
			<form method="post" action="" id="login_form"><br>
			<table class="table-hover">
                                    <tr>
				<td>Child Registration No : </td>
                                <td><input type="text" id="child_id" name="child_id" required ></td>
			</tr>
			
                           <tr>
                                <td></td>
                                <td> <div id="div1"> <img  src="<c:url value="simpleCaptcha.jpg"  />" width="150">&ensp;&ensp;<img onclick="showCustomer()" src="img/iSync.png" width="40px" hieght="40px" ></div></td>
                           </tr>
                           <tr>
                               <td>Fill captcha</td>
                               <td><input type="text" id="answer" name="answer" required > </td>
                           </tr>
                           
                             
                           <tr>
                             <td align='right'> <br><input type="button"  id="add"  value="Submit" class="sbutton square small blue"></td>
                             <td align='left'><br><input type="reset" value="Reset" class="sbutton square small blue"></td>
                           </tr>
                           
			
			
		</table><table width="271" border="0">
  <tbody><tr>
    <td width="274" height="21" align="left" valign="top"><div id="msgbox"  style="opacity: 1;"></div></td>
  </tr>
</tbody></table>
			</form>	
								
							</div>
								
                                                       
                                                  </div>
                                                  
                                                                </div></div></div></div>
                                            
					
							
							<div class="clearfix">
							</div>
							<div class="clearfix">
							</div>
							
						</div>
						<!-- .entry-content -->
						</article>
						<!-- #post-## -->
						</main>
						<!-- #main -->
					</div>
					<!-- #primary -->
				</div>
				<!-- .row-fluid -->
			</div>
			<!-- .container -->
			<!-- FOOTER BEGIN
	================================================== -->
			<jsp:include page="./footer/footer.jsp"></jsp:include>
			<!-- FOOTER END
	================================================== -->
		</div>
		<!-- #page -->
	</div>
	<!-- .body -->
     
             
        <script type='text/javascript' src='./js/bootstrap.js?ver=3.6.1'></script>
	<script type='text/javascript' src='./js/plugins.js?ver=3.6.1'></script>
	<script type='text/javascript' src='./js/custom.js?ver=3.6.1'></script>
    
	<script type='text/javascript' src='./js/jquery.ui.core.min.js?ver=1.10.3'></script>
	<script type='text/javascript' src='./js/jquery.ui.widget.min.js?ver=1.10.3'></script>
	<script type='text/javascript' src='./js/jquery.ui.tabs.min.js?ver=1.10.3'></script>
	<script type='text/javascript' src='./js/tabs.js?ver=3.6.1'></script>
	<script type='text/javascript' src='./js/camera.js?ver=3.6.1'></script>
	<script type='text/javascript' src='./js/carousel.js?ver=3.6.1'></script>
	<script type='text/javascript' src='./js/carouselrecentportfolio.js?ver=3.6.1'></script>
	<script type='text/javascript' src='./js/prettyPhoto.js?ver=3.6.1'></script>
	<script type='text/javascript' src='./js/isotope.js?ver=3.6.1'></script>
	<script type='text/javascript' src='./js/testimonial.js?ver=3.6.1'></script>
	<script type="text/javascript"></script>
	<!--BEGIN DEMO PANEL
================================================== -->
	</body>
	</html>