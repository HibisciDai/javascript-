<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.js">
	
</script>
<script type="text/javascript">
	$(function() {
		var citys = null;
		//初始化数据
		$
				.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/address/selectAll",
					dataType : "json",//自动把后台交互的json串  转换为js对象
					success : function(data) {
						//转化成js对象
						//citys=JSON.parse(data);
						// citys=$.parseJSON(data);
						citys = data;
						//获取第一个select标签对象
						var select = $("#city");
						for ( var i = 0; i < citys.length; i++) {
							var option = $("<option>" + citys[i].city
									+ "</option>");
							select.append(option);
						}
						//获取第一个城市对应的区
						var addresses = citys[0].addresses;
						//获取第二个select标签
						var sections = $("#sections");
						for ( var i = 0; i < addresses.length; i++) {
							var option = $("<option>" + addresses[i].city
									+ "</option>");

							sections.append(option);
						}
					}
				});
		$("#city")
				.change(
						function() {
							//获取用户选中的城市
							var value = $("#city option:selected").val();
							//获取第二个select标签
							var sections = $("#sections");
							for ( var i = 0; i < citys.length; i++) {
								//用户选中的城市  与从后台拿到的所有城市做比较
								if (value == citys[i].city) {
									sections.empty();
									for ( var j = 0; j < citys[i].addresses.length; j++) {
										var option = $("<option>"
												+ citys[i].addresses[j].city
												+ "</option>");
										sections.append(option);

									}
								}

							}

						});
	});
</script>
</head>
<body>
	<select id="city"></select>
	<select id="sections"></select>



</body>

</html>