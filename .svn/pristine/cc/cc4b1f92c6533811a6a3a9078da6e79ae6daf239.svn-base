<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>影片管理</title>
		<meta name="description" content="Restyling jQuery UI Widgets and Elements" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" />
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
	</head>

	<body class="no-skin">
		<!-- #section:basics/navbar.layout -->
		<div id="navbar" class="navbar navbar-default">

			<div class="navbar-container" id="navbar-container">
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler">
					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<div class="navbar-header pull-left">
					<!-- #section:basics/navbar.layout.brand -->
					<a href="index.html" class="navbar-brand">
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
												<img src="${pageContext.request.contextPath }/assets/avatars/avatar2.png" class="msg-photo" alt="Kate's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">B2B:</span>
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
												<img src="assets/avatars/avatar5.png" class="msg-photo" alt="Fred's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">货运系统:</span>
														系统产生20个错误，12个警告...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>2014-12-15 18:00:00</span>
													</span>
												</span>
											</a>
										</li>
									</ul>
								</li>

								<li class="dropdown-footer">
									<a href="inbox.html">
										查看全部消息
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
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
					<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>

			</div>
<!-- 123 -->

			<!-- /section:basics/sidebar -->
			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							<a href="index.jsp">首页</a>
						</li>
						<li>
							<a href="javascript:void(0)">影片管理</a>
						</li>
						<li>
							<a href="AllMovie.jsp">影片查询</a>
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

										<div class="table-header">
											影片查询
										</div>

										<table width="100%" class="CSSearchTbl" cellpadding="0" cellspacing="0">
			                                <tr>
			                                    <td class="left">影片名称：</td>
			                                    <td class="right">
			                                    	<input type="text" size="16"  />
			                                    </td>
			                                    <td class="left">类型：</td>
			                                    <td class="right">
			                                    	<input type="text" size="16"  />
			                                    </td>
			                                    <td class="left">
			                                    	<button class="btn btn-primary pull-left col-sm-12 tbl-search" data-dismiss="modal">
														开始搜索 
														<i class="ace-icon fa fa-search"></i>
													</button>
			                                    </td>
			                                </tr>
			                            </table> 

										<div class="hr hr-18 dotted hr-double"></div>

										<!-- <div class="table-responsive"> -->
										<div >

											<table id="sample-table-2" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th class="center">
															<label class="position-relative">
																<input type="checkbox" class="ace" />
																<span class="lbl"></span>
															</label>
														</th>
				                                        <th>海报</th>
														<th>影片名称</th>
				                                        <th>影片类型</th>
				                                        <th>导演</th>
				                                        <th>状态</th>
														<th>操作</th>
													</tr>
												</thead>

												<tbody>
													<tr>
														<td class="center">
															<label class="position-relative">
																<input type="checkbox" class="ace" />
																<span class="lbl"></span>
															</label>
														</td>

														<td>
															<img style="width:100px;height:80px;" alt="150x150" src="assets/images/gallery/thumb-6.jpg">
														</td>
				                                        <td><a href="#"  class="yuangongBtn" rel="#yuangong">CL1234567891234567</a></td>
				                                        <td class="hidden-480">恐怖</td>
				                                        <td class="hidden-480">马虎疼</td>
				                                        <td><span class="label label-sm label-warning">最新上映</span></td>
														<td>
															<div class="hidden-sm hidden-xs btn-group">
																<button class="btn btn-xs btn-success" title="">
																	<i class="ace-icon fa fa-search-plus bigger-120"></i>
																</button>

																<button class="btn btn-xs btn-info">
																	<i class="ace-icon fa fa-pencil bigger-120"></i>
																</button>

																<button class="btn btn-xs btn-danger">
																	<i class="ace-icon fa fa-trash-o bigger-120"></i>
																</button>
															</div>
														</td>
													</tr>
<tr>
														<td class="center">
															<label class="position-relative">
																<input type="checkbox" class="ace" />
																<span class="lbl"></span>
															</label>
														</td>

														<td>
															<img style="width:100px;height:80px;" alt="150x150" src="assets/images/gallery/thumb-6.jpg">
														</td>
				                                        <td><a href="#"  class="yuangongBtn" rel="#yuangong">CL1234567891234567</a></td>
				                                        <td class="hidden-480">恐怖</td>
				                                        <td class="hidden-480">马虎疼</td>
				                                        <td><span class="label label-sm label-warning">最新上映</span></td>
														<td>
															<div class="hidden-sm hidden-xs btn-group">
																<!-- 详细信息 -->
																<a href="#modal-table" role="button" class="blue" data-toggle="modal">
																<button class="btn btn-xs btn-success" title="">
																	<i class="ace-icon fa fa-search-plus bigger-120"></i>
																</button>
																</a>

																<!-- 修改页面 -->
																<a href="#modal-table" role="button" class="blue" data-toggle="modal">
																<button class="btn btn-xs btn-info">
																	<i class="ace-icon fa fa-pencil bigger-120"></i>
																</button></a>

																<!-- 删除提示 -->
																<a href="#modal-table" role="button" class="blue" data-toggle="modal">
																<button class="btn btn-xs btn-danger">
																	<i class="ace-icon fa fa-trash-o bigger-120"></i>
																</button></a>
															</div>
														</td>
													</tr>
													
												</tbody>
											</table>

											<div class="modal-footer no-margin-top">
												<ul class="pagination pull-right no-margin">
													<li class="prev disabled">
														<a href="${pageContext.request.contextPath }/#">
															<i class="ace-icon fa fa-angle-double-left"></i>
														</a>
													</li>

													<li class="active">
														<a href="${pageContext.request.contextPath }/#">1</a>
													</li>
													<li class="next">
														<a href="${pageContext.request.contextPath }/#">
															<i class="ace-icon fa fa-angle-double-right"></i>
														</a>
													</li>
												</ul>
											</div>

										</div>
									</div>
								</div>
								<!-- 动态生成的内容 -->
								<div id="modal-table" class="modal fade" tabindex="-1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header no-padding">
												<div class="table-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
														<span class="white">&times;</span>
													</button>
													提示信息
												</div>
											</div>

											<div class="modal-body no-padding">
												<table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
													<thead>
														<tr>
															<th>航班类型</th>
															<th>客舱级别</th>
															<th>行李数量上限</th>

															<th>
																<i class="ace-icon fa fa-clock-o bigger-110"></i>
																每件重量上限
															</th>
														</tr>
													</thead>

													<tbody>
														<tr>
															<td>
																<a href="#">国内航班</a>
															</td>
															<td>头等舱</td>
															<td>2件</td>
															<td>5千克</td>
														</tr>

														<tr>
															<td>
																<a href="#">国内航班</a>
															</td>
															<td>头等舱</td>
															<td>2件</td>
															<td>5千克</td>
														</tr>
														<tr>
															<td>
																<a href="#">国内航班</a>
															</td>
															<td>头等舱</td>
															<td>2件</td>
															<td>5千克</td>
														</tr>
														<tr>
															<td>
																<a href="#">国内航班</a>
															</td>
															<td>头等舱</td>
															<td>2件</td>
															<td>5千克</td>
														</tr>
														<tr>
															<td>
																<a href="#">国内航班</a>
															</td>
															<td>头等舱</td>
															<td>2件</td>
															<td>5千克</td>
														</tr>
														<tr>
															<td>
																<a href="#">国内航班</a>
															</td>
															<td>头等舱</td>
															<td>2件</td>
															<td>5千克</td>
														</tr>
													</tbody>
												</table>
											</div>

											<div class="modal-footer no-margin-top">
												<button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
													<i class="ace-icon fa fa-times"></i>
													关闭
												</button>
											</div>
										</div><!-- /.modal-content -->
									</div><!-- /.modal-dialog -->
								</div>
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content-area -->
				</div><!-- /.page-content -->
			</div><!-- /.main-content -->

			<div class="footer">
				<div class="footer-inner">
			

					<!-- /section:basics/footer -->
				</div>
			</div>

			<a href="${pageContext.request.contextPath }/#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->


<!-- 111 -->
		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='${pageContext.request.contextPath }/assets/js/jquery.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
		<script type="text/javascript">
		 window.jQuery || document.write("<script src='${pageContext.request.contextPath }/assets/js/jquery1x.min.js'>"+"<"+"/script>");
		</script>
		<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='${pageContext.request.contextPath }/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>

		<script src="${pageContext.request.contextPath }/assets/js/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/js/jquery.dataTables.bootstrap.js"></script>

		<!-- ace scripts -->
		<script src="${pageContext.request.contextPath }/assets/js/ace-elements.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/js/ace.min.js"></script>

		<script type="text/javascript">
			jQuery(function($) {

				$(".tbl-search").click(function(){
					$(".table-responsive").slideDown("fast");
				})

				var oTable1 = 
				$('#sample-table-2')
				.dataTable( {
					bAutoWidth: false,
					bInfo:flase,
					"aoColumns": [
					  { "bSortable": false },
					  null, 
					  null,
					  null,
					  null, 
					  null,
					  { "bSortable": false },
					  null,
					  { "bSortable": false }
					],
					"aaSorting": [],
			    } );
			
				$(document).on('click', 'th input:checkbox' , function(){
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
				});


				
			
			})

		</script>
	</body>
</html>
