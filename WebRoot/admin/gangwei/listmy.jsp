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
						<a href="<%=path%>/gangwei/list">我的岗位申请</a>
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
								我的岗位申请
							</h3>


							<div class="row">
								 

								 
							</div>
							<!-- 列表区 -->
							<div class="row" style="padding-top: 20px">
								<div class="col-xs-12">
									<!-- PAGE CONTENT BEGINS -->
									<div class="row">
										<div class="col-xs-12">
											<table id="sample-table-1"
												class="table table-striped table-bordered table-hover">
												<thead>
													<tr>

														<th>
															岗位名称
														</th>

														<th>
															申请人
														</th>

														<th>
															审核状态
														</th>

														<th>
															申请时间
														</th>

														 
													</tr>
												</thead>

												<c:forEach items="${list}" var="gangwei">

													<tbody>
														<tr>


															<td>
																${gangwei.name}
															</td>

															<td>
																${gangwei.sname}
															</td>

															<td>
																${gangwei.states}
															</td>

															<td>
																${gangwei.adate}
															</td>


															 
														</tr>
												</c:forEach>




												</tbody>
											</table>
										</div>
										<!-- /.span -->
									</div>
									<!-- /.row -->
									<!-- 列表区 -->
								</div>
								<!-- /.col -->
							</div>
							<!-- /.row -->
							<!-- 查询区 -->




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
</html>
