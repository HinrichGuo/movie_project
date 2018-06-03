<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>表单组件 - 表单 - 统一开发平台 - UI库</title>
<meta name="description"
	content="Restyling jQuery UI Widgets and Elements" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/dropzone.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/jquery-ui.custom.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/chosen.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/datepicker.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap-timepicker.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/daterangepicker.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap-datetimepicker.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/colorpicker.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace.onpage-help.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/js/themes/sunburst.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/validate.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script src="${pageContext.request.contextPath }/js/upload.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery-1.11.1.min.js"></script>
<script>
	getPro();
	var xmlHttp;
	function getXMLHttpRequest(){
		return new XMLHttpRequest();
	}
	
	function getPro(){
		/* 1.获取对象 */
		xmlHttp = getXMLHttpRequest();
		/* 2.设置参数 */
		xmlHttp.open("get", "${pageContext.request.contextPath}/getProvies", true);
		/* 3.编写回调函数 */
		xmlHttp.onreadystatechange = proCallBack;
		/* 4.发送请求 */
		xmlHttp.send();
	}
	
	function proCallBack(){
		//alert("监听状态："+xmlHttp.readyState)
		if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
			var xmlDoc = xmlHttp.responseXML;
			var xmltext = xmlHttp.responseText;
			/* var provinces =xmlDoc.getElementsByTagName("province"); */
			var province = document.getElementById("provinces");
			//可以把 json 字符串数组转换为对象
			var texts = eval(xmltext);
		//	alert(texts[0]);
			//{"province":"北京市","id":"1","provinceid":"110000"}
			//alert(""+texts[0].province);
			var option = null;
			for(var i = 0;i<= texts.length;i++){
				//alert("城市："+texts[i].province+"\n ,id ："+ texts[i].id+"\n,provinceid:"+texts[i].provinceid);
				var provinceValue = texts[i].province;
				var provinceid = texts[i].provinceid;
				option = document.createElement("option");
				option.value = provinceid;
				option.innerHTML = provinceValue;
				province.appendChild(option);
			}
			
		}
	}
	
	 function getCity(pro_id){
		//alert("测试城市的ID："+pro_id);
		//获取控件
		var city = document.getElementById("citys");
		//city的值为1
		city.length=1; 
		var area =document.getElementById("areas");
		area.length=1;
		
		//XML操作
		xmlHttp = getXMLHttpRequest();
		xmlHttp.open("get", "${pageContext.request.contextPath}/getCity?pro_id="+pro_id, true);
		xmlHttp.onreadystatechange = cityCallBack;
		xmlHttp.send();
	}
	function cityCallBack(){
		//alert("监听状态："+xmlHttp.readyState)
		if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
			var xmlDoc = xmlHttp.responseXML;
			var citys = xmlDoc.getElementsByTagName("city");
			//alert("市级个数："+citys.length);
			var city = document.getElementById("citys");
			var option = "";
			for(var i = 0 ; i < citys.length;i++){
				var id_1 = citys[i].getElementsByTagName("cityid")[0].firstChild.nodeValue;
				var city_value = citys[i].getElementsByTagName("cityvalue")[0].firstChild.nodeValue;
				//alert("市级ID："+id_1+"\n,市级名称："+city_value);
				option = document.createElement("option");
				option.value = id_1;
				option.innerHTML = city_value;
				city.appendChild(option);
			}
		}
	}
	function getArea(city_id){
		//alert("测试区的ID："+city_id);
		//获取控件
		var area =document.getElementById("areas");
		area.length=1;
		
		//XML操作
		xmlHttp = getXMLHttpRequest();
		xmlHttp.open("get", "${pageContext.request.contextPath}/getArea?city_id="+city_id, true);
		xmlHttp.onreadystatechange = areaCallBack;
		xmlHttp.send();
	}
	function areaCallBack(){
		//alert("监听状态："+xmlHttp.readyState)
		if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
			var xmlDoc = xmlHttp.responseXML;
			//alert("Doc文档对象："+xmlDoc);
			var areas = xmlDoc.getElementsByTagName("area");
			//alert("市区："+areas.length);
			var area = document.getElementById("areas");
			var option ="";
			for(i = 0 ;i<areas.length;i++){
				var id = areas[i].getElementsByTagName("areaid")[0].firstChild.nodeValue;
				var area_value = areas[i].getElementsByTagName("areavalue")[0].firstChild.nodeValue;
				option = document.createElement("option");
				option.value = id;
				option.innerHTML = area_value;
				area.appendChild(option);
			}
		}
	}

			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>

<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace-fonts.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace.min.css" id="main-ace-style" />
<style type="text/css">
.a-upload {
	padding: 4px 10px;
	height: 20px;
	line-height: 20px;
	position: relative;
	cursor: pointer;
	color: #888;
	background: #fafafa;
	border: 1px soild #ddd;
	border-radius: 4px;
	overflow: hidden;
	display: inline;
	zoom: 1
}

.a-upload input {
	position: absolute;
	font-size: 10px;
	right: 0;
	top: 0;
	width:10px;
	opacity: 0;
	filter: alpha(opacity = 0);
	cursor: pointer
}
.a-upload:hover {
	color: #444;
	background: #eee;
	border-color: #ccc;
	text-decoration: none;
}
</style>

<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
<script src="${pageContext.request.contextPath }/assets/js/ace-extra.min.js"></script>
<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
		<!-- <script type="text/javascript">
		document.getElementById("add").onclick = function(){
			 alert("hello world!");
			}
		
		</script> -->
<script type="text/javascript" >
function fun(){
	var va=document.getElementById("addMove").innerHTML;
	var c="<div class='form-group'>"+
	"<label class='col-sm-3 control-label no-padding-right' for='form-field-tags'>影院地址：</label>"+
	" <select id='provinces'name='provinces' onchange='getCity(this.value)'><option value='-1'>请选择省份</option></select> "+
	"<select id='citys' name='citys' onchange='getArea(this.value)'><option value='-1'>请选择市级</option></select>"+
	" <select id='areas' name='areas'><option value='-1'>请选择区/县</option></select>"+
	"<select id='areas' name='areas'><option value='-1'>请选择乡/镇</option></select>"+
	"<select id='areas' name='areas'><option value='-1'>请选择街道</option></select>	</div>"+
	"<div class='form-group'><label class='col-sm-3 control-label no-padding-right'for='form-field-1'> 影院电话：</label>"+
	"<div class='col-sm-9'><input type='text' id='form-field-1' placeholder='输入影院电话'class='col-xs-10 col-sm-5' /></div>"+
	"</div>";
	var s=va+c;
	document.getElementById("addMove").innerHTML=s; 
}
function fun_1(){
	
	document.getElementById("addMove").innerHTML=""; 
}
</script>
<script type="text/javascript">
						function on_click(){
							var name = document.getElementById("picuter").value.trim();
							var price = document.getElementById("form-field-1").value.trim();
							
							if(name == ""||price==""){
								alert("不能为空");
							}else{
								alert("全都满了");
							}
						}
					</script>

</head>

<body class="no-skin">
	<!-- #section:basics/navbar.layout -->
	<div id="navbar" class="navbar navbar-default">

		<div class="navbar-container" id="navbar-container">
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
         
			<div class="navbar-header pull-left">
				<!-- #section:basics/navbar.layout.brand -->
				<a href="index.html" class="navbar-brand"> <small> <img
						src="assets/avatars/logo.png" alt="" />
				</small>
				</a>
			</div>

			<!-- #section:basics/navbar.dropdown -->
			<div class="navbar-buttons navbar-header pull-right"
				role="navigation">
				<ul class="nav ace-nav">

					<li class="green"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <i
							class="ace-icon fa fa-envelope icon-animated-vertical"></i> <span
							class="badge badge-success">5</span>
					</a>

						<ul
							class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i
								class="ace-icon fa fa-envelope-o"></i> 13条未读信息</li>

							<li class="dropdown-content">
								<ul class="dropdown-menu dropdown-navbar">
									<li><a href="#"> <img src="assets/avatars/avatar.png"
											class="msg-photo" alt="Alex's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">B2C:</span> 系统产生20个错误，12个警告...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>2014-12-15
														18:00:00</span>
											</span>
										</span>
									</a></li>

									<li><a href="#"> <img src="assets/avatars/avatar3.png"
											class="msg-photo" alt="Susan's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">积分商城:</span> 系统产生20个错误，12个警告...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>2014-12-15
														18:00:00</span>
											</span>
										</span>
									</a></li>

									<li><a href="#"> <img src="assets/avatars/avatar4.png"
											class="msg-photo" alt="Bob's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">政府机票采购:</span> 系统产生20个错误，12个警告...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>2014-12-15
														18:00:00</span>
											</span>
										</span>
									</a></li>

									<li><a href="#"> <img src="assets/avatars/avatar2.png"
											class="msg-photo" alt="Kate's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">B2B:</span> 系统产生20个错误，12个警告...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>2014-12-15
														18:00:00</span>
											</span>
										</span>
									</a></li>

									<li><a href="#"> <img src="assets/avatars/avatar5.png"
											class="msg-photo" alt="Fred's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">货运系统:</span> 系统产生20个错误，12个警告...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>2014-12-15
														18:00:00</span>
											</span>
										</span>
									</a></li>
								</ul>
							</li>

							<li class="dropdown-footer"><a href="inbox.html"> 查看全部消息
									<i class="ace-icon fa fa-arrow-right"></i>
							</a></li>
						</ul></li>

					<!-- #section:basics/navbar.user_menu -->
					<li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <img class="nav-user-photo"
							src="assets/avatars/user.jpg" alt="Jason's Photo" /> <span
							class="user-info"> 欢迎您<br /> 陈子昂
						</span> <i class="ace-icon fa fa-caret-down"></i>
					</a>

						<ul
							class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a href="#"> <i class="ace-icon fa fa-cog"></i> 系统设置
							</a></li>

							<li><a href="profile.html"> <i
									class="ace-icon fa fa-user"></i> 个人信息设置
							</a></li>

							<li class="divider"></li>

							<li><a href="#"> <i class="ace-icon fa fa-power-off"></i>
									登出
							</a></li>
						</ul></li>

					<!-- /section:basics/navbar.user_menu -->
				</ul>
			</div>

			<!-- /section:basics/navbar.dropdown -->
		</div>
		<!-- /.navbar-container -->
	</div>

	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container">

		<!-- #section:basics/sidebar -->
			<div id="sidebar" class="sidebar responsive">


				<ul class="nav nav-list">
					<li class="active">
						<a href="index.jsp">
							<i class="menu-icon fa fa-home"></i>
							<span class="menu-text"> 总控制台 </span>
						</a>

						<b class="arrow"></b>
					</li>

						
					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text"> 影片管理 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">

							<li class="">
								<a href="AddMovie.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									影片添加
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="AllMovie.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									影片管理
								</a>

								<b class="arrow"></b>
							</li>

						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-film"></i>
							<span class="menu-text"> 影院管理 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="AddCinema.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									影院添加
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="">
									<i class="menu-icon fa fa-caret-right"></i>
									影院管理
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-coffee"></i>
							<span class="menu-text"> 商品管理 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="AddGoods.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									商品添加
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="form-wizard.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									商品管理
								</a>

								<b class="arrow"></b>
							</li>

						
						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-inbox"></i>
							<span class="menu-text"> 订单管理 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>
						<ul class="submenu">
							<li class="">
								<a href="form-elements.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									影片订单
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="form-wizard.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									商品订单
								</a>

								<b class="arrow"></b>
							</li>
							
							<li class="">
								<a href="form-wizard.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									用户订单
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="calendar.html">
							<i class="menu-icon fa fa-eye"></i>

							<span class="menu-text">
								检索

								<!-- #section:basics/sidebar.layout.badge -->
								<span class="badge badge-transparent tooltip-error" title="有2件重要事件">
									<i class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
								</span>

								<!-- /section:basics/sidebar.layout.badge -->
							</span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="gallery.jsp">
							<i class="menu-icon fa fa-bar-chart-o"></i>
							<span class="menu-text"> 统计 </span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-users"></i>
							<span class="menu-text"> 用户管理 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="profile.html">
									<i class="menu-icon fa fa-caret-right"></i>
									用户信息
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="pricing.html">
									<i class="menu-icon fa fa-caret-right"></i>
									用户管理
								</a>

								<b class="arrow"></b>
							</li>

						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-cogs"></i>

							<span class="menu-text">
								系统设置

								<!-- #section:basics/sidebar.layout.badge -->
								<span class="badge badge-primary">5</span>

								<!-- /section:basics/sidebar.layout.badge -->
							</span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="faq.html">
									<i class="menu-icon fa fa-caret-right"></i>
									帮助页面
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="error-404.html">
									<i class="menu-icon fa fa-caret-right"></i>
									404错误页面
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="error-500.html">
									<i class="menu-icon fa fa-caret-right"></i>
									500错误页面
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="grid.html">
									<i class="menu-icon fa fa-caret-right"></i>
									网格
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="blank.html">
									<i class="menu-icon fa fa-caret-right"></i>
									空白页面
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>
				</ul><!-- /.nav-list -->

				<!-- #section:basics/sidebar.layout.minimize -->
				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa 

fa-angle-double-right"></i>
				</div>

			</div>

<!--111  -->
		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<div class="breadcrumbs" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a
						href="index.jsp">首页</a></li>
					<li><a href="javascript:void(0)">影院管理</a></li>
					<li><a href="AddCinema.jsp">影院添加</a></li>
				</ul>
				<!-- /.breadcrumb -->

				<!-- #section:basics/content.searchbox -->

				<div class="nav-search" id="nav-search">
					<form class="form-search">
						<span class="input-icon"> <input type="text"
							placeholder="请输入关键字 ..." class="nav-search-input"
							id="nav-search-input" autocomplete="off" /> <i
							class="ace-icon fa fa-search nav-search-icon"></i>
						</span>
					</form>
				</div>
				<!-- /.nav-search -->
			</div>

			<!-- /section:basics/content.breadcrumbs -->
			<div class="page-content">

				<div class="page-content-area">

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							<form class="form-horizontal" action="${pageContext.request.contextPath }/addCinema" role="form" method="post"  enctype="multipart/form-data">
								<!-- #section:elements.form -->
								<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right"
														for="form-field-tags">图片上传：</label>
													<div class="col-sm-2">

														<img  id="view" name="ImgDec"style="width:100px; height:150px; border:1px solid black" src="${pageContext.request.contextPath }/img/cinema.jpg">
												
													</div>
								</div>
								<div class="form-group">
							
													<label class="col-sm-3 control-label no-padding-right"
														for="form-field-tags"></label>
													<div class="col-sm-2">

														<span class="profile-picture"  > 
														<a href="javascript:;" class="a-upload">
														<input type="file" name="fileName" id="file" onchange="previewImage(this,'view')" >点击预览
														
														
														</a>
														</span>

														<div class="space space-4"></div>

													</div>
												</div>

								
								
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"
										for="form-field-1"> 影院名称：</label>
									
									<div class="col-sm-9">
										<input type="text" id="form-field-1"name="cinemaName" placeholder="输入影院名称"
											class="col-xs-10 col-sm-5" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"
										for="limited">影院介绍：</label>
									<div class="col-sm-9">
										<div class="pos-rel">
											<textarea class="form-control limited autosize-transition"
												id="limited" name="cinemaIntro" maxlength="50"></textarea>
										</div>
									</div>
								</div>

								<div class="hr hr-24"></div>
<div id="moving">
								<div class="form-group">
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"
										for="form-field-tags">影院地址：</label> <select id="provinces"
										name="cinemaProvinces" onchange="getCity(this.value)">
										<option value="-1">请选择省份</option>
									</select> <select id="citys" name="cinemaCities" onchange="getArea(this.value)">
										<option value="-1">请选择市级</option>
									</select> <select id="areas" name="cinemaAreas"  >
										<option value="-1">请选择区/县</option>
									</select>
								</div>
									<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"
										for="form-field-1"> 影院详细地址：</label>

									<div class="col-sm-9">
										<input type="text" id="form-field-1" name="cinemaAdress" placeholder="输入影院地址"
											class="col-xs-10 col-sm-5" />
									</div>
								</div>
								
								</div>
								
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"
										for="form-field-1"> 影院电话：</label>

									<div class="col-sm-9">
										<input type="text" id="form-field-1" name="cinemaPhone" placeholder="输入影院电话"
											class="col-xs-10 col-sm-5" />
									</div>
								</div>
</div>
								<div id="addMove"></div>
								<div class="clearfix form-actions">
									<div class="col-md-offset-3 col-md-9">
										<!-- <button class="btn btn-info" type="button" >
											<i class="ace-icon fa fa-check bigger-110"></i> 立即提交
										</button> -->
										<input type="submit" class="btn btn-info" type="button" value="添加">
           
										&nbsp; &nbsp; &nbsp;
										<button class="btn" type="reset">
											<i class="ace-icon fa fa-undo bigger-110"></i> 重置
										</button>
										&nbsp; &nbsp; &nbsp;
										<!-- <input type="button" value="添加" class="btn btn-info" onclick="fun_1()"> -->
										<button id="add"class="btn btn-info" type="button" onclick=" fun()">
											 添加新地址
										</button>
										&nbsp;
										<button id="add"class="btn btn-info" type="button" onclick="fun_1()">
											删除其他地址
										</button>
										
									</div>
								</div>
							</form>



						</div>
						<!-- /.row -->
					</div>
					<!-- /.page-content-area -->
				</div>
				<!-- /.page-content -->
			</div>
			<!-- /.main-content -->
		</div>
		<div class="footer">
			<div class="footer-inner">
			

				<!-- /section:basics/footer -->
			</div>
		</div>

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->
	<script type="text/javascript">
		window.jQuery
				|| document.write("<script src='assets/js/jquery.min.js'>"
						+ "<"+"/script>");
	</script>

	<!-- <![endif]-->

	<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script src="assets/js/bootstrap.min.js"></script>

	<!-- page specific plugin scripts -->

	<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
	<script src="assets/js/jquery-ui.custom.min.js"></script>
	<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/js/chosen.jquery.min.js"></script>
	<script src="assets/js/fuelux/fuelux.spinner.min.js"></script>
	<script src="assets/js/date-time/bootstrap-datepicker.min.js"></script>
	<script src="assets/js/date-time/bootstrap-timepicker.min.js"></script>
	<script src="assets/js/date-time/moment.min.js"></script>
	<script src="assets/js/date-time/daterangepicker.min.js"></script>
	<script src="assets/js/date-time/bootstrap-datetimepicker.min.js"></script>
	<script src="assets/js/bootstrap-colorpicker.min.js"></script>
	<script src="assets/js/jquery.knob.min.js"></script>
	<script src="assets/js/jquery.autosize.min.js"></script>
	<script src="assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
	<script src="assets/js/jquery.maskedinput.min.js"></script>
	<script src="assets/js/bootstrap-tag.min.js"></script>
	<script src="assets/js/typeahead.jquery.min.js"></script>

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
	<script type="text/javascript">
		jQuery(function($) {

			Dropzone.autoDiscover = false;
			try {
				var myDropzone = new Dropzone(
						"#dropzone",
						{
							paramName : "file", // The name that will be used to transfer the file
							maxFilesize : 0.5, // MB

							addRemoveLinks : true,
							dictDefaultMessage : '<span class="bigger-150 bolder"><i class="ace-icon fa fa-caret-right red"></i> 从电脑上拖拽文件到这里</span>  \
				<span class="smaller-80 grey">(或者点击这里上传文件)</span> <br /> \
				<i class="upload-icon ace-icon fa fa-cloud-upload blue fa-3x"></i>',
							dictResponseError : '上传错误!',

							//change the previewTemplate to use Bootstrap progress bars
							previewTemplate : "<div class=\"dz-preview dz-file-preview\">\n  <div class=\"dz-details\">\n    <div class=\"dz-filename\"><span data-dz-name></span></div>\n    <div class=\"dz-size\" data-dz-size></div>\n    <img data-dz-thumbnail />\n  </div>\n  <div class=\"progress progress-small progress-striped active\"><div class=\"progress-bar progress-bar-success\" data-dz-uploadprogress></div></div>\n  <div class=\"dz-success-mark\"><span></span></div>\n  <div class=\"dz-error-mark\"><span></span></div>\n  <div class=\"dz-error-message\"><span data-dz-errormessage></span></div>\n</div>"
						});
			} catch (e) {
				alert('Dropzone.js不支持太旧的浏览器!');
			}

		});
	</script>
<
	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function($) {

			$('.chosen-select').chosen({
				allow_single_deselect : true
			});

			$(window).off('resize.chosen').on('resize.chosen', function() {
				$('.chosen-select').each(function() {
					var $this = $(this);
					$this.next().css({
						'width' : $this.parent().width()
					});
				})
			}).trigger('resize.chosen');

			$('#chosen-multiple-style').on('click', function(e) {
				var target = $(e.target).find('input[type=radio]');
				var which = parseInt(target.val());
				if (which == 2)
					$('#form-field-select-4').addClass('tag-input-style');
				else
					$('#form-field-select-4').removeClass('tag-input-style');
			});

			$('[data-rel=tooltip]').tooltip({
				container : 'body'
			});
			$('[data-rel=popover]').popover({
				container : 'body'
			});

			$('textarea[class*=autosize]').autosize({
				append : "\n"
			});
			$('textarea.limited').inputlimiter({
				remText : ' 还能再输入%n个字...',
				limitText : '最多只能输入 : %n 个字.'
			});

			$.mask.definitions['~'] = '[+-]';
			$('.input-mask-date').mask('99/99/9999');
			$('.input-mask-phone').mask('(999) 999-9999');
			$('.input-mask-eyescript').mask('~9.99 ~9.99 999');
			$(".input-mask-product").mask("a*-999-a999", {
				placeholder : " ",
				completed : function() {
					alert("You typed the following: " + this.val());
				}
			});

			$("#input-size-slider").css('width', '200px').slider(
					{
						value : 1,
						range : "min",
						min : 1,
						max : 8,
						step : 1,
						slide : function(event, ui) {
							var sizing = [ '', 'input-sm', 'input-lg',
									'input-mini', 'input-small',
									'input-medium', 'input-large',
									'input-xlarge', 'input-xxlarge' ];
							var val = parseInt(ui.value);
							$('#form-field-4').attr('class', sizing[val]).val(
									'.' + sizing[val]);
						}
					});

			$("#input-span-slider").slider(
					{
						value : 1,
						range : "min",
						min : 1,
						max : 12,
						step : 1,
						slide : function(event, ui) {
							var val = parseInt(ui.value);
							$('#form-field-5').attr('class', 'col-xs-' + val)
									.val('.col-xs-' + val);
						}
					});

			//"jQuery UI Slider"
			//range slider tooltip example
			$("#slider-range")
					.css('height', '200px')
					.slider(
							{
								orientation : "vertical",
								range : true,
								min : 0,
								max : 100,
								values : [ 17, 67 ],
								slide : function(event, ui) {
									var val = ui.values[$(ui.handle).index() - 1]
											+ "";

									if (!ui.handle.firstChild) {
										$(
												"<div class='tooltip right in' style='display:none;left:16px;top:-6px;'><div class='tooltip-arrow'></div><div class='tooltip-inner'></div></div>")
												.prependTo(ui.handle);
									}
									$(ui.handle.firstChild).show().children()
											.eq(1).text(val);
								}
							}).find('a').on('blur', function() {
						$(this.firstChild).hide();
					});

			$("#slider-range-max").slider({
				range : "max",
				min : 1,
				max : 10,
				value : 2
			});

			$("#slider-eq > span").css({
				width : '90%',
				'float' : 'left',
				margin : '15px'
			}).each(function() {
				// read initial values from markup and remove that
				var value = parseInt($(this).text(), 10);
				$(this).empty().slider({
					value : value,
					range : "min",
					animate : true

				});
			});

			$("#slider-eq > span.ui-slider-purple").slider('disable');//disable third item

			$('#id-input-file-1 , #id-input-file-2').ace_file_input({
				no_file : 'No File ...',
				btn_choose : 'Choose',
				btn_change : 'Change',
				droppable : false,
				onchange : null,
				thumbnail : false
			//| true | large
			//whitelist:'gif|png|jpg|jpeg'
			//blacklist:'exe|php'
			//onchange:''
			//
			});
			//pre-show a file name, for example a previously selected file
			//$('#id-input-file-1').ace_file_input('show_file_list', ['myfile.txt'])

			$('#id-input-file-3').ace_file_input({
				style : 'well',
				btn_choose : 'Drop files here or click to choose',
				btn_change : null,
				no_icon : 'ace-icon fa fa-cloud-upload',
				droppable : true,
				thumbnail : 'small'//large | fit
				//,icon_remove:null//set null, to hide remove/reset button
				/**,before_change:function(files, dropped) {
					//Check an example below
					//or examples/file-upload.html
					return true;
				}*/
				/**,before_remove : function() {
					return true;
				}*/
				,
				preview_error : function(filename, error_code) {
					//name of the file that failed
					//error_code values
					//1 = 'FILE_LOAD_FAILED',
					//2 = 'IMAGE_LOAD_FAILED',
					//3 = 'THUMBNAIL_FAILED'
					//alert(error_code);
				}

			}).on('change', function() {
				//console.log($(this).data('ace_input_files'));
				//console.log($(this).data('ace_input_method'));
			});

			//dynamically change allowed formats by changing allowExt && allowMime function
			$('#id-file-format').removeAttr('checked').on(
					'change',
					function() {
						var whitelist_ext, whitelist_mime;
						var btn_choose
						var no_icon
						if (this.checked) {
							btn_choose = "Drop images here or click to choose";
							no_icon = "ace-icon fa fa-picture-o";

							whitelist_ext = [ "jpeg", "jpg", "png", "gif",
									"bmp" ];
							whitelist_mime = [ "image/jpg", "image/jpeg",
									"image/png", "image/gif", "image/bmp" ];
						} else {
							btn_choose = "Drop files here or click to choose";
							no_icon = "ace-icon fa fa-cloud-upload";

							whitelist_ext = null;//all extensions are acceptable
							whitelist_mime = null;//all mimes are acceptable
						}
						var file_input = $('#id-input-file-3');
						file_input.ace_file_input('update_settings', {
							'btn_choose' : btn_choose,
							'no_icon' : no_icon,
							'allowExt' : whitelist_ext,
							'allowMime' : whitelist_mime
						})
						file_input.ace_file_input('reset_input');

						file_input.off('file.error.ace').on('file.error.ace',
								function(e, info) {
									//console.log(info.file_count);//number of selected files
									//console.log(info.invalid_count);//number of invalid files
									//console.log(info.error_list);//a list of errors in the following format

									//info.error_count['ext']
									//info.error_count['mime']
									//info.error_count['size']

									//info.error_list['ext']  = [list of file names with invalid extension]
									//info.error_list['mime'] = [list of file names with invalid mimetype]
									//info.error_list['size'] = [list of file names with invalid size]

									/**
									if( !info.dropped ) {
										//perhapse reset file field if files have been selected, and there are invalid files among them
										//when files are dropped, only valid files will be added to our file array
										e.preventDefault();//it will rest input
									}
									 */

									//if files have been selected (not dropped), you can choose to reset input
									//because browser keeps all selected files anyway and this cannot be changed
									//we can only reset file field to become empty again
									//on any case you still should check files with your server side script
									//because any arbitrary file can be uploaded by user and it's not safe to rely on browser-side measures
								});

					});

			$('#spinner1').ace_spinner({
				value : 0,
				min : 0,
				max : 200,
				step : 10,
				btn_up_class : 'btn-info',
				btn_down_class : 'btn-info'
			}).on('change', function() {
				//alert(this.value)
			});
			$('#spinner2').ace_spinner({
				value : 0,
				min : 0,
				max : 10000,
				step : 100,
				touch_spinner : true,
				icon_up : 'ace-icon fa fa-caret-up',
				icon_down : 'ace-icon fa fa-caret-down'
			});
			$('#spinner3').ace_spinner({
				value : 0,
				min : -100,
				max : 100,
				step : 10,
				on_sides : true,
				icon_up : 'ace-icon fa fa-plus smaller-75',
				icon_down : 'ace-icon fa fa-minus smaller-75',
				btn_up_class : 'btn-success',
				btn_down_class : 'btn-danger'
			});
			//$('#spinner1').ace_spinner('disable').ace_spinner('value', 11);
			//or
			//$('#spinner1').closest('.ace-spinner').spinner('disable').spinner('enable').spinner('value', 11);//disable, enable or change value
			//$('#spinner1').closest('.ace-spinner').spinner('value', 0);//reset to 0

			//datepicker plugin
			//link
			$('.date-picker').datepicker({
				autoclose : true,
				todayHighlight : true
			})
			//show datepicker when clicking on the icon
			.next().on(ace.click_event, function() {
				$(this).prev().focus();
			});

			//or change it into a date range picker
			$('.input-daterange').datepicker({
				autoclose : true
			});

			//to translate the daterange picker, please copy the "examples/daterange-fr.js" contents here before initialization
			$('input[name=date-range-picker]').daterangepicker({
				'applyClass' : 'btn-sm btn-success',
				'cancelClass' : 'btn-sm btn-default',
				locale : {
					applyLabel : 'Apply',
					cancelLabel : 'Cancel',
				}
			}).prev().on(ace.click_event, function() {
				$(this).next().focus();
			});

			$('#timepicker1').timepicker({
				minuteStep : 1,
				showSeconds : true,
				showMeridian : false
			}).next().on(ace.click_event, function() {
				$(this).prev().focus();
			});

			$('#date-timepicker1').datetimepicker().next().on(ace.click_event,
					function() {
						$(this).prev().focus();
					});

			$('#colorpicker1').colorpicker();

			$('#simple-colorpicker-1').ace_colorpicker();
			//$('#simple-colorpicker-1').ace_colorpicker('pick', 2);//select 2nd color
			//$('#simple-colorpicker-1').ace_colorpicker('pick', '#fbe983');//select #fbe983 color
			//var picker = $('#simple-colorpicker-1').data('ace_colorpicker')
			//picker.pick('red', true);//insert the color if it doesn't exist

			$(".knob").knob();

			var tag_input = $('#form-field-tags');
			try {
				tag_input.tag({
					placeholder : tag_input.attr('placeholder'),
					//enable typeahead by specifying the source array
					source : ace.vars['US_STATES'],//defined in ace.js >> ace.enable_search_ahead
				/**
				//or fetch data from database, fetch those that match "query"
				source: function(query, process) {
				  $.ajax({url: 'remote_source.php?q='+encodeURIComponent(query)})
				  .done(function(result_items){
					process(result_items);
				  });
				}
				 */
				})

				var $tag_obj = $('#form-field-tags').data('tag');
				$tag_obj.add('我是标签二');
			} catch (e) {
				//display a textarea for old IE, because it doesn't support this plugin or another one I tried!
				tag_input.after(
						'<textarea id="' + tag_input.attr('id') + '" name="'
								+ tag_input.attr('name') + '" rows="3">'
								+ tag_input.val() + '</textarea>').remove();
				//$('#form-field-tags').autosize({append: "\n"});
			}

			//////////

			//typeahead.js
			//example taken from plugin's page at: https://twitter.github.io/typeahead.js/examples/
			var substringMatcher = function(strs) {
				return function findMatches(q, cb) {
					var matches, substringRegex;

					// an array that will be populated with substring matches
					matches = [];

					// regex used to determine if a string contains the substring `q`
					substrRegex = new RegExp(q, 'i');

					// iterate through the pool of strings and for any string that
					// contains the substring `q`, add it to the `matches` array
					$.each(strs, function(i, str) {
						if (substrRegex.test(str)) {
							// the typeahead jQuery plugin expects suggestions to a
							// JavaScript object, refer to typeahead docs for more info
							matches.push({
								value : str
							});
						}
					});

					cb(matches);
				}
			}

			$('input.typeahead').typeahead({
				hint : true,
				highlight : true,
				minLength : 1
			}, {
				name : 'states',
				displayKey : 'value',
				source : substringMatcher(ace.vars['US_STATES'])
			});

			/////////
			$('#modal-form input[type=file]').ace_file_input({
				style : 'well',
				btn_choose : 'Drop files here or click to choose',
				btn_change : null,
				no_icon : 'ace-icon fa fa-cloud-upload',
				droppable : true,
				thumbnail : 'large'
			})

			//chosen plugin inside a modal will have a zero width because the select element is originally hidden
			//and its width cannot be determined.
			//so we set the width after modal is show
			$('#modal-form').on('shown.bs.modal', function() {
				$(this).find('.chosen-container').each(function() {
					$(this).find('a:first-child').css('width', '210px');
					$(this).find('.chosen-drop').css('width', '210px');
					$(this).find('.chosen-search input').css('width', '200px');
				});
			})
			/**
			//or you can activate the chosen plugin after modal is shown
			//this way select element becomes visible with dimensions and chosen works as expected
			$('#modal-form').on('shown', function () {
				$(this).find('.modal-chosen').chosen();
			})
			 */

		});
	</script>

	<!-- the following scripts are used in demo only for onpage help and you don't need them -->


	<script type="text/javascript">
		ace.vars['base'] = '..';
	</script>
	<script src="${pageContext.request.contextPath }/assets/js/ace/elements.onpage-help.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/ace/ace.onpage-help.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/rainbow.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/language/generic.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/language/html.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/language/css.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/language/javascript.js"></script>
</body>
</html>