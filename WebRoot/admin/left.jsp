<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<div id="navbar" class="navbar navbar-default">
	<div class="navbar-container" id="navbar-container">

		<button type="button" class="navbar-toggle menu-toggler pull-left"
			id="menu-toggler">
			<span class="sr-only">Toggle sidebar</span>

			<span class="icon-bar"></span>

			<span class="icon-bar"></span>

			<span class="icon-bar"></span>
		</button>

		<!-- /section:basics/sidebar.mobile.toggle -->
		<div class="navbar-header pull-left">
			<!-- #section:basics/navbar.layout.brand -->
			<a href="<%=path %>/admin/index.jsp" class="navbar-brand"> <small> <img
						src="<%=path %>/admin/assets/avatars/logo.png" alt="" /> </small> </a>
		</div>

		<div class="navbar-buttons navbar-header pull-right" role="navigation">
			<ul class="nav ace-nav">


				<!-- #section:basics/navbar.user_menu -->
				<li class="light-blue">
					<a data-toggle="dropdown" href="#" class="dropdown-toggle"> <span
						class="user-info"> 欢迎您<br /> ${user.rname}(${user.usertype })</span> <i
						class="ace-icon fa fa-caret-down"></i> </a>

					<ul
						class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
					 

						<li>
							<a href="<%=path %>/admin/userinfo/editmy.jsp"> <i class="ace-icon fa fa-user"></i>
								个人信息设置 </a>
						</li>

						<li class="divider"></li>

						<li>
							<a href="<%=path %>/index/loginout"> <i class="ace-icon fa fa-power-off"></i> 登出 </a>
						</li>
					</ul>
				</li>

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
			<li class="active">
				<a href="<%=path %>/admin/index.jsp"> <i class="menu-icon fa fa-tachometer"></i>
					<span class="menu-text"> 总控制台 </span> </a>

				<b class="arrow"></b>
			</li>
			<c:if test="${user.usertype =='管理员'}">
			<li class="">
				<a href="#" class="dropdown-toggle"> <i
					class="menu-icon fa fa-desktop"></i> <span class="menu-text">
						用户管理 </span> <b class="arrow fa fa-angle-down"></b> </a>

				<b class="arrow"></b>

				<ul class="submenu">

					<li class="">
						<a href="<%=path %>/userinfo/list"> <i
							class="menu-icon fa fa-caret-right"></i> 用户维护 </a>

						<b class="arrow"></b>
					</li> 
				</ul>
			</li>
			</c:if>

			<li class="">
				<a href="#" class="dropdown-toggle"> <i
					class="menu-icon fa fa-list"></i> <span class="menu-text">
						公告管理 </span> <b class="arrow fa fa-angle-down"></b> </a>

				<b class="arrow"></b>

				<ul class="submenu">
					<li class="">
						<a href="<%=path %>/news/list"> <i class="menu-icon fa fa-caret-right"></i>
							公告管理 </a>

						<b class="arrow"></b>
					</li>
				</ul>
			</li>

			<li class="">
				<a href="#" class="dropdown-toggle"> <i
					class="menu-icon fa fa-pencil-square-o"></i> <span
					class="menu-text"> 勤工助学 </span> <b class="arrow fa fa-angle-down"></b>
				</a>

				<b class="arrow"></b>

				<ul class="submenu">
					<li class="">
						<a href="<%=path %>/zhuxue/list"> <i
							class="menu-icon fa fa-caret-right"></i> 勤工助学 </a>

						<b class="arrow"></b>
					</li>

					 
				</ul>
			</li>
			
			<li class="">
				<a href="#" class="dropdown-toggle"> <i
					class="menu-icon fa fa-pencil-square-o"></i> <span
					class="menu-text"> 岗位申请管理 </span> <b class="arrow fa fa-angle-down"></b>
				</a>

				<b class="arrow"></b>

				<ul class="submenu">
					<c:if test="${user.usertype =='管理员'}">
					<li class="">
						<a href="<%=path %>/gangwei/list"> <i
							class="menu-icon fa fa-caret-right"></i> 岗位申请管理 </a>

						<b class="arrow"></b>
					</li>
					</c:if>
					<c:if test="${user.usertype =='学生'}">
					<li class="">
						<a href="<%=path %>/gangwei/listmy"> <i
							class="menu-icon fa fa-caret-right"></i> 我的岗位</a>

						<b class="arrow"></b>
					</li>
					</c:if>

					 
				</ul>
			</li>
			
			<c:if test="${user.usertype =='管理员'}">
			<li class="">
				<a href="#" class="dropdown-toggle"> <i
					class="menu-icon fa fa-list-alt"></i> <span
					class="menu-text"> 匿名留言 </span> <b class="arrow fa fa-angle-down"></b>
				</a>

				<b class="arrow"></b>

				<ul class="submenu">
					<li class="">
						<a href="<%=path %>/message/list"> <i
							class="menu-icon fa fa-caret-right"></i> 匿名留言 </a>

						<b class="arrow"></b>
					</li>

					 
				</ul>
			</li>
			</c:if>
			
			
			<li class="">
				<a href="#" class="dropdown-toggle"> <i
					class="menu-icon fa fa-user"></i> <span
					class="menu-text"> 贫困生管理 </span> <b class="arrow fa fa-angle-down"></b>
				</a>

				<b class="arrow"></b>

				<ul class="submenu">
					<c:if test="${user.usertype =='管理员'}">
					<li class="">
						<a href="<%=path %>/pks/list"> <i
							class="menu-icon fa fa-caret-right"></i> 贫困生管理 </a>

						<b class="arrow"></b>
					</li>
					</c:if>
					<c:if test="${user.usertype =='学生'}">
					<li class="">
						<a href="<%=path %>/admin/pks/add.jsp"> <i
							class="menu-icon fa fa-caret-right"></i> 贫困生申请 </a>

						<b class="arrow"></b>
					</li>
					<li class="">
						<a href="<%=path %>/pks/mylist"> <i
							class="menu-icon fa fa-caret-right"></i> 我的申请 </a>

						<b class="arrow"></b>
					</li>
					</c:if>
					<c:if test="${user.usertype =='评议组'}">
					<li class="">
						<a href="<%=path %>/pks/pflist"> <i
							class="menu-icon fa fa-caret-right"></i> 贫困生评分</a>

						<b class="arrow"></b>
					</li>
					</c:if>
					<c:if test="${user.usertype =='辅导员'}">
					<li class="">
						<a href="<%=path %>/pks/splist"> <i
							class="menu-icon fa fa-caret-right"></i> 贫困生审批</a>

						<b class="arrow"></b>
					</li>
					</c:if>
					<c:if test="${user.usertype =='管理员'}">
					<li class="">
						<a href="<%=path %>/pks/pjlist"> <i
							class="menu-icon fa fa-caret-right"></i> 贫困生评级</a>

						<b class="arrow"></b>
					</li>
					</c:if>
					

					 
				</ul>
			</li>
 
		</ul>
		<!-- /.nav-list -->

		<!-- #section:basics/sidebar.layout.minimize -->
		<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
			<i class="ace-icon fa fa-angle-double-left"
				data-icon1="ace-icon fa fa-angle-double-left"
				data-icon2="ace-icon fa fa-angle-double-right"></i>
		</div>

	</div>