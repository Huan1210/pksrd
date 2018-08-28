<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"  charset="utf-8" />
<title>贫困生认定管理系统</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel="stylesheet"
	href="<%=path%>/admin/assets/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="<%=path%>/admin/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=path%>/admin/assets/css/ace-fonts.css" />
<link rel="stylesheet" href="<%=path%>/admin/assets/css/ace.min.css"
	id="main-ace-style" />
<!--[if lte IE 9]>
			<link rel="stylesheet" href="<%=path%>/admin/assets/css/ace-part2.min.css" />
		<![endif]-->
<!--[if lte IE 9]>
		  <link rel="stylesheet" href="<%=path%>/admin/assets/css/ace-ie.min.css" />
		<![endif]-->

<link rel="stylesheet"
	href="<%=path%>/admin/assets/css/jquery-ui.custom.min.css" />
<link rel="stylesheet" href="<%=path%>/admin/assets/css/chosen.css" />
<link rel="stylesheet" href="<%=path%>/admin/assets/css/datepicker.css" />
<link rel="stylesheet"
	href="<%=path%>/admin/assets/css/bootstrap-timepicker.css" />
<link rel="stylesheet"
	href="<%=path%>/admin/assets/css/daterangepicker.css" />
<link rel="stylesheet"
	href="<%=path%>/admin/assets/css/bootstrap-datetimepicker.css" />
<link rel="stylesheet" href="<%=path%>/admin/assets/css/colorpicker.css" />




<script src="<%=path%>/admin/assets/js/ace-extra.min.js">
</script>
<!--[if lte IE 8]>
		<script src="<%=path%>/admin/assets/js/html5shiv.min.js"></script>
		<script src="<%=path%>/admin/assets/js/respond.min.js"></script>
		<script src="<%=path%>/admin/assets/js/jquery.min.js"></script>
		<![endif]-->

<!--[if !IE]> -->
<script type="text/javascript">
window.jQuery
		|| document
				.write("<script src='<%=path%>/admin/assets/js/jquery.min.js'>"
						+ "<" + "/script>");
</script>
<!-- <![endif]-->
<!--[if IE]>
			<script type="text/javascript">
			 window.jQuery || document.write("<script src='<%=path%>/admin/assets/js/jquery1x.min.js'>"+"<"+"/script>");
			</script>
		<![endif]-->
<script type="text/javascript">
if ('ontouchstart' in document.documentElement)
	document
			.write("<script src='<%=path%>/admin/assets/js/jquery.mobile.custom.min.js'>"
					+ "<" + "/script>");
</script>
<script src="<%=path%>/admin/assets/js/bootstrap.min.js">
</script>
<!--[if lte IE 8]>
		  <script src="<%=path%>/admin/assets/js/excanvas.min.js"></script>
		<![endif]-->
<script src="<%=path%>/admin/assets/js/jquery-ui.custom.min.js">
</script>
<script src="<%=path%>/admin/assets/js/jquery.ui.touch-punch.min.js">
</script>
<script src="<%=path%>/admin/assets/js/ace-elements.min.js">
</script>
<script src="<%=path%>/admin/assets/js/ace.min.js">
</script>



<script src="<%=path%>/admin/assets/js/jquery-ui.custom.min.js">
</script>
<script src="<%=path%>/admin/assets/js/jquery.ui.touch-punch.min.js">
</script>
<script src="<%=path%>/admin/assets/js/chosen.jquery.min.js">
</script>
<script src="<%=path%>/admin/assets/js/fuelux/fuelux.spinner.min.js">
</script>
<script
	src="<%=path%>/admin/assets/js/date-time/bootstrap-datepicker.min.js">
</script>
<script
	src="<%=path%>/admin/assets/js/date-time/bootstrap-timepicker.min.js">
</script>
<script src="<%=path%>/admin/assets/js/date-time/moment.min.js">
</script>
<script src="<%=path%>/admin/assets/js/date-time/daterangepicker.min.js">
</script>
<script
	src="<%=path%>/admin/assets/js/date-time/bootstrap-datetimepicker.min.js">
</script>
<script src="<%=path%>/admin/assets/js/bootstrap-colorpicker.min.js">
</script>
<script src="<%=path%>/admin/assets/js/jquery.knob.min.js">
</script>
<script src="<%=path%>/admin/assets/js/jquery.autosize.min.js">
</script>
<script src="<%=path%>/admin/assets/js/jquery.inputlimiter.1.3.1.min.js">
</script>
<script src="<%=path%>/admin/assets/js/jquery.maskedinput.min.js">
</script>
<script src="<%=path%>/admin/assets/js/bootstrap-tag.min.js">
</script>
<script src="<%=path%>/admin/assets/js/typeahead.jquery.min.js">
</script>
<script src="<%=path%>/admin/assets/js/jquery.dataTables.min.js">
</script>
<script src="<%=path%>/admin/assets/js/jquery.dataTables.bootstrap.js">
</script>
<script type="text/javascript" src="<%=path%>/js/popup.js">
</script>

<script type="text/javascript">
jQuery(function($) {
<!-- 
//datepicker plugin
				//link
				$('.date-picker').datepicker({
					autoclose: true,
					todayHighlight: true
				})
				//show datepicker when clicking on the icon
				.next().on(ace.click_event, function(){
					$(this).prev().focus();
				});
			
				//or change it into a date range picker
				$('.input-daterange').datepicker({autoclose:true});
			});
//-->

			function up()
	       {
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
	            pop.setContent("contentUrl","<%=path%>/upload/upload.jsp");
	            pop.setContent("title","文件上传");
	            pop.build();
	            pop.show();
	       }
	       
	       
	       function down(fujianPath, fujianYuashiMing) {

	var url = "<%=path%>/upload/updown.jsp?fujianPath=" + fujianPath
			+ "&fujianYuashiMing=" + fujianYuashiMing;
	url = encodeURI(url);
	url = encodeURI(url);

	window.open(url, "_self");

	return false;
}
</script>

