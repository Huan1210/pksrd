<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html lang="en">
	<head>
		<jsp:include page="/admin/common/head.jsp"></jsp:include>
	</head>

	<body class="login-layout blur-login">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<span class="white">贫困生认定管理系统</span>
								</h1>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box"
									class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="ace-icon fa fa-coffee green"></i> 输入登录信息
											</h4>

											<div class="space-6"></div>

											<form action="<%=path %>/index/login" method="post">
												<fieldset>
													<label class="block clearfix">
														<input type="hidden" id="messageInfo"  	value="${requestScope.messageInfo}" />
														<span class="block input-icon input-icon-right"> <input
																type="text" class="form-control" name="name" placeholder="用户名" /> <i
															class="ace-icon fa fa-user"></i> </span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right"> <input
																type="password" class="form-control" name="password" placeholder="密码" />
															<i class="ace-icon fa fa-lock"></i> </span>
													</label>

													<div class="space"></div>

													<div class="clearfix">
														

														<button type="submit"
															class="width-35 pull-right btn btn-sm btn-primary">
															<i class="ace-icon fa fa-key"></i>
															<span class="bigger-110">登录</span>
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>

										</div>
										<!-- /.widget-main -->

										<div class="toolbar clearfix">
										<div>
												<a href="#" data-target="#forgot-box" class="forgot-password-link">
													<i class="ace-icon fa fa-arrow-left"></i>
													匿名留言
												</a>
											</div>
										


											<div>
												<a href="#" data-target="#signup-box"
													class="user-signup-link"> 用户注册 <i
													class="ace-icon fa fa-arrow-right"></i> </a>
											</div>
										</div>
									</div>
									<!-- /.widget-body -->
								</div>
								<!-- /.login-box -->
								
								<div id="forgot-box" class="forgot-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header red lighter bigger">
												<i class="ace-icon fa fa-key"></i>
												匿名留言
											</h4>

											<div class="space-6"></div>
											<p>
												输入您留言信息
											</p>

											<form action="<%=path %>/message/add" method="post">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="name" class="form-control"  />
															<i class="ace-icon fa fa-envelope"></i>
														</span>
													</label>

													<div class="clearfix">
														<button type="submit" class="width-35 pull-right btn btn-sm btn-danger">
															<i class="ace-icon fa fa-lightbulb-o"></i>
															<span class="bigger-110">提交</span>
														</button>
													</div>
												</fieldset>
											</form>
										</div><!-- /.widget-main -->

										<div class="toolbar center">
											<a href="#" data-target="#login-box" class="back-to-login-link">
												返回登录
												<i class="ace-icon fa fa-arrow-right"></i>
											</a>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.forgot-box -->
								
								



								<div id="signup-box" class="signup-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header green lighter bigger">
												<i class="ace-icon fa fa-users blue"></i> 新用户注册
											</h4>

											<div class="space-6"></div>
											<p>
												输入详细信息:
											</p>

											<form method="post" action="<%=path %>/index/reg">
												<fieldset> 

													<label class="block clearfix">
														<span class="block input-icon input-icon-right"> <input
																type="text" class="form-control" placeholder="账号" name="name"/> <i
															class="ace-icon fa fa-user"></i> </span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right"> <input
																type="password" class="form-control" placeholder="密码"  name="password"/>
															<i class="ace-icon fa fa-user"></i> </span>
													</label>
													
													<label class="block clearfix">
														<span class="block input-icon input-icon-right"> <input
																type="text" class="form-control" placeholder="电话"  name="phone"/> <i
															class="ace-icon fa fa-user"></i> </span>
													</label>
													
													<label class="block clearfix">
														<span class="block input-icon input-icon-right"> <input
																type="text" class="form-control" placeholder="姓名"  name="rname"/> <i
															class="ace-icon fa fa-user"></i> </span>
													</label>
													
													<label class="block clearfix">
														<span class="block input-icon input-icon-right"> <input
																type="text" class="form-control" placeholder="性别"  name="sex"/> <i
															class="ace-icon fa fa-user"></i> </span>
													</label>
													
													<label class="block clearfix">
														<span class="block input-icon input-icon-right"> <input
																type="text" class="form-control" placeholder="学历"  name="xueli"/> <i
															class="ace-icon fa fa-user"></i> </span>
													</label>
													


													<div class="space-24"></div>

													<div class="clearfix">
														<button type="reset" class="width-30 pull-left btn btn-sm">
															<i class="ace-icon fa fa-refresh"></i>
															<span class="bigger-110">重置</span>
														</button>

														<button type="submit"
															class="width-65 pull-right btn btn-sm btn-success">
															<span class="bigger-110">注册</span>

															<i class="ace-icon fa fa-arrow-right icon-on-right"></i>
														</button>
													</div>
												</fieldset>
											</form>
										</div>

										<div class="toolbar center">
											<a href="#" data-target="#login-box"
												class="back-to-login-link"> <i
												class="ace-icon fa fa-arrow-left"></i> 返回登录 </a>
										</div>
									</div>
									<!-- /.widget-body -->
								</div>
								<!-- /.signup-box -->
							</div>
							<!-- /.position-relative -->

						</div>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.main-content -->
		</div>
		<!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script type="text/javascript">
window.jQuery
		|| document.write("<script src='admin/assets/js/jquery.min.js'>" + "<"
				+ "/script>");
</script>

		<!-- <![endif]-->

		<!--[if IE]>
		<script type="text/javascript">
		 window.jQuery || document.write("<script src='admin/assets/js/jquery1x.min.js'>"+"<"+"/script>");
		</script>
		<![endif]-->
		<script type="text/javascript">
if ('ontouchstart' in document.documentElement)
	document.write("<script src='admin/assets/js/jquery.mobile.custom.min.js'>" + "<"
			+ "/script>");
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
		
	var $messageInfo = $("#messageInfo").val();
	if ($messageInfo != null && $messageInfo != "") {
		alert($messageInfo);
		$("#messageInfo").val("");
	}
 	
});
</script>
	</body>
</html>
