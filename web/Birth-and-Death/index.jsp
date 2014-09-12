<%-- 
    Document   : index.jsp
    Created on : 2 Oct, 2013, 10:20:52 PM
    Author     : QWERTY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Birth And Death Department</title>
<link rel='stylesheet' href='../css/bootstrap.css?ver=3.6.1' type='text/css' media='all'/>
<link rel='stylesheet' href='../css/font-awesome.css?ver=3.6.1' type='text/css' media='all'/>
<link rel='stylesheet' href='../css/default.css?ver=3.6.1' type='text/css' media='all'/>
<link rel='stylesheet' href='../css/icons.css?ver=3.6.1' type='text/css' media='all'/>
<link rel='stylesheet' href='../css/shortcodes.css?ver=3.6.1' type='text/css' media='all'/>
<link rel='stylesheet' href='../css/widgets.css?ver=3.6.1' type='text/css' media='all'/>
<link rel='stylesheet' href='../css/sliders.css?ver=3.6.1' type='text/css' media='all'/>
<link rel='stylesheet' href='../css/bootstrap-responsive.css?ver=3.6.1' type='text/css' media='all'/>
<link rel='stylesheet'  href='./css/skin-bluedark.css?ver=3.6.1' type='text/css' media='all'/>
<link rel='stylesheet' href='../css/skin-red.css?ver=3.6.1' type='text/css' media='all'/>   
<link rel='stylesheet' href='../css/style.css?ver=3.6.1' type='text/css' media='all'/>
<link rel="stylesheet" href="../css/mycss.css">

<script type="text/javascript" src="../lib/jquery-1.10.1.min.js"></script>
	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="../source/jquery.fancybox.js?v=2.1.5"></script>

<script src="./lib/d3.v3.min.js"></script>
 <script src="./lib/colorbrewer.js"></script>
 <script src="./lib/topojson.js"></script>
 <script src="./lib/cartogram.js"></script>
<link rel="icon" type="image/gif" href="../img/fav.png" >
<script type='text/javascript' src='../js/jquery.js?ver=1.10.2'></script>
<script type='text/javascript' src='../js/jquery-migrate.min.js?ver=1.2.1'></script>
<script type='text/javascript' src='../js/comment-reply.min.js?ver=3.6.1'></script>

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
background: url('../img/background.png') repeat top center;		
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
</head>
<body  class="home page page-id-10 page-template page-template-template-home-php boxed group-blog">
<div class="body">
	<div id="page" class="hfeed site">
		<!-- Navigation -->
                <jsp:include page="../header/bdr-header.jsp"></jsp:include>
		<!-- /end header -->
		<!-- content starts -->
		<div class="container site-content">
			<div class="row-fluid">
				<div class="content-area">
					<div class="entry-content">
						<div class="span8">
                       <div class="titleborder"><div>Birth And Death Rate</div></div><div class="important"> 
      <div id="map-container">
        <svg id="map"></svg>
      </div></div>
      
    
                                                </div><div class="span4">
                                                    <form>
        <p>
        <div class="control-group">
            <label>Scale by <div class="controls">
                    <select class="selected" id="field"></select>
                </div>
            </label>
        
            <label>Year <div class="controls">
                    <select id="year"></select>
               
            </label>
          <span id="status"></span> </div></div><hr> <jsp:include page="./sidebar/Birth-sidebar2.jsp"></jsp:include>
        </p>
      </form>
                                                </div>
						
                                            <div style="height: 20px">
						</div>
        <div class="container-fluid">

    <div class="row-fluid">
        <div id="inline1" style="width:400px;display: none;" class="span12" style=" margin-top: -10px;">
        <!-- Widget starts -->
            <div class="widget1 worange">
              <!-- Widget head -->
              <div class="widget1-head">
                <i class="icon-user"></i> Hospital Registration 
              </div>

              <div class="widget1-content">
                <div class="padd">
                  <!-- Login form -->
                  <form class="form-horizontal" action="registeration.jsp" method="post">
                    <!-- Email -->
                    <div class="control-group">
                     <label class="control-label" for="username">Name of Doctor</label>
                      <div class="controls">
                          <input type="text" id="name" name="docname" placeholder="Name of Doctor" required  />
                      </div>
                     
                    </div>
                    <!-- Password -->
                    <div class="control-group">
                     <label class="control-label" for="address">Address of Doctor</label>
                      <div class="controls">
                          <input type="text" id="name" name="docaddress" placeholder="Address of Doctor" required="true"  />
                      </div>
                    </div>
                    
                    <div class="control-group">
                     <label class="control-label" for="address">Hospital Name</label>
                      <div class="controls">
                          <input type="text" id="name" name="hospitalname" placeholder="Hospital Name"  />
                      </div>
                    </div>
                    
                    <div class="control-group">
                     <label class="control-label" for="address">Hospital Address</label>
                      <div class="controls">
                          <input type="text" id="name" name="hospitaladdress" placeholder="Hospital Address"  />
                      </div>
                    </div>
                    
                    <div class="control-group">
                     <label class="control-label" for="address">District/City</label>
                      <div class="controls">
                          <select name="ulbsel" id="ulbselid"  >
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
                          <select name="htype" id="type"   >
                                  <option value="Govt.Hospital">Govt.Hospital </option>
                                  <option value="PVT.Hospital">Pvt.Hospital</option>
                                  <option value="NursingHome">Nursing Home</option>
                                  <option value="Doctor">Doctor</option>
                                </select>
                      </div>
                    </div>
                    
                    <div class="control-group">
                     <label class="control-label" for="address">Licence No/Registration No</label>
                      <div class="controls">
                          <input type="text" id="name" name="regno" placeholder="Registration No"  />
                      </div>
                    </div>
                     
                    <div class="control-group">
                     <label class="control-label" for="address">Mobile No</label>
                      <div class="controls">
                          <input type="text" id="name" name="mobile" placeholder="Mobile No"  />
                      </div>
                    </div>
                    
                    <div class="control-group">
                     <label class="control-label" for="address">Email ID</label>
                      <div class="controls">
                          <input type="email" id="name" name="email" placeholder="Email ID"  />
                      </div>
                    </div>
                    
                    <!-- Remember me checkbox and sign in button -->
                    <div class="control-group">
                      <div class="controls">
                        
                        <br>
                         
                        <button type="submit" class="btn btn-primary" onclick="sendID()" >Register</button>
                        <button type="reset" class="btn">Reset</button>
                      </div>
                    </div>
                  </form>

                </div>
              </div>
                <div class="widget1-foot" id="my">
                  <a href="#">Register here</a>
                </div>
            </div>  
      </div>
    </div>
  </div> 
                                            <div class="row-fluid">
                                            <div class="span8">
							 <h1 class="entry-title">Birth And Death Department</h1> 
                                                         <div class= "box boxgray ">
								Birth & Death department objective is to register the Birth and Death
within the corporation limit, also issue the certificate for the same. The certificate is a automatically generated. You can verify the authenticity of this certificate here.The Registration Number is unique to each event.
							</div>
						</div>
                                            <div class="span4">
							<div class="important">
                                                            <span class="important-title"><strong>Login Area</strong></span>
								<div>
                                                                    <form class="form-inline" method="post" action="login.jsp">
										<table align="center">
										<tbody>
										<tr>
											<td colspan="2">
											</td>
										</tr>
										<tr>
											<td>
												UserID:
											</td>
											<td>
												<input type="text" class=" input-medium" placeholder="UserID" name="inputUserID">
											</td>
										</tr>
										<tr>
											<td>
												Password:
											</td>
											<td>
												<input type="password" id="password" class=" input-medium" placeholder="Password" name="inputPassword">
											</td>
										</tr>
										<tr>
											<td>
												<input type="submit" value="Login" class="sbutton square smaller mainthemebgcolor">
											</td>
											<td>
												<a href="forgetpass.php">Forgot Password ?</a>
											</td>
										</tr>
										</tbody>
										</table>
									</form>
								</div>
							</div>
                                                    
						</div></div>
                                            <div class="row-fluid">
                                             <div class="span8">
                                             <div class="titleborder"><div>Services</div></div>
<div class="accordion" id="accordion-5">
    <div class="accordion-group">
      <div class="accordion-heading fontbold">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-5" href="#collapse_5_collapse-1">
          About Birth Certificate
        </a>
      </div>
      <div id="collapse_5_collapse-1" class="accordion-body collapse" style="height: 0px;">
        <div class="accordion-inner">
  <pre class="">
• Birth and Death Certificate
• Birth and Death Registration
• Birth and Death Registration-Delay
• Correction of Registration details
• Cremation Certificate
• Registration and Certificate for still birth
</pre>
        </div>
      </div>
    </div>
    
    <div class="accordion-group">
      <div class="accordion-heading fontbold">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-5" href="#collapse_6_copllapse-2">
          About Death Certificate 
        </a>
      </div>
      <div id="collapse_6_copllapse-2" class="accordion-body  in collapse" style="height: auto;">
        <div class="accordion-inner">
         ................. 
        </div>
      </div>
    </div>
    
    <div class="accordion-group">
      <div class="accordion-heading fontbold">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-5" href="#collapse_7_copllapse-3">
          About Hospital Registration 
        </a>
      </div>
      <div id="collapse_7_copllapse-3" class="accordion-body  collapse" style="height: 0px;">
        <div class="accordion-inner">
          ................. 
        </div>
      </div>
    </div>
    </div>   
                                            </div>   
                                               <div class="span4">
<div class="box1"><div class="striped"></div><h6 class="fontbold"><i class="icon-envelope "></i> Complain Box </h6>
<div style="height: 5px"></div>

		<script type="text/javascript"> 
			var $j = jQuery.noConflict();
			$j(window).load(function(){				
				$j("#contact-form").submit(function() {
				  // validate and process form here
					var str = $j(this).serialize();					 
					   $j.ajax({
					   type: "POST",
					   url: "",
					   data: str,
					     success: function(msg){						
							$j("#note").ajaxComplete(function(event, request, settings)
							{ 
								if(msg == "OK") // Message Sent? Show the Thank You message and hide the form
								{
									result = "Your message has been sent. Thank you!";
									$j("#fields").hide();
								}
								else
								{
									result = msg;
								}								 
								$j(this).html(result);							 
							});					 
						}	
					 });					 
					return false;
				});			
			});
		</script><div id="post-a-comment" class="clear"><div id="fields"><form id="contact-form">
                            <input name="to_email" type="hidden" id="to_email" value="gauravsahu19@gmail.com">
                            <input name="name" type="text" id="name"  placeholder="Your Name *"><br>
                            <input name="email" type="text" id="email"  placeholder="E-mail address *"><br>
                            <textarea rows="6" name="message"  placeholder="Message *"></textarea><br>
                            <input type="submit" value="Submit" class="btn btn-primary" id="contact-submit"></form></div><!--end fields--><br><div id="note"></div> <!--notification area used by jQuery/Ajax --></div>
<span class="boxlink wowhideme "><a href="#" class="defaultbutton mainthemebgcolor"><i class="icon-link"></i></a></span></div>
</div> 
                                                
                                                
                                            </div>
                                                    </div>
						<!-- .entry-content -->
					</div>
					<!-- #primary -->
				</div>
				<!-- .row-fluid -->
			</div>
		</div>
		<!-- content end -->
		<!-- FOOTER BEGIN
	================================================== -->
		<jsp:include page="../footer/footer.jsp"></jsp:include>
		<!-- FOOTER END
	================================================== -->
	</div>
	<!-- #page -->
</div>
<!-- .body -->
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
<script type='text/javascript' src='../js/bootstrap.js?ver=3.6.1'></script>
<script type='text/javascript' src='../js/plugins.js?ver=3.6.1'></script>
<script type='text/javascript' src='../js/custom.js?ver=3.6.1'></script>
<script type='text/javascript' src='../js/shortcode.js?ver=3.6.1'></script>
<script type='text/javascript' src='../js/jquery.ui.core.min.js?ver=1.10.3'></script>
<script type='text/javascript' src='../js/jquery.ui.widget.min.js?ver=1.10.3'></script>
<script type='text/javascript' src='../js/jquery.ui.tabs.min.js?ver=1.10.3'></script>
<script type='text/javascript' src='../js/tabs.js?ver=3.6.1'></script>
<script type='text/javascript' src='../js/camera.js?ver=3.6.1'></script>
<script type='text/javascript' src='../js/carousel.js?ver=3.6.1'></script>
<script type='text/javascript' src='../js/carouselrecentportfolio.js?ver=3.6.1'></script>
<script type='text/javascript' src='../js/prettyPhoto.js?ver=3.6.1'></script>
<script type='text/javascript' src='../js/isotope.js?ver=3.6.1'></script>
<script type='text/javascript' src='../js/testimonial.js?ver=3.6.1'></script>
<script type="text/javascript"></script>
<!--BEGIN DEMO PANEL
================================================== -->
</body>
</html>