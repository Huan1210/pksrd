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
						<a href="<%=path%>/pks/list">贫困生管理</a>
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
								贫困生管理
							</h3>


							<div class="row">
								<form method="post" action="<%=path%>/pks/list">
									<div class="col-xs-12 col-sm-3">
										<div class="input-group">
											<input class="form-control " type="text" placeholder="贫困生管理名"
												name="name" />
										</div>

									</div>
									<div class="col-xs-12 col-sm-3">
										<div class="input-group">
											<button class="btn btn-info" type="submit">
												<i class="ace-icon fa fa-search bigger-110"></i> 查询
											</button>
										</div>
									</div>

								</form>

								<div class="col-xs-12 col-sm-3">
									<div class="input-group">
										<button class="btn btn-add" type="button"
											onclick="javascrtpt:window.location.href='<%=path%>/admin/pks/add.jsp'">
											<i class="ace-icon fa fa-user bigger-110"></i> 添加
										</button>
									</div>
								</div>
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
															姓名
														</th>

														<th>
															学号
														</th>

														<th>
															性别
														</th>

														<th>
															认证文件
														</th>

														<th>
															申请理由
														</th>

														<th>
															审批状态
														</th>

														<th>
															评分
														</th>

														<th>
															评级
														</th>

														<th>
															提交时间
														</th>

														<th class="hidden-480">
															操作
														</th>
													</tr>
												</thead>

												<c:forEach items="${list}" var="pks">

													<tbody>
														<tr>


															<td>
																${pks.name}
															</td>

															<td>
																${pks.hao}
															</td>

															<td>
																${pks.sex}
															</td>

															<td>
																
																<a style="color: red; " href="#"
												onclick='return down("${pks.fujian}","${pks.fujian}")'>下载认证文件</a>
																
															</td>

															<td>
																${pks.info}
															</td>

															<td>
																${pks.state}
															</td>

															<td>
																${pks.fen}
															</td>

															<td>
																${pks.grade}
															</td>

															<td>
																${pks.adate}
															</td>


															<td>
																<div class="hidden-sm hidden-xs btn-group">
																	<button
																		onclick="javascrtpt:window.location.href='<%=path%>/pks/view?id=${pks.id}'"
																		class="btn btn-xs btn-success" title="">
																		<i class="ace-icon fa fa-search-plus bigger-120"></i>
																	</button>

																	<button
																		onclick="javascrtpt:window.location.href='<%=path%>/pks/toupdate?id=${pks.id}'"
																		class="btn btn-xs btn-info">
																		<i class="ace-icon fa fa-pencil bigger-120"></i>
																	</button>

																	<button
																		onclick="javascrtpt:window.location.href='<%=path%>/pks/del?id=${pks.id}'"
																		class="btn btn-xs btn-danger">
																		<i class="ace-icon fa fa-trash-o bigger-120"></i>
																	</button>
																</div>
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
