<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script type="text/javascript">
	function ajaxOne() {
		/* 결국 주고받는건 오브젝트 */
		/* $.ajax('url',option) */

		/* 		$.ajax('ajaxTestOne',{
		 success : function(data){
		
		 }	
		 }); */
		alert('function 실행');
		 var output=''; 
		$.ajax({
			url : 'ajaxTestOne',
			type : 'post',
			success : function(data) {
				/*data는 Obj형태고, ajax메소드에 의해 액션에 있는 밸류스택을 모두 가져온다 */
				for ( var key in data) {
					output += 'key:[' + key + ']' + ' value:[' + data[key] + ']'+' type:['+ typeof(data[key]) +']\n'
				}
				console.log(output);
			}
		});
	}
</script>

</head>
<body>
	<a href="ajaxTestOne.action">링크</a>
	<input type="button" value="ajax" onclick="ajaxOne()">
</body>
</html>