<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 데모</title>
	</head>
	<body>
		<form action="/modify2" method="POST" id="modifyForm" >		
		<input type="text" id="no">
			
			<input type="text" id="carbrand" value="${goods.carbrand}">
			<input type="text" id="carname" value="${goods.carname}">
			<input type="text" id="fueltype" value="${goods.fueltype}">
			<input type="text" id="cartrim" value="${goods.cartrim}">
			<input type="text" id="distance" value="${goods.distance}">
			<input type="text" id="car_no" value="${goods.car_no}">
			<input type="text" id="addressvalue" value="${goods.addressvalue}">
			<input type="text" id="address_detail" value="${goods.address_detail}">
			
			<button type="submit" id="modify_btn">제출</button>
		
		
		
		
		
		
		</form>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
		
		<script>
			let mForm = $("modifyForm");
			
			$("#modify_btn").on("click", function(e){
				MForm.submit();
			
			
			});
		
			
			
		</script>
		
		
		
		
		
		
		
		
		<script>
			$(document).ready(function(){
				$("#register_process").click(function(){
					var json = {
						m_id : $("#m_id").val(),
						m_pw : $("#m_pw").val()
					};
					
					for(var str in json){
						if(json[str].length == 0){
							alert($("#" + str).attr("placeholder") + "를 입력해주세요.");
							$("#" + str).focus();
							return;
						}
					}
					
					 $.ajax({
						type : "post",
						url : "register",
						data : json,
						success : function(data) {
							switch (Number(data)) {
							case 0:
								alert("정상적으로 회원가입 되었습니다.");
								window.location.href = "/demo";
								break;
							case 1:
								alert("아이디가 중복 되었습니다.");
								break;
							default:
								alert("알수없는 오류가 발생 했습니다. [Error Code :" + Number(data) + "]");
								break;
							}
						},
						error : function(error) {
							alert("오류 발생"+ error);
						}
					});
				});
			});
		</script>
	</body>
</html>