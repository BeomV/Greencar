<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 데모</title>
	</head>
	<link href="resources/css/admin.css" rel="stylesheet"/> 	
	<body>
		<h3>Admin page</h3>
		<form>
		<ul class="mainbox">
		<li>
		<a><strong>브랜드 선택</strong></a>
		<select onchange="categoryChange(this)" style="width:605px; height: 40px;" id="carbrand">
			<option>선택 없음</option>
			<option value="현대">현대</option>
			<option value="기아">기아</option>
			<option value="쉐보레">쉐보레</option>
		</select>
		</li>
		<li>
		<a><strong>모델 선택</strong></a>
		<select style="width:605px; height: 40px;" id="carname">
		<option>선택 없음</option>
		</select>
		<select id="fueltype">
			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
		</select>
		</li>
		<select id="cartrim">
			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
		</select>
		<button id = "register_process">회원가입</button> -->
		</div>
		
		<!-- <input type = "text" id = "carbrand" placeholder="1"><br>
		<input type = "text" id = "carname" placeholder="2"><br>
		<input type = "text" id = "fueltype" placeholder="3"><br>
		<input type = "text" id = "cartrim" placeholder="4"><br>
		<button id = "register_process">회원가입</button> -->
		</ul>
		</form>

		
		
		
		
		
		<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
		<script>
			$(document).ready(function(){
				$("#register_process").click(function(){
					
					var json = {
						carbrand : $("#carbrand").val(),
						carname : $("#carname").val(),
						fueltype : $("#fueltype").val(),
						cartrim : $("#cartrim").val()
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
						url : "insertProduct",
						data : json,
						success : function(data) {
							alert("상품 등록이 완료되었습니다.");
						},
						error : function(error) {
							alert("상품 등록에 실패하였습니다."+ error);
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
	</body>
</html>