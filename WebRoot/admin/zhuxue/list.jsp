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
						<a href="<%=path%>/zhuxue/list">勤工助学管理</a>
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
								勤工助学管理
							</h3>


							<div class="row">
								<form method="post" action="<%=path%>/zhuxue/list">
									<div class="col-xs-12 col-sm-3">
										<div class="input-group">
											<input class="form-control " type="text" placeholder="勤工助学名"
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
								<c:if test="${user.usertype =='管理员'}">
									<div class="col-xs-12 col-sm-3">
										<div class="input-group">
											<button class="btn btn-add" type="button"
												onclick="javascrtpt:window.location.href='<%=path%>/admin/zhuxue/add.jsp'">
												<i class="ace-icon fa fa-user bigger-110"></i> 添加
											</button>
										</div>
									</div>
								</c:if>
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
															岗位说明
														</th>

														<th>
															岗位数量
														</th>

														<th>
															截止时间
														</th>

														<th>
															发布时间
														</th>

														<c:if test="${user.usertype =='学生'}">
															<th>
																岗位申请
															</th>
														</c:if>

														<th class="hidden-480">
															操作
														</th>
													</tr>
												</thead>

												<c:forEach items="${list}" var="zhuxue">

													<tbody>
														<tr>


															<td>
																${zhuxue.name}
															</td>

															<td>
																${zhuxue.info}
															</td>

															<td>
																${zhuxue.shu}
															</td>

															<td>
																${zhuxue.jdate}
															</td>

															<td>
																${zhuxue.adate}
															</td>


															<c:if test="${user.usertype =='学生'}">
																<th>
																	<a href="<%=path%>/gangwei/add?zid=${zhuxue.id}">岗位申请</a>
																</th>
															</c:if>



															<td>
																<div class="hidden-sm hidden-xs btn-group">
																	<button
																		onclick="javascrtpt:window.location.href='<%=path%>/zhuxue/view?id=${zhuxue.id}'"
																		class="btn btn-xs btn-success" title="">
																		<i class="ace-icon fa fa-search-plus bigger-120"></i>
																	</button>

																	<c:if test="${user.usertype =='管理员'}">

																		<button
																			onclick="javascrtpt:window.location.href='<%=path%>/zhuxue/toupdate?id=${zhuxue.id}'"
																			class="btn btn-xs btn-info">
																			<i class="ace-icon fa fa-pencil bigger-120"></i>
																		</button>

																		<button
																			onclick="javascrtpt:window.location.href='<%=path%>/zhuxue/del?id=${zhuxue.id}'"
																			class="btn btn-xs btn-danger">
																			<i class="ace-icon fa fa-trash-o bigger-120"></i>
																		</button>

																	</c:if>
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
