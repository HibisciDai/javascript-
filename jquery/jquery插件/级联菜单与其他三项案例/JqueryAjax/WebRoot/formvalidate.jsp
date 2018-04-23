<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<style type="text/css">
label.error {
	color: red;
}
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.js">
	
</script>
<!--引入表单验证的js文件  -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/message_zh_CN.js"></script>
<script type="text/javascript">
	$(function() {

		$("#fm").validate({
			//自定义校验规则
			rules : {
				username : {
					required : true,
					minlength : 6
				},
				password : {
					required : true,
					minlength : 8
				},
				repassword : {
					required : true,
					equalTo : "#pwd"
				},
				email : {
					required : true,
					email : true
				}
			},
			//自定义提示信息
			messages : {
				username : {
					required : "您的用户名不能为空  请配合"
				}
			}
		});
	});
</script>
</head>
<body>
	<form action="" id="fm">
		用户名 <input type="text" name="username" /> <br /> 密码 <input
			type="password" name="password" id="pwd" /> <br /> 重复密码 <input
			type="password" name="repassword" /> <br /> 邮箱 <input type="text"
			name="email"> <br /> <input type="submit" value="提交" />
	</form>




</body>

</html>