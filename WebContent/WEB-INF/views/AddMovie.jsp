<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets/css/select2.css" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="assets/css/ace-fonts.css" />
<link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style" />
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

<script type="text/javascript">
	
</script>
</head>

<body class="no-skin">
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
					<li><a href="javascript:void(0)">影片管理</a></li>
					<li><a href="AddMovie.jsp">影片添加</a></li>
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

				<!-- /section:settings.box -->
				<div class="page-content-area">

					<div class="row">
						<div class="col-xs-12">
							<div class="widget-box">
								<div class="widget-body">
									<form class="form-horizontal " id="validation-form"
										action="${pageContext.request.contextPath }/addFilm"
										method="post" enctype="multipart/form-data">
										<div class="widget-main">
											<!-- #section:plugins/fuelux.wizard.container -->
											<div class="step-content pos-rel" id="step-container">

												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">影片名称:</label>
													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<input type="text" name="filmName" id=""
																class="col-xs-12 col-sm-6" />
														</div>
													</div>
												</div>

												<div class="space-2"></div>

												<div class="form-group">

													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">导演:</label>

													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<input type="text" name="filmDirector" id=""
																class="col-xs-12 col-sm-4" />
														</div>
													</div>

												</div>

												<div class="space-2"></div>

												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right"
														for="password2">影片类型:</label>

													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<input type="text" name="filmType" id=""
																class="col-xs-12 col-sm-4" />
														</div>
													</div>
												</div>
												<div class="space-2"></div>
												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right"
														for="password2">放映类型:</label>

													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<select name="playtypeId" id=""
																class="col-xs-12 col-sm-4">
																<option value=""></option>
																<option value=""></option>
															</select>

														</div>
													</div>
												</div>


												<div class="hr hr-dotted"></div>

												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">国家:</label>

													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<input type="text" id="" name="filmCountry"
																class="col-xs-12 col-sm-5" />
														</div>
													</div>
												</div>

												<div class="space-2"></div>

												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">主演:</label>

													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<input type="text" id="" name="filmActor"
																class="col-xs-12 col-sm-5" />
														</div>
													</div>
												</div>

												<div class="space-2"></div>

												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right"
														for="url">影片简介:</label>

													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<!-- 		<input type="url" id="url" name="url" class="col-xs-12 col-sm-8" /> -->

															<textarea
																class="form-control limited autosize-transition"
																name="filmIntro" id="limited" maxlength="50"></textarea>
														</div>
													</div>
												</div>

												<div class="hr hr-dotted"></div>

												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">上映时间</label>

													<div class="col-xs-12 col-sm-9">
														<div>
															<!-- 	日历 -->
															<div class="clearfix">
																<input type="date" id="" name="filmPlaytime"
																	class="col-xs-12 col-sm-5" />
															</div>

														</div>

													</div>
												</div>
												<div class="space-2"></div>

												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">时长</label>

													<div class="col-xs-12 col-sm-9">
														<div>
															<div class="clearfix">
																<input type="text" id="" name="filmTimelong"
																	class="col-xs-12 col-sm-5" /><label
																	class="control-label ">分钟</label>
															</div>
														</div>


													</div>

												</div>

												<div class="form-group">
													<div class="col-xs-12 col-sm-9">
														<label
															class="control-label col-xs-12 col-sm-3 no-padding-right"
															for="password2">海报:</label> <input type="file"
															name="fileName" id="" class=""
															onchange="previewImage(this,'view')"> <img
															id="view" name="ImgDec"
															src="${pageContext.request.contextPath }/img/movie.jpg"
															style="width: 300px; height: 250px; border: 1px solid black"
															ondblclick="">
													</div>
												</div>
											</div>

											<!-- rrr -->
											<div class="step-pane" id="step2"></div>

										</div>

										<div class="wizard-actions">

											<input type="submit" value="提交"
												class="width-35 pull-right btn btn-sm btn-primary bigger-110">

										</div>

									</form>
								</div>
							</div>

						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<div class="footer">
		<div class="footer-inner">
			<!-- #section:basics/footer -->
			<div class="footer-content">
				<!-- 	<span class="bigger-120"> 统一开发平台-UI库 &copy; 2014 </span> -->
			</div>

			<!-- /section:basics/footer -->
		</div>
	</div>

	<a href="#" id="btn-scroll-up"
		class="btn-scroll-up btn btn-sm btn-inverse"> <i
		class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
	</a>
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
