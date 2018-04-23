<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.js">
	
</script>
<script type="text/javascript">
	$(function() {
		$("#input").click(function() {
			alert($("#form").serialize());

		});

	});
</script>
</head>
<body>
	<form action="" id="form">

		用户名 <input type="text" name="username" /> <br /> 密码 <input
			type="password" name="password"> <br /> <input type="button"
			value="提交" id="input" />

	</form>

</body>

</html>