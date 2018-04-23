<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.js">
	
</script>
<script type="text/javascript">
	$(function() {
		//丢失焦点事件
		$("#input").blur(function() {
			//获取用户所输入的用户名
			var username = $("#input").val();
			$.ajax({
				type : "GET",
				url : "${pageContext.request.contextPath}/user/checkusername",
				data : "username=" + username,
				dataType : "text",
				success : function(data) {
					alert($.trim(data));
					//$("#span").text(data);
				}

			});

		});

	});
</script>
</head>
<body>
	<form action="">
		用户名 <input type="text" id="input" /> <span id="span"></span>


	</form>




</body>

</html>