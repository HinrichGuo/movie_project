 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>登录</title>
		<meta name="description" content="Restyling jQuery UI Widgets and Elements" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace-fonts.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/ace.min.css" id="main-ace-style" />
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
	</head>
	</head>

	<body class="login-layout blur-login">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<span class="white">欢迎来到后台管理</span>
								</h1>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="ace-icon fa fa-coffee green"></i>
												请确定登录信息
											</h4>

											<div class="space-6"></div>

											<form id="loginform" action="${pageContext.request.contextPath }/indexLogin" method="post">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" id="adminName" name="adminName" class="form-control" placeholder="用户名" onchange="checkEmpty()"/>
															<i class="ace-icon fa fa-user"></i>
														</span>
														<span id="nameError"></span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" id="adminPsw" name="adminPsw" class="form-control" placeholder="密码" onchange="checkEmpty()" />
															<i class="ace-icon fa fa-lock"></i>
															<span id="pswError"></span>
														</span>
													</label>

													<div class="space"></div>

													<div class="clearfix">
														<label class="inline">
															<input type="checkbox" class="ace" />
															<span class="lbl"> 记住我</span>
														</label>


															<i class="ace-icon fa fa-key"></i>
														<input type="submit" value="登录" class="width-35 pull-right btn btn-sm btn-primary bigger-110" >
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>

										</div><!-- /.widget-main -->

										<div class="toolbar clearfix">
											<div>
												<a href="${pageContext.request.contextPath }/" data-target="#forgot-box" class="forgot-password-link">
													<i class="ace-icon fa fa-arrow-left"></i>
													忘记密码
												</a>
											</div>

										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.login-box -->

								<div id="forgot-box" class="forgot-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header red lighter bigger">
												<i class="ace-icon fa fa-key"></i>
												重置密码
											</h4>

											<div class="space-6"></div>
											<p>
												输入您注册时候的email，用以接收密码重置信息
											</p>

											<form>
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" id="email" name="email" class="form-control" placeholder="Email" onchange="checkEmail()"/>
															<i class="ace-icon fa fa-envelope"></i>
														</span>
														<span id="emailError"></span>
													</label>

													<div class="clearfix">
														<button type="button" name="sendEmail" class="width-35 pull-right btn btn-sm btn-danger">
															<i class="ace-icon fa fa-lightbulb-o"></i>
															<span class="bigger-110">发送!</span>
														</button>
													</div>
												</fieldset>
											</form>
										</div><!-- /.widget-main -->

										<div class="toolbar center">
											<a href="${pageContext.request.contextPath }/" data-target="#login-box" class="back-to-login-link">
												返回登录
												<i class="ace-icon fa fa-arrow-right"></i>
											</a>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.forgot-box -->

							</div><!-- /.position-relative -->

						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='${pageContext.request.contextPath }/assets/js/jquery.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
		<script type="text/javascript">
		 window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>"+"<"+"/script>");
		</script>
		<![endif]-->
		
		<!-- 表单验证 anthor:st -->
		<script src="${pageContext.request.contextPath }/js/validate.js"></script>
		<script type="text/javascript">
		　$(document).ready(function(){
			var name = $("input[name='adminName']").val();
			
			      $("#adminName").focus(function(){
			    	  document.getElementById("nameError").innerHTML="";
				  });
			
				  $("#adminName").blur(function(){
					  var name = $("input[name='adminName']").val();
					  if(name.isNull()){
						    $("#nameError").css("color","red");
							document.getElementById("nameError").innerHTML="必须填写用户名";
						}else{
							document.getElementById("nameError").innerHTML=" ";
						}
				  });
				  
				  $("#adminPsw").focus(function(){
			    	  document.getElementById("pswError").innerHTML="";
				  });
			
				  $("#adminPsw").blur(function(){
					  var name = $("input[name='adminPsw']").val();
					  if(name.isNull()){
						    $("#pswError").css("color","red");
							document.getElementById("pswError").innerHTML="必须填写密码";
						}else{
							document.getElementById("pswError").innerHTML=" ";
						}
				  });
				  
				  $("#email").focus(function(){
			    	  document.getElementById("emailError").innerHTML="";
				  });
			
				  $("#email").blur(function(){
					  var email = $("input[name='email']").val();
					  if(email.isNull()){
						    $("#emailError").css("color","red");
							document.getElementById("emailError").innerHTML="请填写电子邮箱";
						}else{
							document.getElementById("emailError").innerHTML=" ";
						}
					  
					  if(!email.validateEmail()){
						    $("#pswError").css("color","red");
							document.getElementById("emailError").innerHTML="请填写正确电子邮箱";
						}else{
							document.getElementById("emailError").innerHTML=" ";
						}
				  });
				  
				});
		/*
		$(document).ready(function(){
			$("#adminName").change(function(){
				alert("qwerty7uiop");
				var name = $("input[name='adminName']").val();
				var psw = $("input[name='adminPsw']").val();
				if(name.isNull()){
					document.getElementById("nameError").innerHTML="本字段必须填写";
				}else{
				    alert(name);
				}
				})
				
			$("button[name='adminEmail']").change(function(){
				var email = $("input[name='email']").val();
				if(!email.validateEmail()){
					alert("请输入正确电子邮箱");
				}else{
				    alert(email);
				}
				})
				
			})
		*/
		</script>
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='${pageContext.request.contextPath }/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
			 $(document).on('click', '.toolbar a[data-target]', function(e) {
				e.preventDefault();
				var target = $(this).data('target');
				$('.widget-box.visible').removeClass('visible');//hide others
				$(target).addClass('visible');//show target
			 });
			});

		</script>
	</body>
</html>
