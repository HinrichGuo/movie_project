<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="cn.com.movie.pojo.*,java.util.*"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>影片后台管理</title>
<meta name="description"
	content="Restyling jQuery UI Widgets and Elements" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/select2.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace-fonts.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace.min.css" id="main-ace-style" />
<script src="${pageContext.request.contextPath }/js/upload.js"></script>
<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
<script src="assets/js/ace-extra.min.js"></script>
<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->


<style type="text/css">
div#content div.right {
	height: 300px;
	width: 30.3%;
	float: right;
}
</style>

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

<link rel="stylesheet" href="assets/css/ace-fonts.css" />
<link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style" />
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
<script src="assets/js/ace-extra.min.js"></script>
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
${data }
	<!-- #section:basics/navbar.layout -->
	<div id="navbar" class="navbar navbar-default">

		<div class="navbar-container" id="navbar-container">

			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler">
				<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>

				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<!-- /section:basics/sidebar.mobile.toggle -->
			<div class="navbar-header pull-left">
				<!-- #section:basics/navbar.layout.brand -->
				<a href="${pageContext.request.contextPath }/main" class="navbar-brand"> <small> <img
						src="${pageContext.request.contextPath }/assets/avatars/logo.png" alt="" />
				</small>
				</a>
			</div>

			<div class="navbar-buttons navbar-header pull-right"
				role="navigation">
				<ul class="nav ace-nav">

					<li class="green"><a data-toggle="dropdown"
						class="dropdown-toggle" href="${pageContext.request.contextPath }"> <i
							class="ace-icon fa fa-envelope icon-animated-vertical"></i> <span
							class="badge badge-success">5</span>
					</a>

						<ul
							class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
							<!-- <li class="dropdown-header"><i
								class="ace-icon fa fa-envelope-o"></i> 13条未读信息</li> -->

							<li class="dropdown-content">
								<ul class="dropdown-menu dropdown-navbar">
								
									<li><a href="${pageContext.request.contextPath }/#"> <img src="${pageContext.request.contextPath }/assets/avatars/avatar.png"
											class="msg-photo" alt="Alex's Avatar" /> <span
											class="msg-body"> <span class="msg-title"> <span
													class="blue">B2C:</span> 系统产生20个错误，12个警告...
											</span> <span class="msg-time"> <i
													class="ace-icon fa fa-clock-o"></i> <span>2014-12-15
														18:00:00</span>
											</span>
										</span>
									</a></li>

									
								</ul>
							</li>

							<li class="dropdown-footer"><a href="${pageContext.request.contextPath }/inbox.html"> 查看全部消息
									<i class="ace-icon fa fa-arrow-right"></i>
							</a></li>
						</ul></li>

					<!-- #section:basics/navbar.user_menu -->
					<li class="light-blue"><a data-toggle="dropdown" href="${pageContext.request.contextPath }/#"
						class="dropdown-toggle"> <img class="nav-user-photo"
							src="${pageContext.request.contextPath }/assets/avatars/user.jpg" alt="Jason's Photo" /> <span
							class="user-info"> 欢迎您<br /> ${sessionScope.admin.adminName }
						</span> <i class="ace-icon fa fa-caret-down"></i>
					</a>

						<ul
							class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a href="${pageContext.request.contextPath }/#"> <i class="ace-icon fa fa-cog"></i> 密码重新设置
							</a></li>


							<li class="divider"></li>

							<li><a href="${pageContext.request.contextPath }/exit"> <i class="ace-icon fa fa-power-off"></i>
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
				<li class=""><a href="${pageContext.request.contextPath }/main"> <i
						class="menu-icon fa fa-home"></i> <span class="menu-text">
							总控制台 </span>
				</a> <b class="arrow"></b></li>


				<li class="submenu"><a href="${pageContext.request.contextPath }/#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-desktop"></i> <span class="menu-text">
							影片管理 </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="nav nav-list">

						<li class="active"><a href="${pageContext.request.contextPath }/jumpAddFilm"> <i
								class="menu-icon fa fa-caret-right"></i> 影片添加
						</a> <b class="arrow"></b></li>

						<li class=""><a href="${pageContext.request.contextPath }/AllFilm"> <i
								class="menu-icon fa fa-caret-right"></i> 影片管理
						</a> <b class="arrow"></b></li>
					<%-- 	
						<li class=""><a href="${pageContext.request.contextPath }/#"> <i
								class="menu-icon fa fa-caret-right"></i> 影片发布
						</a> <b class="arrow"></b></li>
						
						<li class=""><a href="${pageContext.request.contextPath }/commentFilm"> <i
								class="menu-icon fa fa-caret-right"></i> 影片留言管理
						</a> <b class="arrow"></b></li> --%>

					</ul></li>

				<li class=""><a href="${pageContext.request.contextPath }/#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-film"></i> <span class="menu-text">
							影院管理 </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="${pageContext.request.contextPath }/jumpAddCinema"> <i
								class="menu-icon fa fa-caret-right"></i> 影院添加
						</a> <b class="arrow"></b></li>

						<li class=""><a href="${pageContext.request.contextPath }/"> <i
								class="menu-icon fa fa-caret-right"></i> 影院管理
						</a> <b class="arrow"></b></li>
						
						<li class=""><a href="${pageContext.request.contextPath }/moviePlayType"> <i
								class="menu-icon fa fa-caret-right"></i> 影院类型管理
						</a> <b class="arrow"></b></li>
					</ul></li>

				<li class=""><a href="${pageContext.request.contextPath }/#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-coffee"></i> <span class="menu-text">
							商品管理 </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="${pageContext.request.contextPath }/AddGoods"> <i
								class="menu-icon fa fa-caret-right"></i> 商品添加

						</a> <b class="arrow"></b></li>

						<li class=""><a href="${pageContext.request.contextPath }/AllGoods"> <i
								class="menu-icon fa fa-caret-right"></i> 商品管理
						</a> <b class="arrow"></b></li>


					</ul></li>

				<li class=""><a href="${pageContext.request.contextPath }/#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-inbox"></i> <span class="menu-text">
							订单管理 </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>
					<ul class="submenu">
						<li class=""><a href="${pageContext.request.contextPath }/OrderCinemaShow"> <i
								class="menu-icon fa fa-caret-right"></i> 影片订单
						</a> <b class="arrow"></b></li>

						<li class=""><a href="${pageContext.request.contextPath }/OrderGoodsShow"> <i
								class="menu-icon fa fa-caret-right"></i> 商品订单
						</a> <b class="arrow"></b></li>

						<li class=""><a href="${pageContext.request.contextPath }/OrderUserShow"> <i
								class="menu-icon fa fa-caret-right"></i> 用户订单
						</a> <b class="arrow"></b></li>
					</ul> <b class="arrow"></b></li>

				<li class=""><a href="${pageContext.request.contextPath }/search"> <i
						class="menu-icon fa fa-eye"></i> <span class="menu-text">
							检索 
					</span>
				</a> <b class="arrow"></b></li>

				<li class=""><a href="${pageContext.request.contextPath }/statistics"> <i
						class="menu-icon fa fa-bar-chart-o"></i> <span class="menu-text">
							统计 </span>
				</a> <b class="arrow"></b></li>

				<li class=""><a href="${pageContext.request.contextPath }/#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-users"></i> <span class="menu-text">
							用户管理 </span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="${pageContext.request.contextPath }/profile.html"> <i
								class="menu-icon fa fa-caret-right"></i> 用户信息
						</a> <b class="arrow"></b></li>

						<li class=""><a href="${pageContext.request.contextPath }/queryAllUser"> <i
								class="menu-icon fa fa-caret-right"></i> 用户管理
						</a> <b class="arrow"></b></li>

					</ul></li>

				<li class=""><a href="${pageContext.request.contextPath }/#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-cogs"></i> <span class="menu-text">
							系统设置 <!-- #section:basics/sidebar.layout.badge --> <span
							class="badge badge-primary">5</span> <!-- /section:basics/sidebar.layout.badge -->
					</span> <b class="arrow fa fa-angle-down"></b>
				</a> <b class="arrow"></b>

					<ul class="submenu">
						<li class=""><a href="${pageContext.request.contextPath }/addHallView/1"> <i
								class="menu-icon fa fa-caret-right"></i> 帮助页面
						</a> <b class="arrow"></b></li>

						<li class=""><a href="${pageContext.request.contextPath }/ErrorPage"> <i
								class="menu-icon fa fa-caret-right"></i> 404错误页面
						</a> <b class="arrow"></b></li>

						<li class=""><a href="${pageContext.request.contextPath }/main"> <i
								class="menu-icon fa fa-caret-right"></i> 500错误页面
						</a> <b class="arrow"></b></li>

						<li class=""><a href="${pageContext.request.contextPath }/text"> <i
								class="menu-icon fa fa-caret-right"></i> 测试页面
						</a> <b class="arrow"></b></li>

						<li class=""><a href="${pageContext.request.contextPath }/blank.html"> <i
								class="menu-icon fa fa-caret-right"></i> 空白页面
						</a> <b class="arrow"></b></li>
					</ul></li>
			</ul>
			<!-- /.nav-list -->



			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
				<i class="ace-icon fa fa-angle-double-left"
					data-icon1="ace-icon fa fa-angle-double-left"
					data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>

		</div>
		<!--123  -->
		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<!-- #section:basics/content.breadcrumbs -->
			<div class="breadcrumbs" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a
						href="index.jsp">首页</a></li>
					<li><a href="javascript:void(0)">影院管理</a></li>
					<li><a href="AddMCinema.jsp">影院添加</a></li>
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

														<img  id="view" name="ImgDec"style="width:100px; height:150px; border:1px solid black" src="${pageContext.request.contextPath }/upload/${Cinema.cinemaLogo}">
												
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
											class="col-xs-10 col-sm-5" value="${Cinema.cinemaName }"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"
										for="limited">影院介绍：</label>
									<div class="col-sm-9">
										<div class="pos-rel">
											<textarea class="form-control limited autosize-transition"
												id="limited" name="cinemaIntro" maxlength="50">${Cinema.cinemaIntro}</textarea>
										</div>
									</div>
								</div>

								<div class="hr hr-24"></div>
								<c:forEach items="${data}" var="CinemaAddress">
                                  <div id="moving">
								
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"
										for="form-field-tags">影院地址：</label> <select id="provinces"
										name="cinemaProvinces" onchange="getCity(this.value)">
										
										<option value="${CinemaAddress.cinemaProvinces }"selected="selected">${CinemaAddress.cinemaProvinces }</option>
									</select> <select id="citys" name="cinemaCities" onchange="getArea(this.value)">
										
										<option value="${CinemaAddress.cinemaCities }"selected="selected">${CinemaAddress.cinemaCities }</option>
									</select> <select id="areas" name="cinemaAreas"  >
										
										<option value="${CinemaAddress.cinemaAreas }"selected="selected" >${CinemaAddress.cinemaAreas }</option>
									</select>
								</div>
									<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"
										for="form-field-1"> 影院详细地址：</label>

									<div class="col-sm-9">
										<input type="text" id="form-field-1" name="cinemaAdress" 
											class="col-xs-10 col-sm-5"  value="${CinemaAddress.cinemaAddress }"/>
									</div>
								</div>
								
								</div>
								
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"
										for="form-field-1"> 影院电话：</label>

									<div class="col-sm-9">
										<input type="text" id="form-field-1" name="cinemaPhone"
										class="col-xs-10 col-sm-5" value="${CinemaAddress.cinemaPhone}" />
									</div>
								
</div>
</c:forEach>
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
	<script src="assets/js/fuelux/fuelux.wizard.min.js"></script>
	<script src="assets/js/jquery.validate.min.js"></script>
	<script src="assets/js/additional-methods.min.js"></script>
	<script src="assets/js/bootbox.min.js"></script>
	<script src="assets/js/jquery.maskedinput.min.js"></script>
	<script src="assets/js/select2.min.js"></script>

	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function($) {

			$('[data-rel=tooltip]').tooltip();

			$(".select2").css('width', '200px').select2({
				allowClear : true
			}).on('change', function() {
				$(this).closest('form').validate().element($(this));
			});

			var $validation = false;
			$('#fuelux-wizard').ace_wizard({
			//step: 2 //optional argument. wizard will jump to step "2" at first
			}).on('change', function(e, info) {
				if (info.step == 1 && $validation) {
					if (!$('#validation-form').valid())
						return false;
				}
			}).on('finished', function(e) {
				
		alert($('#validation-form').submit(function(){return true;});  
 			
 
                 bootbox.dialog({
					message : "你的影片购买订单已经生成，请注意出票和观影时间。",
					buttons : {
						"success" : {
							"label" : "是否确定提交",
							"className" : "btn-sm btn-primary",
							"onclick":"function(){$('#validation-form').submit();}"
						}
					}
				});  
			}).on('stepclick', function(e) {
				//e.preventDefault();//this will prevent clicking and selecting steps
			});

			//jump to a step
			$('#step-jump').on('click', function() {
				var wizard = $('#fuelux-wizard').data('wizard')
				wizard.currentStep = 3;
				wizard.setState();
			})
			//determine selected step
			//wizard.selectedItem().step

			//hide or show the other form which requires validation
			//this is for demo only, you usullay want just one form in your application
			$('#skip-validation').removeAttr('checked').on('click', function() {
				$validation = this.checked;
				if (this.checked) {
					$('#sample-form').hide();
					$('#validation-form').removeClass('hide');
				} else {
					$('#validation-form').addClass('hide');
					$('#sample-form').show();
				}
			})

			//documentation : http://docs.jquery.com/Plugins/Validation/validate

			$.mask.definitions['~'] = '[+-]';
			$('#phone').mask('(999) 999-9999');

			jQuery.validator.addMethod("phone", function(value, element) {
				return this.optional(element)
						|| /^\(\d{3}\) \d{3}\-\d{4}( x\d{1,6})?$/.test(value);
			}, "请输入一个有效的电话号码.");

			$('#validation-form')
					.validate(
							{
								errorElement : 'div',
								errorClass : 'help-block',
								focusInvalid : false,
								rules : {
									email : {
										required : true,
										email : true
									},
									password : {
										required : true,
										minlength : 5
									},
									password2 : {
										required : true,
										minlength : 5,
										equalTo : "#password"
									},
									name : {
										required : true
									},
									phone : {
										required : true,
										phone : 'required'
									},
									url : {
										required : true,
										url : true
									},
									comment : {
										required : true
									},
									state : {
										required : true
									},
									platform : {
										required : true
									},
									subscription : {
										required : true
									},
									gender : {
										required : true,
									},
									agree : {
										required : true,
									}
								},

								messages : {
									email : {
										required : "请输入有效的email地址.",
										email : "请输入有效的email地址."
									},
									password : {
										required : "请输入有效的密码.",
										minlength : "请输入有效的密码."
									},
									subscription : "请至少选择一项",
									gender : "请选择性别",
									agree : "请勾选同意协议"
								},

								highlight : function(e) {
									$(e).closest('.form-group').removeClass(
											'has-info').addClass('has-error');
								},

								success : function(e) {
									$(e).closest('.form-group').removeClass(
											'has-error');//.addClass('has-info');
									$(e).remove();
								},

								errorPlacement : function(error, element) {
									if (element.is('input[type=checkbox]')
											|| element.is('input[type=radio]')) {
										var controls = element
												.closest('div[class*="col-"]');
										if (controls.find(':checkbox,:radio').length > 1)
											controls.append(error);
										else
											error.insertAfter(element.nextAll(
													'.lbl:eq(0)').eq(0));
									} else if (element.is('.select2')) {
										error
												.insertAfter(element
														.siblings('[class*="select2-container"]:eq(0)'));
									} else if (element.is('.chosen-select')) {
										error
												.insertAfter(element
														.siblings('[class*="chosen-container"]:eq(0)'));
									} else
										error.insertAfter(element.parent());
								},

								submitHandler : function(form) {
								},
								invalidHandler : function(form) {
								}
							});

		})
	</script>
</body>
</html>
