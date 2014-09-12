<%-- 
    Document   : index
    Created on : 13 Mar, 2014, 11:49:04 PM
    Author     : GAURAV
--%>


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


<script type="text/javascript" src="./lib/jquery-1.10.1.min.js"></script>
	<!-- Add fancyBox main JS and CSS files -->
<script type="text/javascript" src="./source/jquery.fancybox.js?v=2.1.5"></script>


<script src="js/jquery.redirect.min.js"></script>
<script src="lib/d3.v3.min.js"></script>
 <script src="lib/colorbrewer.js"></script>
 <script src="lib/topojson.js"></script>
 <script src="lib/cartogram.js"></script>
<style type="text/css">

     

     
     
      #status {
        color: #999;
      }

      #map-container {
        height: 400px;
        text-align: center;
        position: relative;
        margin: 20px 0;
      }

      #map {
        display: block;
        position: absolute;
        background: #fff;
        width: 100%;
        height: 100%;
        margin: 0;
      }

      path.district {
        stroke: #666;
        stroke-width: .035;
      }

      path.district:hover {
        stroke: #000;
      }

      

     

    </style>
 
   
 


  
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

<style type="text/css">

.top {
margin-bottom: 15px;
}
.buttondiv {
margin-top: 10px;
}


</style>


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
                                              <div id="ulb_detail" class="row-fluid">
                                                 
                                                  <div  class="span12">
							<div class="span8">
                                                          
							<div  class="titleborder">
									<div>
										Welcome To Municipal Corporation 
									</div>
								</div>
                                                            <div class="panel">
									Municipal Corporation believes that e-Governance is an opportunity to transform the corporation’s
commi                                                                   tment to be citizen centric, provide cost-effective services and enhance
gover                                                                          nance through improved access to accurate information and transparent and
responsive democratic institutions. Thus e-Governance is no longer an experiment
in administrative reform but a permanent part of the governing process. For both
government organizations and citizens, its advantages are far reaching in
comparison to investment in establishing e-governance.
								</div>


							</div>
                                                      
							<div class="span4">
								
								<div class="important">
                                                            <span class="important-title"><strong>Login Area</strong></span>
									
			<form method="post" action="" id="login_form"><br>
			<table align="center" width="50%">
                            <tbody>
                                <tr><td style="color:red" colspan="2"></td></tr>
                                <tr><td>User&nbsp;Id&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type="text"  name="username" id="username" required class=" input-medium"  autocomplete="off" placeholder="User ID"></td></tr>
                                <tr><td>Password&nbsp;</td><td><input type="password" id="password"   name="password" required class=" input-medium"  placeholder="Password"></td></tr>
				<tr><td><input type="submit" value="Login" class="sbutton round shadow mainthemebgcolor "></td><td><a class="fancybox" href="#forgot_password">Forgot Password ?</a></td></tr>
		 	</tbody></table><table width="271" border="0">
  <tbody><tr>
    <td width="274" height="21" align="left" valign="top"><div id="msgbox"  style="opacity: 1;"></div></td>
  </tr>
</tbody></table>
			</form>	
								
							</div>
								
                                                        </div>
                                                  </div>
                                                  
							</div>
                                            <div class="row-fluid">
                                                <div class="span8">
                                                    <div class="titleborder"><div>Birth And Death Rate</div></div><div class="important"> 
      <div id="map-container">
        <svg id="map"></svg>
      </div></div>                                   </div>
                                                <div class="span4"><div class="important"> <form>
        <p>
        <div class="control-group">
            <label>Scale by <div class="controls">
                    <select class="form-inline" id="field"></select>
                </div>
            </label>
        
            <label>Year <div class="controls">
                    <select id="year"></select>
               
            </label>
            <span id="status"></span> </div></div><hr> <jsp:include page="Birth-and-Death/sidebar/Birth-sidebar2.jsp"></jsp:include>
        </p>
                                                    </form><br><br><br><br><br><br><br><br><br><br><br><br></div></div>
                                            </div>
        <div id="forgot_password" style="width:550px;display: none;" class="portlet portlet-red">
                                                                <div class="portlet-heading">
                                                                    <div class="portlet-title">
                                                                        <h4 style="color: #ffffff;">Forgot your password?</h4>
                                                                    </div>
                                                                    <div class="portlet-widgets">
                                   
                                                                    </div>
                                                                    <div class="clearfix"></div>
                                                                </div>
                                                                <div class="portlet-body">
                                                                    <form action="fpwd.jsp" method="post">
                                                                        <div class="important boxgray">
                                                                            <span class="important-title blue"><strong>Enter Your Email ID</strong></span>
                                                                            
                                                                            <br>
                                                                            <input type="text" class="input-large" name="email">
                                                                           
                                                                        </div>
                                                                        <br>
                                                                      
                                                                        <input  type="submit" class="sbutton small shadow mainthemebgcolor" value="Submit">
                                                                    </form>
                                                                </div>
                                                                 <!-- /.portlet-body -->
                                                                <div id="msgbox"  style="opacity: 1;"></div>
                                                            </div>
        <div id="hospital_registration" style="width:550px;display: none;">
		  <div class="row-fluid">
                         <div class="portlet portlet-red">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4 style="color: #fff;">Hospital Registration</h4>
                                </div>
                                <div class="portlet-widgets">
                                   
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="portlet-body">
                                <form class="form-horizontal" action="registration.jsp" method="post">
                    <!-- Email -->
                    <div class="control-group">
                     <label class="control-label" for="username">Name of Doctor</label>
                      <div class="controls">
                          <input type="text"  id="docname" name="docname" placeholder="Name of Doctor" required  />
                      </div>
                     
                    </div>
                    <!-- Password -->
                    <div class="control-group">
                     <label class="control-label" for="address">Address of Doctor</label>
                      <div class="controls">
                          <input type="text" id="docaddress" name="docaddress" placeholder="Address of Doctor" required="true"  />
                      </div>
                    </div>
                    
                    <div class="control-group">
                     <label class="control-label" for="address">Hospital Name</label>
                      <div class="controls">
                          <input type="text" id="hospitalname" name="hospitalname" placeholder="Hospital Name"  />
                      </div>
                    </div>
                    
                    <div class="control-group">
                     <label class="control-label" for="address">Hospital Address</label>
                      <div class="controls">
                          <input type="text" id="hospitaladdress" name="hospitaladdress" placeholder="Hospital Address"  />
                      </div>
                    </div>
                    
                    <div class="control-group">
                     <label class="control-label" for="address">District/City</label>
                      <div class="controls">
                          <select id="ulbsel" name="ulbsel">
                    <option value="">---Select City---</option>
                    
                         <option value="101">Agra</option>
                         
                         <option value="102">Aligarh</option>
                         
                         <option value="103">Allahabad</option>
                         
                         <option value="104">Bareilly</option>
                         
                         <option value="105">Ghaziabad</option>
                         
                         <option value="106">Gorakhpur</option>
                         
                         <option value="107">Jhansi</option>
                         
                         <option value="108">Kanpur</option>
                         
                         <option value="109">Lucknow</option>
                         
                         <option value="110">Meerut</option>
                         
                         <option value="111">Moradabad</option>
                         
                         <option value="112">Saharanpur</option>
                         
                         <option value="113">Varanasi</option>
                         
                    </select>
                      </div>
                    </div>
                    
                    <div class="control-group">
                    <label class="control-label"   for="username">Type</label><div class="controls">
                          <select name="htype" id="htype" name="htype"   >
                                  <option value="Govt.Hospital">Govt.Hospital </option>
                                  <option value="PVT.Hospital">Pvt.Hospital</option>
                                  <option value="NursingHome">Nursing Home</option>
                                  <option value="Doctor">Doctor</option>
                                </select>
                      </div>
                    </div>
                    
                    <div class="control-group">
                     <label class="control-label" for="address">Licence No</label>
                      <div class="controls">
                          <input type="text" id="regno" name="regno" placeholder="Registration No"  />
                      </div>
                    </div>
                     
                    <div class="control-group">
                     <label class="control-label" for="address">Mobile No</label>
                      <div class="controls">
                          <input type="text" id="mobile" name="mobile" placeholder="Mobile No"  />
                      </div>
                    </div>
                    
                    <div class="control-group">
                     <label class="control-label" for="address">Email ID</label>
                      <div class="controls">
                          <input type="email" id="email" name="email" placeholder="Email ID"  />
                      </div>
                    </div>
                    
                    <!-- Remember me checkbox and sign in button -->
                    <div class="control-group">
                      <div class="controls">
                          <button type="submit" id="hospital_form_submit"  class="btn btn-primary">Register</button>
                        <button type="reset" class="btn">Reset</button>
                      </div>
                    </div>
                  </form>
                            </div>
                            <!-- /.portlet-body -->
                            <div id="msgbox"  style="opacity: 1;"></div>
                        </div>
                 </div>
	</div>
					<div class="clearfix">
						</div>
							<div class="titleborder">
								<div>
									Latest News
								</div>
							</div>
							<div class="row-fluid recent-posts">
								<div class="invite">
									<a href="" class="mainthemebgcolor"><i class="icon-link"></i></a>
								</div>
								<div class="clearfix">
								</div>
								<ul>
                                                                    <li class="span3"><article><a class="imgOpa" href=""><img width="250" height="150" src="img/1.jpg" class="attachment-recentprojects-thumb wp-post-image" alt="satellite-67718_640"/></a>
									<h4><a href="">Hotels</a></h4>
									<div class="date">
										<span class="day">15</span><span class="month">April</span>
									</div>
									<p>
										Sleep paralysis is a phenomenon in which people, either when falling asleep or wakening, temporarily experience <a href=""><span class="mute">[...]</span></a>
									</p>
									</article></li>
									<li class="span3"><article><a class="imgOpa" href=""><img width="250" height="150" src="img/2.jpg" class="attachment-recentprojects-thumb wp-post-image" alt="columbia-92366_640"/></a>
									<h4><a href="">J K Temple</a></h4>
									<div class="date">
										<span class="day">15</span><span class="month">April</span>
									</div>
									<p>
										Nikola Tesla was a Serbian born and later inventor, electrical engineer, mechanical engineer, physicist, <a href=""><span class="mute">[...]</span></a>
									</p>
									</article></li>
									<li class="span3"><article><a class="imgOpa" href=""><img width="250" height="150" src="img/3.jpg" class="attachment-recentprojects-thumb wp-post-image" alt="mars-67522_640"/></a>
									<h4><a href="">PSIT Kanpur</a></h4>
									<div class="date">
										<span class="day">15</span><span class="month">April</span>
									</div>
									<p>
										In the seventeenth century, the philosophy of space and time came as a central issue in epist and metaphysics. <a href=""><span class="mute">[...]</span></a>
									</p>
									</article></li>
									<li class="span3"><article><a class="imgOpa" href=""><img width="250" height="150" src="img/4.jpg" class="attachment-recentprojects-thumb wp-post-image" alt="rocket-launch-67723_640"/></a>
									<h4><a href="">IIT Kanpur</a></h4>
									<div class="date">
										<span class="day">15</span><span class="month">April</span>
									</div>
									<p>
										In 1905, Albert Einstein published a paper on a special theory of relativity, in which he proposed that space <a href=""><span class="mute">[...]</span></a>
									</p>
									</article></li>
								</ul>
							</div>
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
        
        <script>
            $(document).ready(function(){
                  
            
            	
});
        </script>
      <script>

      // hide the form if the browser doesn't do SVG,
      // (then just let everything else fail)
      if (!document.createElementNS) {
        document.getElementsByTagName("form")[0].style.display = "none";
      }

     
    var percent = (function() {
            var fmt = d3.format(".2f");
            return function(n) { return fmt(n) + "%"; };
          })(),
          fields = [
            {name: "(no scale)", id: "none"},
            {name: "Population Estimate", id: "popest", key: "POPESTIMATE%d"},
            {name: "Population Change", id: "popchange", key: "NPOPCHG_%d", format: "+,"},
            {name: "Births", id: "births", key: "BIRTHS%d"},
            {name: "Deaths", id: "deaths", key: "DEATHS%d"},
            {name: "Birth Rate", id: "birthrate", key: "RBIRTH%d", years: [2011], format: percent},
            {name: "Death Rate", id: "deathrate", key: "RDEATH%d", years: [2011], format: percent},

          ],
          years = [2010, 2011],
          fieldsById = d3.nest()
            .key(function(d) { return d.id; })
            .rollup(function(d) { return d[0]; })
            .map(fields),
          field = fields[0],
          year = years[0],
          colors = colorbrewer.RdYlBu[3]
            .reverse()
            .map(function(rgb) { return d3.hsl(rgb); });

      var body = d3.select("body"),
          stat = d3.select("#status");

      var fieldSelect = d3.select("#field")
        .on("change", function(e) {
          field = fields[this.selectedIndex];
          location.hash = "#" + [field.id, year].join("/");
        });

      fieldSelect.selectAll("option")
        .data(fields)
        .enter()
        .append("option")
          .attr("value", function(d) { return d.id; })
          .text(function(d) { return d.name; });

      var yearSelect = d3.select("#year")
        .on("change", function(e) {
          year = years[this.selectedIndex];
          location.hash = "#" + [field.id, year].join("/");
        });

      yearSelect.selectAll("option")
        .data(years)
        .enter()
        .append("option")
          .attr("value", function(y) { return y; })
          .text(function(y) { return y; })

      var map = d3.select("#map"),
          zoom = d3.behavior.zoom()
            .translate([-14630,-3650])
            .scale(21.5)
            .scaleExtent([15,100])
            .on("zoom", updateZoom),
          layer = map.append("g")
            .attr("id", "layer"),
          states = layer.append("g")
            .attr("id", "states")
            .selectAll("path")
			.on("click", clicked);
      // map.call(zoom);
      updateZoom();

      function updateZoom() {
        var scale = zoom.scale();
        layer.attr("transform",
          "translate(" + zoom.translate() + ") " +
          "scale(" + [scale, scale] + ")");
      }

      var proj = d3.geo.equirectangular(),
          topology,
          geometries,
          rawData,
          dataById = {},
          carto = d3.cartogram()
            .projection(proj)
            .properties(function(d) {
              return dataById[d.id];
            })
            .value(function(d) {
              return +d.properties[field] * 100;
            });

      window.onhashchange = function() {
        parseHash();
      };
	  
	   

      var segmentized = location.search === "?segmentized",
          url = ["./data",
            segmentized ? "" : "UttarPradesh.topojson"
          ].join("/");
      d3.json(url, function(topo) {
        topology = topo;
        geometries = topology.objects.states.geometries;
        d3.csv("./data/updata.csv", function(data) {
          rawData = data;
          dataById = d3.nest()
            .key(function(d) { return d.NAME; })
            .rollup(function(d) { return d[0]; })
            .map(data);
          init();
        });
      });

      function init() {
        var features = carto.features(topology, geometries),
            path = d3.geo.path()
              .projection(proj);

        states = states.data(features)
          .enter()
          .append("path")
            .attr("class", "district")
            .attr("id", function(d) {
              return d.properties.NAME;
            })
            .attr("fill", "#fafafa")
            .attr("d", path)
			.on("click", clicked);
        states.append("title");

        parseHash();
      }

      function reset() {
        stat.text("");
        body.classed("updating", false);

        var features = carto.features(topology, geometries),
            path = d3.geo.path()
              .projection(proj);

        states.data(features)
          .transition()
            .duration(750)
            .ease("linear")
            .attr("fill", "#fafafa")
            .attr("d", path);

        states.select("title")
          .text(function(d) {
            return d.properties.NAME;
          });
      }

      function update() {
        var start = Date.now();
        body.classed("updating", true);

        var key = field.key.replace("%d", year),
            fmt = (typeof field.format === "function")
              ? field.format
              : d3.format(field.format || ","),
            value = function(d) {
              return +d.properties[key];
            },
            values = states.data()
              .map(value)
              .filter(function(n) {
                return !isNaN(n);
              })
              .sort(d3.ascending),
            lo = values[0],
            hi = values[values.length - 1];

        var color = d3.scale.linear()
          .range(colors)
          .domain(lo < 0
            ? [lo, 0, hi]
            : [lo, d3.mean(values), hi]);

        // normalize the scale to positive numbers
        var scale = d3.scale.linear()
          .domain([lo, hi])
          .range([1, 1000]);

        // tell the cartogram to use the scaled values
        carto.value(function(d) {
          return scale(value(d));
        });

        // generate the new features, pre-projected
        var features = carto(topology, geometries).features;

        // update the data
        states.data(features)
          .select("title")
            .text(function(d) {
              return [d.properties.NAME, fmt(value(d))].join(": ");
            });

        states.transition()
          .duration(750)
          .ease("linear")
          .attr("fill", function(d) {
            return color(value(d));
          })
          .attr("d", carto.path);

        var delta = (Date.now() - start) / 1000;
        //stat.text(["calculated in", delta.toFixed(1), "seconds"].join(" "));
        body.classed("updating", false);
      }

      var deferredUpdate = (function() {
        var timeout;
        return function() {
          var args = arguments;
          clearTimeout(timeout);
          //stat.text("calculating...");
          return timeout = setTimeout(function() {
            update.apply(null, arguments);
          }, 10);
        };
      })();

      var hashish = d3.selectAll("a.hashish")
        .datum(function() {
          return this.href;
        });

      function parseHash() {
        var parts = location.hash.substr(1).split("/"),
            desiredFieldId = parts[0],
            desiredYear = +parts[1];

        field = fieldsById[desiredFieldId] || fields[0];
        year = (years.indexOf(desiredYear) > -1) ? desiredYear : years[0];

        fieldSelect.property("selectedIndex", fields.indexOf(field));

        if (field.id === "none") {

          yearSelect.attr("disabled", "disabled");
          reset();

        } else {

          if (field.years) {
            if (field.years.indexOf(year) === -1) {
              year = field.years[0];
            }
            yearSelect.selectAll("option")
              .attr("disabled", function(y) {
                return (field.years.indexOf(y) === -1) ? "disabled" : null;
              });
          } else {
            yearSelect.selectAll("option")
              .attr("disabled", null);
          }

          yearSelect
            .property("selectedIndex", years.indexOf(year))
            .attr("disabled", null);

          deferredUpdate();
          location.replace("#" + [field.id, year].join("/"));

          hashish.attr("href", function(href) {
            return href + location.hash;
          });
        }
      }
	  function clicked(d) {
  var x, y, k;

  if (d && centered !== d) {
    var centroid = path.centroid(d);
    x = centroid[0];
    y = centroid[1];
    k = 4;
    centered = d;
  } else {
    x = width / 2;
    y = height / 2;
    k = 1;
    centered = null;
  }

  g.selectAll("path")
      .classed("active", centered && function(d) { return d === centered; });

  g.transition()
      .duration(750)
      .attr("transform", "translate(" + width / 2 + "," + height / 2 + ")scale(" + k + ")translate(" + -x + "," + -y + ")")
      .style("stroke-width", 1.5 / k + "px");
}
	 


    </script>
    <script type="text/javascript" src="myscript.js" ></script>     
        <script type='text/javascript' src='./js/bootstrap.js?ver=3.6.1'></script>
	<script type='text/javascript' src='./js/plugins.js?ver=3.6.1'></script>
	<script type='text/javascript' src='./js/custom.js?ver=3.6.1'></script>
       <script type="text/javascript" src="js/shortcode.js"></script>
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