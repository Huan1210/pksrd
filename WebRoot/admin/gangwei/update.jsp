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
						<a href="<%=path %>/gangwei/list">岗位申请管理</a>	
					</li>	
					<li>	
						<a href="javascript:void(0)">编辑</a>	
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
								编辑	
							</h3>	
	
							<!-- 编辑区 -->	
							<div class="row">	
								<!-- PAGE CONTENT BEGINS -->	
								<form class="form-horizontal" action="<%=path %>/gangwei/update" method="post" role="form" onsubmit="check()">	
									<!-- 表单字段 -->	
									<input type="hidden" name="id" value="${gangwei.id}">	
	
									<div class="form-group">	
										<label class="col-sm-3 control-label no-padding-right"	
											for="form-field-1">	
											账号：	
										</label>	
	
										<div class="col-sm-9">	
											<input type="text" id="name" name="name" value="${gangwei.name}"	
												class="col-xs-10 col-sm-5" />	
										</div>	
									</div>	
	
									<div class="space-4"></div>	
	
									 	
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
		function check(){	
			if ($("#name").val() == "") {	
				alert("请输入岗位申请名");	
				return false;	
			}	
				
			return true;	
		}	
	</script>	
</html>	
