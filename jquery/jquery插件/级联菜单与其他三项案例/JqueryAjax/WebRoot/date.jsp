<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.js">
	
</script>
<!-- 引入WdatePicker.js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
	$(function() {

	});
</script>
</head>
<body>
	<form action="">
		生日 <input type="text" class="Wdate" style="width:300px"
			onclick="WdatePicker({dateFmt:'yyyy年MM月dd日  HH:mm:ss',readOnly:true,isShowWeek:true})" />


	</form>




</body>

</html>