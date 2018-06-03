<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>用户管理</title>
		<meta name="description" content="Restyling jQuery UI Widgets and Elements" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace-fonts.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace.min.css" id="main-ace-style" />
		<!--[if lte IE 9]>
			<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace-part2.min.css" />
		<![endif]-->
		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="${pageContext.request.contextPath }/assets/js/ace-extra.min.js"></script>
		<!--[if lte IE 8]>
		<script src="${pageContext.request.contextPath }/assets/js/html5shiv.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/js/respond.min.js"></script>
		<![endif]-->
		<style type="text/css">
			.CSSearchTbl{ border:1px #008CD4 solid;}
			.CSSearchTbl thead{}
			.CSSearchTbl thead tr{}
			.CSSearchTbl thead tr th{  text-align:left; padding-left:10px;}
			.CSSearchTbl tbody{}
			.CSSearchTbl tbody tr{}
			.CSSearchTbl tbody tr td{  padding: 10px;}
			.CSSearchTbl tbody tr td.right{ text-align: left;}
			.CSSearchTbl tbody tr td.left{ text-align: right;}
			.table-responsive{ display: none;}
		</style>
		<script type="text/javascript">
	
		
		</script>
	
	</head>

	<body class="no-skin"  >
	${requestScope.pm }
				<div id="navbar" class="navbar navbar-default">

			<div class="navbar-container" id="navbar-container">
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler">
					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<div class="navbar-header pull-left">
					<!-- #section:basics/navbar.layout.brand -->
					<a href="index.jsp" class="navbar-brand">
						<small>
							<img src="${pageContext.request.contextPath }/assets/avatars/logo.png" alt="" />
						</small>
					</a>
				</div>

				<!-- #section:basics/navbar.dropdown -->
				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">

						<li class="green">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
								<span class="badge badge-success">5</span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-envelope-o"></i>
									13条未读信息
								</li>

								<li class="dropdown-content">
									<ul class="dropdown-menu dropdown-navbar">
										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath }/assets/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">B2C:</span>
														系统产生20个错误，12个警告...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>2014-12-15 18:00:00</span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath }/assets/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">积分商城:</span>
														系统产生20个错误，12个警告...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>2014-12-15 18:00:00</span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#">
												<img src="${pageContext.request.contextPath }/assets/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">政府机票采购:</span>
														系统产生20个错误，12个警告...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>2014-12-15 18:00:00</span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#">
												<%-- <img src="${pageContext.request.contextPath }/assets/avatars/avatar2.png" class="msg-photo" alt="Kate's Avatar" /> --%>
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">B2B:</span>
														系统产生20个错误，12个警告...
														<br>
															<br>
																<br>
																	<br>
																		<br>
																			<br>
																				<br>
														
													</span>

													
												</span>
											</a>
										</li>

										<li>
											<%-- <a href="#">
												<img src="${pageContext.request.contextPath }/assets/avatars/avatar5.png" class="msg-photo" alt="Fred's Avatar" />
												<span class="msg-body">
													
													
												</span>
											</a> --%>
										</li>
									</ul>
								</li>

								<li class="dropdown-footer">
									
								</li>
							</ul>
						</li>

						<!-- #section:basics/navbar.user_menu -->
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="${pageContext.request.contextPath }/assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									欢迎您<br />
									陈子昂
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#">
										<i class="ace-icon fa fa-cog"></i>
										系统设置
									</a>
								</li>

								<li>
									<a href="profile.html">
										<i class="ace-icon fa fa-user"></i>
										个人信息设置
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="#">
										<i class="ace-icon fa fa-power-off"></i>
										登出
									</a>
								</li>
							</ul>
						</li>

						<!-- /section:basics/navbar.user_menu -->
					</ul>
				</div>

				<!-- /section:basics/navbar.dropdown -->
			</div><!-- /.navbar-container -->
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
								<a href="form-wizard.html">
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
								<a href="form-elements.html">
									<i class="menu-icon fa fa-caret-right"></i>
									影片订单
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="form-wizard.html">
									<i class="menu-icon fa fa-caret-right"></i>
									商品订单
								</a>

								<b class="arrow"></b>
							</li>
							
							<li class="">
								<a href="form-wizard.html">
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
						<a href="gallery.html">
							<i class="menu-icon fa fa-bar-chart-o"></i>
							<span class="menu-text"> 统计 </span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="active open">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-users"></i>
							<span class="menu-text"> 用户管理 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
						
						<li class="active">
								<a href="pricing.html">
									<i class="menu-icon fa fa-caret-right"></i>
									用户管理
								</a>

								<b class="arrow"></b>
							</li>
						
							<li class="">
								<a href="AllUser.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
										用户查询
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



				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>

			</div>

<!-- 1111 -->
			<!-- /section:basics/sidebar -->
			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							<a href="index.jsp">首页</a>
						</li>
						
					</ul><!-- /.breadcrumb -->

				</div>
				<div class="page-content">

					<!-- /section:settings.box -->
					<div class="page-content-area">

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<div class="row">
									<div class="col-xs-12">

			
									</div>
								</div>
								
								<!-- 动态查看详尽的内容 -->
									<div id="modal-table" class="modal fade" tabindex="-1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header no-padding">
												<div class="table-header">
													用户详细信息查看
												</div>
											</div>
											<form></form>
											<div class="modal-body">
										    <div class="bootbox-body">
										    <div class="row">
										    <div class="col-sm-12">
										    <span class="bigger-110">用&nbsp;&nbsp;户&nbsp;&nbsp;名：</span>
										    
										    <input type="text" value="${User.userName }" readonly="readonly"></div>
										    </div>
										    <hr>
										    
										    <div class="row">
										    <div class="col-sm-12">
										    <span class="bigger-110">联系电话：</span>
										    <input type="text" value="${User.userPhone }" readonly="readonly"></div>
										    </div>
										    <hr>
										    
										    <div class="row">
										    <div class="col-sm-12">
										    <span class="bigger-110">预留1：</span>
										    <input type="text" value="${User.userBlank1 }" readonly="readonly"></div>
										    </div>
										    <hr>
										    
										    <div class="row">
										    <div class="col-sm-12">
										    <span class="bigger-110">预留2：</span>
										    <input type="text" value="${User.userBlank2 }" readonly="readonly"></div>
										    </div>
										    <hr>
										    
										    <div class="row">
										    <div class="col-sm-12">
										    <span class="bigger-110">预留3：</span>
										    <input type="text" value="${User.userBlank3 }" readonly="readonly"></div>
										    </div>
										    <hr>
										    
										    </div>
										    </div>
											

											<div class="modal-footer no-margin-top">
												<script type="text/javascript">
												function fun_all(){
													window.location.href="${pageContext.request.contextPath}/queryAllUser";
												}
												</script>
												<button class="btn btn-white btn-default btn-round"  data-dismiss="modal" onclick="fun_all()">
												<i class="ace-icon fa fa-times red2"></i>
												退出查看
											</button>
											<script type="text/javascript">
											function fun_delete(id){
												window.location.href="${pageContext.request.contextPath}/deleteUser?id="+id;
											}
											
											</script>
											<button class="btn btn-white btn-default btn-round"  data-dismiss="modal"  onclick="fun_delete(${User.id})">
												<i class="ace-icon fa fa-times red2"></i>
												拉黑个人信息
											</button>
											</div>
										</div><!-- /.modal-content -->
									</div><!-- /.modal-dialog -->
								</div>
						
						</div><!-- /.row -->
					</div><!-- /.page-content-area -->
				</div><!-- /.page-content -->
			</div><!-- /.main-content -->

			

			
         
 
	


		
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='${pageContext.request.contextPath }/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>

		<script src="${pageContext.request.contextPath }/assets/js/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/js/jquery.dataTables.bootstrap.js"></script>

		<!-- ace scripts -->
		<script src="${pageContext.request.contextPath }/assets/js/ace-elements.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/js/ace.min.js"></script>

		
	</body>
</html>
