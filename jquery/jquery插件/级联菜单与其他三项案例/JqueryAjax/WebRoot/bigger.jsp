<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/js/jquery.jqzoom.css"
	type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.js">
	
</script>
<!-- 引入放大镜相关的js文件 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.jqzoom-core.js"></script>
<script type="text/javascript">
	$(function() {
		$("#img1").jqzoom({
			zoomWidth : 300,
			zoomHeight : 300
		});
	});
</script>
</head>
<body>
	<a href="images/d2.jpg" id="img1"> <img src="images/s2.jpg" /> </a>
</body>

</html>