<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>GreenCar</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link href="resources/css/test.css" rel="stylesheet"/> 	
</head>

<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="brand">
						<img src="resources/img/logo.png" alt="logo">
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">로그인</h4>
							<form class="my-login-validation">
								<div class="form-group">
									<label for="email">이메일 주소</label>
									<input type="email" class="form-control" id="m_id" value="" required autofocus>
									<div class="invalid-feedback">
										유호하지 않는 이메일 주소입니다.
									</div>
								</div>

								<div class="form-group">
									<label for="password">비밀번호
										<a href="forgot.jsp" class="float-right">
											비밀번호를 잊으셨나요?
										</a>
									</label>
									<input type="password" class="form-control" id="m_pw" required data-eye>
								    <div class="invalid-feedback">
								    	유효하지 않는 비밀번호입니다.
							    	</div>
								</div>

								<div class="form-group">
									<div class="custom-checkbox custom-control">
										<input type="checkbox" name="remember" id="remember" class="custom-control-input">
										<label for="remember" class="custom-control-label">로그인 정보 기억하기</label>
									</div>
								</div>

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block" id="login_process">
										로그인
									</button>
								</div>
								<div class="mt-4 text-center">
									계정이 없으신가요? <a href="/register">회원가입</a>
								</div>
							</form>
						</div>
					</div>
					<div class="footer">
						 
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="resources/js/my-login.js"></script>
	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
	<script>
	$(document).ready(function(){
		$("#login_process").click(function(){
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
				url : "Login",
				data : json,
				success : function(data) {
					switch (Number(data)) {
					case 0:
						alert("아이디 또는 비밀번호가 일치하지 않습니다.");
						break;
					case 1:
						window.location.href = "/index";

					default:
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
