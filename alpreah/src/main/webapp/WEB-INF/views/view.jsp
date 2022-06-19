<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link rel="stylesheet" href="resources/css/product.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>

    </style>
</head>
<body>

    <div class="wrapper">
        <div class="section">
            <div class="top_navbar">
                <div class="hamburger">
                    <a href="#">
                        <i class="fas fa-bars"></i>
                    </a>
                </div>
            </div>

        </div>
        <!--Top menu -->
        <div class="sidebar">
            <div class="profile">
               <h3>ADMIN</h3>
                <p>BEOMJUN</p>
            </div>
           <ul>
            <li>
                <a href="index.html">
                    <span class="icon"><i class="fas fa-home"></i></span>
                    <span class="item">Home</span>
                </a>
            </li>
            <li>
                <a href="/product">
                    <span class="icon"><i class="fas fa-desktop"></i></span>
                    <span class="item">상품 등록</span>
                </a>
            </li>
             <li>
                <a href="/productm"  class="active">
                    <span class="icon"><i class="fas fa-desktop"></i></span>
                    <span class="item">상품 관리</span>
                </a>
            </li>
            <li>
                <a href="member">
                    <span class="icon"><i class="fas fa-user-friends"></i></span>
                    <span class="item">회원 관리</span>
                </a>
            </li>
        </ul>
        </div>
    </div>

    <div class="bodysection">
        <h2>상품 등록</h2>

        <div class="contanier">
            <form role="form" method="POST" autocomplete="off">
            <input type="hidden" name="n" value="${goods.no}" id="no"/>
            <ul>
            <li>
            <a><strong>브랜드  :  </strong></a>
            <span>
          		${goods.carbrand}
            </span>
            </li>
                
            <li>
                <a><strong>차량 모델  :</strong></a>
                <span>
                	${goods.carname}
                </span>
          
            </li>
            <li>
                <a><strong>차량 등급 :</strong></a>
				<span>
					${goods.cartrim}
				</span>             
            </li>
            <li>
                <a><strong>연료 타입 :</strong></a>
				<span>
					${goods.fueltype}
				</span>            
            </li>
            <li>
                <a><strong>현재 주행 거리 :</strong></a>
					<span>
						${goods.distance}
					</span>
            </li>
            <li>
                <a><strong>차량 번호 :</strong></a>
				<span>
						${goods.car_no}
					</span>
            </li>
            <li>
                <a><strong>세차 여부  :</strong></a>
				<span>
						${goods.carwash}
				</span>
                <br>

            </li>
            <li>
                <a><strong>그린존 위치  :</strong></a>
                <br>
                <br>
                <input type="text" name="address" id="addressvalue" style="width: 300px; height: 30px;" value="${goods.addressvalue}" readonly/>
                <label><input type="button" value="주소 검색" onclick="sample6_execDaumPostcode()" style="width: 100px; height: 30px;"></label>
                <br>
                <br>
                <input type="text" id="address_detail" style="width: 400px; height: 30px; text-align: center;" placeholder="상세 주소" value="${goods.address_detail}"/>
                
            </li>
            <li>
                <br>
                <button type="button" id="modify_Btn">수정</button>
                <button type="button" id="delete_Btn">삭제</button>
            </li>
        </ul>
        </form>

        </div>
    </div>


    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
    
    <script>
    $("#modify_Btn").click(function(){
		
		location.href ="/modify?n=" + ${goods.no};
			
		});
    
    
    </script>
    
		<script>
		
			$(document).ready(function(){
				$("#delete_Btn").click(function(){
					
					var json = {
						no: $("#no").val(),
						
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
						url : "/delete",
						data : json, 
						success : function(data) {
							alert("상품 등록이 삭제되었습니다.");
							history.back();
						},
						error : function(error) {
							alert("실패하였습니다."+ error);
						}
					});
				});
			});
		</script>
<script>
    function categoryChange(e) {
    var good_a = ["아이오닉5", "코나", "더 뉴 아반떼 AD", "벨로스터","아이오닉 하이브리드","올 뉴 아반떼","올 뉴 아반떼 하이브리드","쏘나타 DN8","그렌저 IG","더 뉴 코나","베뉴","싼타페TM","캐스퍼"];
    var good_b = ["EV6", "쏘울 부스터", "더 뉴 레이", "모닝 어반","올 뉴 모닝","더 뉴 K3","올 뉴 K3","K5 3세대","K8","올 뉴 K7","올 뉴 카니발","카니발 4세대","니로","디 올 뉴 니로","디 올 뉴 스포티지","셀토스","스토닉","스포티지 볼드","쏘렌토 더 마스터"];
    var good_c = ["더 뉴 스파크", "트레일블레이저"];
    var target = document.getElementById("carname");
 
    if(e.value == "현대") var d = good_a;
    else if(e.value == "기아") var d = good_b;
    else if(e.value == "쉐보레") var d = good_c;
 
    target.options.length = 0;
 
    for (x in d) {
        var opt = document.createElement("option");
        opt.value = d[x];
        opt.innerHTML = d[x];
        target.appendChild(opt);
    }    
}
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
                document.getElementById("addressvalue").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("address_detail").focus();
            }
        }).open();
    }
</script>
     
</body>
<footer>
    <h2>footer</h2>
</footer>
</html>