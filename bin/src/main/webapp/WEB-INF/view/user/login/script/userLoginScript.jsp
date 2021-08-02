<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
	function memLogin() {
		var loginForm = $("#loginForm").serialize();
		$.ajax({
			type : "POST",
			url : "/selectLoginCheck", // 회원 로그인
			data : loginForm,
			success : function(memLoginInfo) {
				if (memLoginInfo == 0) {
					$("#loginUl").html(
							"<font color='red'><li>ID / PW를 확인해주세요.</li></font>"
									+ "").create();
				} else {
		           	   	 document.loginForm.action = "/memLogin"
		                 document.loginForm.submit();
// 					alert("됐나 만나");
// 					window.location.href= "/memLogin"   ;
	
				}
			},
			error : function(xhr, status, error) { //ajax 오류인경우  
				alert("잘못된 입력입니다.");
				alert("error\nxhr : " + xhr + ", status : " + status
						+ ", error : " + error);
			}
		});
	}
</script>
</html>