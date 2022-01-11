<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
<body>
	<h1>회원 정보 추가</h1>
	<form method="post" action="/lesson06/ex01/add_user" id="joinForm">
		<label>이름</label><input type="text" name="name" id="nameInput"><br>
		<label>생년월일</label><input type="text" name="yyyymmdd" id="yyyymmddInput"><br>
		<label>자기소개</label>
		<textarea rows="10" cols="50" name="introduce" id="introduceInput"></textarea>
		<label>이메일 주소:</label><input type="text" name="email" id="emailInput">
		<button type="button" id="submitBtn">추가</button>
	</form>
	
	<script>
		$(document).ready((function)(){
			
			$("#submitBtn").on("submit",fuction(){
				let name = $("#nameInput").val();
				let yyyymmdd = $("#yyyymmddInput").val();
				let introduce = $("#introduceInput").val();
				let eamil = $("#emailInput").val();
				
				if(name == ""){
					alert("이름을 입력하시오")
					return false;
				}
				
				$.ajax({
					type:"post",
					url:"/lesson06/ex01/add_user",
					data:{"name":name, "yyyymmdd":yyymmdd,"introduce":introduce,"email":email},
					success:function(data){
						alert(data);
					},
					error:function(){
						alert("에러발생");
					}
				});
				return false;
			});
		});
	</script>
	
</body>
</html>