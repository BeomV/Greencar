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
							<h4 class="card-title">회원가입</h4>
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
									</label>
									<input type="password" class="form-control" id="m_pw" required data-eye>
								    <div class="invalid-feedback">
								    	유효하지 않는 비밀번호입니다.
							    	</div>
								</div>
								<div class="form-group">
									<label for="text">이름</label>
									<input type="text" class="form-control" id="userName" value="" required autofocus>
									<div class="invalid-feedback">
										유호하지 않는 이메일 주소입니다.
									</div>
								</div>
								<div style="position:relative; left: 10px;">
								<div class="form-group">
									<label for="text">생년월일</label>
									<select style="width:100px; text-align:center;" id="year">
										<option>선택</option>
										<option>1990</option>
										<option>1991</option>
										<option>1992</option>
										<option>1993</option>
										<option>1994</option>
										<option>1995</option>
										<option>1996</option>
										<option>1997</option>
										<option>1998</option>
										<option>1999</option>
										<option>2000</option>
										<option>2001</option>
										<option>2002</option>
								
									</select>
									<select style="width:100px; text-align:center;" id="month">
										<option>선택</option>
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
										<option>6</option>
										<option>7</option>
										<option>8</option>
										<option>9</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
									</select>
									<select style="width:100px; text-align:center;" id="day">
										<option>선택</option>
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
										<option>6</option>
										<option>7</option>
										<option>8</option>
										<option>9</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
										<option>13</option>
										<option>14</option>
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
										<option>19</option>
										<option>20</option>
										<option>21</option>
										<option>22</option>
										<option>23</option>
										<option>24</option>
										<option>25</option>
										<option>26</option>
										<option>27</option>
										<option>28</option>
										<option>29</option>
										<option>30</option>
										<option>31</option>
																
									</select>
									
									<!-- <input type="text" class="form-control" id="userName" value="" required autofocus> -->
									<div class="invalid-feedback">
										유호하지 않는 이메일 주소입니다.
									</div>
								</div>
								</div>
								<div class="form-group">
									<label for="text">주소</label> 
									<input type="button" value="주소검색" style="width:80px; height:30px; text-align:center; font-size:15px; position: relative; left: 250px; margin-bottom:10px;" onclick="sample6_execDaumPostcode()">
									<input type="text" class="form-control" id="addr" value="" required autofocus readonly>
									<input type="text" class="form-control" id="addr_detail" value="" placeholder="상세 주소" required autofocus style="position:relative; margin-top: 10px; text-align:center;">
									<div class="invalid-feedback">
										주소를 입력하세요.
									</div>
								</div>
								
								<div class="form-group" style="text-align: center">
									<div class="btn-group" data-toggle="buttons">
										<label class="btn btn-primary active">
											<input type="radio" id="userGender" autocomplete="off" value="남자" checked>남자
										</label>
										<label class="btn btn-primary active">
											<input type="radio" id="userGender" autocomplete="off" value="여자">여자
										</label>
									
									</div>
								
								</div>
								
								

								<div class="form-group">
									<div class="custom-checkbox custom-control">
										<input type="checkbox" name="remember" id="remember" class="custom-control-input">	
									</div>
								</div>

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block" id="register_process">
										회원가입
									</button>
								</div>
								<div class="mt-4 text-center">
									계정이 있으신가요? <a href="/demo/register">로그인</a>
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
				$("#register_process").click(function(){
					var json = {
						m_id : $("#m_id").val(),
						m_pw : $("#m_pw").val(),
						userName : $("#userName").val(),
						userGender : $("#userGender").val(),
						year : $("#year").val(),
						month : $("#month").val(),
						day : $("#day").val(),
						addr : $("#addr").val(),
						addr_detail : $("#addr_detail").val()
						
						
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
								window.location.href = "/";
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
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    //document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    //document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                //document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("addr").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("addr_detail").focus();
            }
        }).open();
    }
</script>
		
</body>
</html>
