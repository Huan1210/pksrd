<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>



		<jsp:include page="/admin/common/head.jsp"></jsp:include>
	</head>

	<body class="no-skin">

		<jsp:include page="/admin/left.jsp"></jsp:include>

		<!-- 操作代码  -->
		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<div class="breadcrumbs" id="breadcrumbs">
				<ul class="breadcrumb">
					<li>
						<i class="ace-icon fa fa-home home-icon"></i>
						<a href="<%=path %>/userinfo/list">用户管理</a>
					</li>
					<li>
						<a href="javascript:void(0)">添加</a>
					</li>
				</ul>
				<!-- /.breadcrumb -->


			</div>

			<!-- /section:basics/content.breadcrumbs -->
			<div class="page-content">

				<div class="page-content-area">
					<!-- 查询区 -->
					<div class="row">
						<div class="col-xs-12">
							<h3 class="header smaller lighter grey">
								添加
							</h3>

							<!-- 编辑区 -->
							<div class="row">
								<!-- PAGE CONTENT BEGINS -->
								<form class="form-horizontal" action="<%=path%>/userinfo/add"
									method="post" role="form" onsubmit="check()">
									<!-- 表单字段 -->

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"
											for="form-field-1">
											账号：
										</label>

										<div class="col-sm-9">
											<input type="text" id="name" name="name"
												class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"
											for="form-field-1">
											密码：
										</label>

										<div class="col-sm-9">
											<input type="text" id="password" name="password"
												class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"
											for="form-field-1">
											电话：
										</label>

										<div class="col-sm-9">
											<input type="text" id="phone" name="phone"
												class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"
											for="form-field-1">
											姓名：
										</label>

										<div class="col-sm-9">
											<input type="text" id="rname" name="rname"
												class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"
											for="form-field-1">
											性别：
										</label>

										<div class="col-sm-9">
											<input type="text" id="sex" name="sex"
												class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"
											for="form-field-1">
											学历：
										</label>

										<div class="col-sm-9">
											<input type="text" id="xueli" name="xueli"
												class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"
											for="form-field-1">
											单位：
										</label>

										<div class="col-sm-9">
											<input type="text" id="dept" name="dept"
												class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"
											for="form-field-1">
											职务：
										</label>

										<div class="col-sm-9">
											<input type="text" id="zhiwu" name="zhiwu"
												class="col-xs-10 col-sm-5" />
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right"
											for="form-field-tags">
											用户类型：
										</label>
										<div class="col-sm-2">
											<div class="pos-rel">
												<select class="form-control" id="usertype" name="usertype">
													<option value="管理员">
														管理员
													</option>
													<option value="学生">
														学生
													</option>
													<option value="评议组">
														评议组
													</option>
													<option value="辅导员">
														辅导员
													</option>
												</select>
											</div>
										</div>
									</div>

									<!-- 表单字段 -->


									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" type="sumbit">
												<i class="ace-icon fa fa-check bigger-110"></i> 立即提交
											</button>

											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i> 重置
											</button>
										</div>
									</div>
								</form>

							</div>
							<!-- 编辑区 -->




						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content-area -->

			</div>
			<!-- /.page-content -->
		</div>
		<!-- /.main-content -->
		<!-- 操作代码  -->

		<div class="footer">

			<jsp:include page="/admin/foot.jsp"></jsp:include>
		</div>

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i> </a>
		</div>
		<!-- /.main-container -->



	</body>

	<script type="text/javascript">
function check() {
	if ($("#name").val() == "") {
		alert("请输入用户名");
		return false;
	}

	return true;
}
</script>
</html>