<html>
<head>
  
<script type="text/javascript" src="http://d3js.org/d3.v3.min.js"></script>
<style>
.axis path,
.axis line {
	fill: none;
	stroke: black;
	shape-rendering: crispEdges;
}
.axis text {
	font-family: sans-serif;
	font-size: 11px;
}

rect {
	-moz-transition: all 0.3s;
	-webkit-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}
rect:hover{
	fill: orange;
}
</style>
    
<script type="text/javascript">//<![CDATA[ 
window.onload=function(){
var w = 600;
var h = 250;

var dataset = [ 
	{ key: 0, value: 5 },
	{ key: 1, value: 10 },
	{ key: 2, value: 13 },
	{ key: 3, value: 19 },
	{ key: 4, value: 21 },
	{ key: 5, value: 25 },
	{ key: 6, value: 22 },
	{ key: 7, value: 18 },
	{ key: 8, value: 15 },
	{ key: 9, value: 13 },
	{ key: 10, value: 11 },
	{ key: 11, value: 12 },
	{ key: 12, value: 15 },
	{ key: 13, value: 20 },
	{ key: 14, value: 18 },
	{ key: 15, value: 17 },
	{ key: 16, value: 16 },
	{ key: 17, value: 18 },
	{ key: 18, value: 23 },
	{ key: 19, value: 25 } ];

var xScale = d3.scale.ordinal()
				.domain(d3.range(dataset.length))
				.rangeRoundBands([0, w], 0.05); 

var yScale = d3.scale.linear()
				.domain([0, d3.max(dataset, function(d) {return d.value;})])
				.range([0, h]);

var key = function(d) {
	return d.key;
};

//Create SVG element
var svg = d3.select("#chart")
.append("svg:svg")
			.attr("width", w)
			.attr("height", h);

//Create bars
svg.selectAll("rect")
   .data(dataset, key)
   .enter()
   .append("rect")
   .attr("x", function(d, i) {
		return xScale(i);
   })
   .attr("y", function(d) {
		return h - yScale(d.value);
   })
   .attr("width", xScale.rangeBand())
   .attr("height", function(d) {
		return yScale(d.value);
   })
   .attr("fill", function(d) {
		return "rgb(0, 0, " + (d.value * 10) + ")";
   })

	//Tooltip
	.on("mouseover", function(d) {
		//Get this bar's x/y values, then augment for the tooltip
		var xPosition = parseFloat(d3.select(this).attr("x")) + xScale.rangeBand() / 2;
		var yPosition = parseFloat(d3.select(this).attr("y")) + 14;
		
		//Update Tooltip Position & value
		d3.select("#tooltip")
			.style("left", xPosition + "px")
			.style("top", yPosition + "px")
			.select("#value")
			.text(d.value);
		d3.select("#tooltip").classed("hidden", false)
	})
	.on("mouseout", function() {
		//Remove the tooltip
		d3.select("#tooltip").classed("hidden", true);
	})	;

//Create labels
svg.selectAll("text")
   .data(dataset, key)
   .enter()
   .append("text")
   .text(function(d) {
		return d.value;
   })
   .attr("text-anchor", "middle")
   .attr("x", function(d, i) {
		return xScale(i) + xScale.rangeBand() / 2;
   })
   .attr("y", function(d) {
		return h - yScale(d.value) + 14;
   })
   .attr("font-family", "sans-serif") 
   .attr("font-size", "11px")
   .attr("fill", "white");
   
var sortOrder = false;
var sortBars = function () {
    sortOrder = !sortOrder;
    
    sortItems = function (a, b) {
        if (sortOrder) {
            return a.value - b.value;
        }
        return b.value - a.value;
    };

    svg.selectAll("rect")
        .sort(sortItems)
        .transition()
        .delay(function (d, i) {
        return i * 50;
    })
        .duration(1000)
        .attr("x", function (d, i) {
        return xScale(i);
    });

    svg.selectAll('text')
        .sort(sortItems)
        .transition()
        .delay(function (d, i) {
        return i * 50;
    })
        .duration(1000)
        .text(function (d) {
        return d.value;
    })
        .attr("text-anchor", "middle")
        .attr("x", function (d, i) {
        return xScale(i) + xScale.rangeBand() / 2;
    })
        .attr("y", function (d) {
        return h - yScale(d.value) + 14;
    });
};
// Add the onclick callback to the button
d3.select("#sort").on("click", sortBars);
d3.select("#reset").on("click", reset);
function randomSort() {

	
	svg.selectAll("rect")
        .sort(sortItems)
        .transition()
        .delay(function (d, i) {
        return i * 50;
    })
        .duration(1000)
        .attr("x", function (d, i) {
        return xScale(i);
    });

    svg.selectAll('text')
        .sort(sortItems)
        .transition()
        .delay(function (d, i) {
        return i * 50;
    })
        .duration(1000)
        .text(function (d) {
        return d.value;
    })
        .attr("text-anchor", "middle")
        .attr("x", function (d, i) {
        return xScale(i) + xScale.rangeBand() / 2;
    })
        .attr("y", function (d) {
        return h - yScale(d.value) + 14;
    });
}
function reset() {
	svg.selectAll("rect")
		.sort(function(a, b){
			return a.key - b.key;
		})
		.transition()
        .delay(function (d, i) {
        return i * 50;
		})
        .duration(1000)
        .attr("x", function (d, i) {
        return xScale(i);
		});
		
	svg.selectAll('text')
        .sort(function(a, b){
			return a.key - b.key;
		})
        .transition()
        .delay(function (d, i) {
        return i * 50;
    })
        .duration(1000)
        .text(function (d) {
        return d.value;
    })
        .attr("text-anchor", "middle")
        .attr("x", function (d, i) {
        return xScale(i) + xScale.rangeBand() / 2;
    })
        .attr("y", function (d) {
        return h - yScale(d.value) + 14;
    });
};
}//]]>  

</script>
</head>
<body>
<div class="page-content page-content-ease-in">

                <!-- begin PAGE TITLE ROW -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="page-title">
                            <h1>Report
                                <small>JavaScript Plotting</small>
                            </h1>
                            <ol class="breadcrumb">
                                <li><i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                                </li>
                                <li class="active">Flot Charts</li>
                            </ol>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- end PAGE TITLE ROW -->

                <div class="row">

                    <!-- Line Chart Example -->
                    <div class="col-lg-12">
                        <div class="portlet portlet-default">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>Line Chart</h4>
                                </div>
                                <div class="portlet-widgets">
                                    <a href="javascript:;"><i class="fa fa-refresh"></i></a>
                                    <span class="divider"></span>
                                    <a data-toggle="collapse" data-parent="#accordion" href="flot.html#areaChart"><i class="fa-chevron-down fa"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div id="areaChart" class="panel-collapse collapse in">
                                <div class="portlet-body">
                                    <div class="flot-chart">
                                        <div class="flot-chart-content" id="flot-chart-line" style="padding: 0px; position: relative;"><canvas class="base" width="1033" height="200"></canvas><canvas class="overlay" width="1033" height="200" style="position: absolute; left: 0px; top: 0px;"></canvas><div class="tickLabels" style="font-size:smaller"><div class="xAxis x1Axis" style="color:#545454"><div class="tickLabel" style="position:absolute;text-align:center;left:-11px;top:183px;width:79px">0</div><div class="tickLabel" style="position:absolute;text-align:center;left:72px;top:183px;width:79px">1</div><div class="tickLabel" style="position:absolute;text-align:center;left:155px;top:183px;width:79px">2</div><div class="tickLabel" style="position:absolute;text-align:center;left:239px;top:183px;width:79px">3</div><div class="tickLabel" style="position:absolute;text-align:center;left:322px;top:183px;width:79px">4</div><div class="tickLabel" style="position:absolute;text-align:center;left:406px;top:183px;width:79px">5</div><div class="tickLabel" style="position:absolute;text-align:center;left:489px;top:183px;width:79px">6</div><div class="tickLabel" style="position:absolute;text-align:center;left:572px;top:183px;width:79px">7</div><div class="tickLabel" style="position:absolute;text-align:center;left:656px;top:183px;width:79px">8</div><div class="tickLabel" style="position:absolute;text-align:center;left:739px;top:183px;width:79px">9</div><div class="tickLabel" style="position:absolute;text-align:center;left:823px;top:183px;width:79px">10</div><div class="tickLabel" style="position:absolute;text-align:center;left:906px;top:183px;width:79px">11</div></div><div class="yAxis y1Axis" style="color:#545454"><div class="tickLabel" style="position:absolute;text-align:right;top:153px;right:1012px;width:21px">-1.0</div><div class="tickLabel" style="position:absolute;text-align:right;top:117px;right:1012px;width:21px">-0.5</div><div class="tickLabel" style="position:absolute;text-align:right;top:82px;right:1012px;width:21px">0.0</div><div class="tickLabel" style="position:absolute;text-align:right;top:46px;right:1012px;width:21px">0.5</div><div class="tickLabel" style="position:absolute;text-align:right;top:10px;right:1012px;width:21px">1.0</div></div></div><div class="legend"><div style="position: absolute; width: 51px; height: 38px; top: 9px; right: 9px; background-color: rgb(255, 255, 255); opacity: 0.85;"> </div><table style="position:absolute;top:9px;right:9px;;font-size:smaller;color:#545454"><tbody><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(22,160,133);overflow:hidden"></div></div></td><td class="legendLabel">sin(x)</td></tr><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(41,128,185);overflow:hidden"></div></div></td><td class="legendLabel">cos(x)</td></tr></tbody></table></div></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->

                    <!-- Multiple Axes Example -->
                    <div class="col-lg-12">
                        <div class="portlet portlet-green">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>Multiple Axes Line Chart</h4>
                                </div>
                                <div class="portlet-widgets">
                                    <a href="javascript:;"><i class="fa fa-refresh"></i></a>
                                    <span class="divider"></span>
                                    <a data-toggle="collapse" data-parent="#accordion" href="flot.html#lineChart"><i class="fa fa-chevron-down"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div id="lineChart" class="panel-collapse collapse in">
                                <div class="portlet-body">
                                    <div class="flot-chart">
                                        <div class="flot-chart-content" id="flot-chart-multiple-axes" style="padding: 0px; position: relative;"><canvas class="base" width="1033" height="200"></canvas><canvas class="overlay" width="1033" height="200" style="position: absolute; left: 0px; top: 0px;"></canvas><div class="tickLabels" style="font-size:smaller"><div class="xAxis x1Axis" style="color:#545454"><div class="tickLabel" style="position:absolute;text-align:center;left:33px;top:183px;width:86px">Feb 2007</div><div class="tickLabel" style="position:absolute;text-align:center;left:123px;top:183px;width:86px">Apr 2007</div><div class="tickLabel" style="position:absolute;text-align:center;left:216px;top:183px;width:86px">Jun 2007</div><div class="tickLabel" style="position:absolute;text-align:center;left:310px;top:183px;width:86px">Aug 2007</div><div class="tickLabel" style="position:absolute;text-align:center;left:403px;top:183px;width:86px">Oct 2007</div><div class="tickLabel" style="position:absolute;text-align:center;left:497px;top:183px;width:86px">Dec 2007</div><div class="tickLabel" style="position:absolute;text-align:center;left:592px;top:183px;width:86px">Feb 2008</div><div class="tickLabel" style="position:absolute;text-align:center;left:684px;top:183px;width:86px">Apr 2008</div><div class="tickLabel" style="position:absolute;text-align:center;left:777px;top:183px;width:86px">Jun 2008</div><div class="tickLabel" style="position:absolute;text-align:center;left:870px;top:183px;width:86px">Aug 2008</div></div><div class="yAxis y1Axis" style="color:#545454"><div class="tickLabel" style="position:absolute;text-align:right;top:168px;right:1012px;width:21px">0</div><div class="tickLabel" style="position:absolute;text-align:right;top:110px;right:1012px;width:21px">50</div><div class="tickLabel" style="position:absolute;text-align:right;top:53px;right:1012px;width:21px">100</div><div class="tickLabel" style="position:absolute;text-align:right;top:-4px;right:1012px;width:21px">150</div></div><div class="yAxis y2Axis" style="color:#545454"><div class="tickLabel" style="position:absolute;text-align:left;top:168px;left:985px;width:48px">0.600â?¬</div><div class="tickLabel" style="position:absolute;text-align:left;top:110px;left:985px;width:48px">0.667â?¬</div><div class="tickLabel" style="position:absolute;text-align:left;top:53px;left:985px;width:48px">0.733â?¬</div><div class="tickLabel" style="position:absolute;text-align:left;top:-4px;left:985px;width:48px">0.800â?¬</div></div></div><div class="legend"><div style="position: absolute; width: 153px; height: 38px; bottom: 29px; left: 33px; background-color: rgb(255, 255, 255); opacity: 0.85;"> </div><table style="position:absolute;bottom:29px;left:33px;;font-size:smaller;color:#545454"><tbody><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(22,160,133);overflow:hidden"></div></div></td><td class="legendLabel">Oil price ($)</td></tr><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(41,128,185);overflow:hidden"></div></div></td><td class="legendLabel">USD/EUR exchange rate</td></tr></tbody></table></div></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->

                    <!-- Bar Chart Example -->
                    <div class="col-lg-6">
                        <div class="portlet portlet-blue">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>Bar Chart</h4>
                                </div>
                                <div class="portlet-widgets">
                                    <a href="javascript:;"><i class="fa fa-refresh"></i></a>
                                    <span class="divider"></span>
                                    <a data-toggle="collapse" data-parent="#accordion" href="flot.html#barChart"><i class="fa fa-chevron-down"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div id="barChart" class="panel-collapse collapse in">
                                <div class="portlet-body">
                                    <div class="flot-chart">
                                        <div class="flot-chart-content" id="flot-chart-bar" style="padding: 0px; position: relative;"><canvas class="base" width="486" height="200"></canvas><canvas class="overlay" width="486" height="200" style="position: absolute; left: 0px; top: 0px;"></canvas><div class="tickLabels" style="font-size:smaller"><div class="xAxis x1Axis" style="color:#545454"><div class="tickLabel" style="position:absolute;text-align:center;left:64px;top:183px;width:60px">12/5</div><div class="tickLabel" style="position:absolute;text-align:center;left:135px;top:183px;width:60px">12/7</div><div class="tickLabel" style="position:absolute;text-align:center;left:205px;top:183px;width:60px">12/9</div><div class="tickLabel" style="position:absolute;text-align:center;left:276px;top:183px;width:60px">12/11</div><div class="tickLabel" style="position:absolute;text-align:center;left:346px;top:183px;width:60px">12/13</div><div class="tickLabel" style="position:absolute;text-align:center;left:417px;top:183px;width:60px">12/15</div></div><div class="yAxis y1Axis" style="color:#545454"><div class="tickLabel" style="position:absolute;text-align:right;top:168px;right:458px;width:28px">0</div><div class="tickLabel" style="position:absolute;text-align:right;top:143px;right:458px;width:28px">1000</div><div class="tickLabel" style="position:absolute;text-align:right;top:118px;right:458px;width:28px">2000</div><div class="tickLabel" style="position:absolute;text-align:right;top:94px;right:458px;width:28px">3000</div><div class="tickLabel" style="position:absolute;text-align:right;top:69px;right:458px;width:28px">4000</div><div class="tickLabel" style="position:absolute;text-align:right;top:45px;right:458px;width:28px">5000</div><div class="tickLabel" style="position:absolute;text-align:right;top:20px;right:458px;width:28px">6000</div><div class="tickLabel" style="position:absolute;text-align:right;top:-4px;right:458px;width:28px">7000</div></div></div></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.col-lg-6 -->

                    <!-- Pie Chart Example -->
                    <div class="col-lg-6">
                        <div class="portlet portlet-orange">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>Pie Chart</h4>
                                </div>
                                <div class="portlet-widgets">
                                    <a href="javascript:;"><i class="fa fa-refresh"></i></a>
                                    <span class="divider"></span>
                                    <a data-toggle="collapse" data-parent="#accordion" href="flot.html#donutChart"><i class="fa fa-chevron-down"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div id="donutChart" class="panel-collapse collapse in">
                                <div class="portlet-body">
                                    <div class="flot-chart">
                                        <div class="flot-chart-content" id="flot-chart-pie" style="padding: 0px; position: relative;"><canvas class="base" width="486" height="200"></canvas><canvas class="overlay" width="486" height="200" style="position: absolute; left: 0px; top: 0px;"></canvas><div class="legend"><div style="position: absolute; width: 63px; height: 76px; top: 5px; right: 5px; background-color: rgb(255, 255, 255); opacity: 0.85;"> </div><table style="position:absolute;top:5px;right:5px;;font-size:smaller;color:#545454"><tbody><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(22,160,133);overflow:hidden"></div></div></td><td class="legendLabel">Series 0</td></tr><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(41,128,185);overflow:hidden"></div></div></td><td class="legendLabel">Series 1</td></tr><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(243,156,18);overflow:hidden"></div></div></td><td class="legendLabel">Series 2</td></tr><tr><td class="legendColorBox"><div style="border:1px solid #ccc;padding:1px"><div style="width:4px;height:0;border:5px solid rgb(241,196,15);overflow:hidden"></div></div></td><td class="legendLabel">Series 3</td></tr></tbody></table></div></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.col-lg-6 -->

                    <!-- Moving Line Chart Example -->
                    <div class="col-lg-6">
                        <div class="portlet portlet-red">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>Moving Line Chart</h4>
                                </div>
                                <div class="portlet-widgets">
                                    <a href="javascript:;"><i class="fa fa-refresh"></i></a>
                                    <span class="divider"></span>
                                    <a data-toggle="collapse" data-parent="#accordion" href="flot.html#movingLineChart1"><i class="fa fa-chevron-down"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div id="movingLineChart1" class="panel-collapse collapse in">
                                <div class="portlet-body">
                                    <div class="flot-chart">
                                        <div class="flot-chart-content" id="flot-chart-moving-line" style="padding: 0px; position: relative;"><canvas class="base" width="486" height="200"></canvas><canvas class="overlay" width="486" height="200" style="position: absolute; left: 0px; top: 0px;"></canvas><div class="tickLabels" style="font-size:smaller"><div class="xAxis x1Axis" style="color:#545454"></div><div class="yAxis y1Axis" style="color:#545454"><div class="tickLabel" style="position:absolute;text-align:right;top:172px;right:465px;width:21px">0</div><div class="tickLabel" style="position:absolute;text-align:right;top:135px;right:465px;width:21px">25</div><div class="tickLabel" style="position:absolute;text-align:right;top:99px;right:465px;width:21px">50</div><div class="tickLabel" style="position:absolute;text-align:right;top:62px;right:465px;width:21px">75</div><div class="tickLabel" style="position:absolute;text-align:right;top:26px;right:465px;width:21px">100</div></div></div></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.col-lg-6 -->
                     <!-- Moving Line Chart Example -->
                    <div class="col-lg-6">
                        <div class="portlet portlet-red">
                            <div class="portlet-heading">
                                <div class="portlet-title">
                                    <h4>Moving Line Chart</h4>
                                </div>
                                <div class="portlet-widgets">
                                    <a href="javascript:;"><i class="fa fa-refresh"></i></a>
                                    <span class="divider"></span>
                                    <a data-toggle="collapse" data-parent="#accordion" href="flot.html#movingLineChart"><i class="fa fa-chevron-down"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div  class="panel-collapse collapse in">
                                <div class="portlet-body">
                                                                          

                                    <button id="sort" onclick="sortBars()">Sort</button>
                                    <button id="reset" onclick="reset()">Reset</button>
                                    <div id="chart">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.col-lg-6 -->

                </div>
                <!-- /.row -->

            </div>
</body></html>