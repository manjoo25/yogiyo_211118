<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-block justify-content-center signUp">
    <div class="d-flex justify-content-center">
        <img src="https://www.yogiyo.co.kr/mobile/image/logo-yogiyo-2.png?v=41f2560d9ad765ab4f74dff4fe465e5fa76d5eec" class="my-4" width="109" height="45">
    </div>
    <div class="d-flex justify-content-between mb-3">
        이름
        <input type="text" class="name form-control col-10" placeholder="이름을 입력하세요">
    </div>
    <div class="d-flex justify-content-between mt-3">
        아이디
        <input type="text" class="loginId form-control col-10" placeholder="아이디를 입력하세요">
    </div>
    <div class="d-flex justify-content-between">
        <div></div>
        <div id="idCheckLength" class="small text-danger d-none">ID를 4자 이상 입력해주세요.</div>
        <div id="idCheckDuplicated" class="small text-danger d-none">이미 사용중인 ID입니다.</div>
        <div id="idCheckOk" class="small text-success d-none">사용 가능한 ID 입니다.</div>
        <div class="w-25"></div>
        <button type="button" id="loginIdCheckBtn" class="btn btn-success col-2 my-3">중복확인</button>
    </div>
    <div class="d-flex justify-content-between mb-3">
        비밀번호
        <input type="password" class="password form-control col-10" placeholder="비밀번호를 입력하세요">
    </div>
    <div class="d-flex justify-content-between my-3">
        비밀번호 확인
        <input type="password" class="confirmPassword form-control col-10" placeholder="비밀번호를 입력하세요">
    </div>
    <div class="d-flex justify-content-between my-3">
        이메일
        <input type="text" class="email form-control col-10" placeholder="이메일을 입력하세요">
    </div>
    <div class="d-flex justify-content-between my-3">
        휴대폰번호
        <input type="text" class="phoneNumber form-control col-10" placeholder="휴대폰번호를 입력하세요(-없이)">
    </div>
	<button type="button" id="signUpBtn" class="btn w-100">가입하기</button>
</div>

<script>
$(document).ready(function() {
	// 아이디 중복 확인
	$('#loginIdCheckBtn').on('click', function(e) {
		// alert("클릭"); // 클릭 가능
		
		var loginId = $('.loginId').val().trim();
		if (loginId.length < 4) {
			// 4자 이하 일 때
			$('#idCheckLength').removeClass('d-none');
			$('#idCheckDuplicated').addClass('d-none');
			$('#idCheckOk').addClass('d-none');
			return;
		}
	});
	
	$.ajax ({
		// request
		url: "/user/is_duplicated_id",
		data: {"loginId": loginId},
			
		// response
		success: function(data) {
			if (data.result == true) {
				// 중복일 때
				$('#idCheckDuplicated').removeClass('d-none');
				$('#idCheckLength').addClass('d-none');
				$('#idCheckOk').addClass('d-none');
			} else {
				// 중복이 아닐 때
				$('#idCheckOk').removeClass('d-none');
				$('#idCheckLength').addClass('d-none');
				$('#idCheckDuplicated').addClass('d-none');
			}
		},
		error: function(error) {
			alert("아이디 중복 확인에 실패하였습니다. 관리자에게 문의해주세요.");
		}
	});
	
	$('#signUpBtn').on('click', function(e) {
		e.preventDefault();
		alert("클릭");
		
		// validation
		let name = $('.name').val().trim();
		if (name == '') {
			alert("이름을 입력해주세요");
			return;
		}
		
		var loginId = $('.loginId').val().trim();
		if (loginId == '') {
			alert("아이디를 입력해주세요");
			return;
		}
		
//		var reg = "^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$";

		let password = $('.password').val().trim();
		let confirmPassword = $('.confirmPassword').val().trim();
		if (password == '' || confirmPassword == '') {
			alert("비밀번호를 입력해주세요");
			return;
		}

		if (password != confirmPassword) {
			alert("비밀번호가 일치하지 않습니다");
			$('#password').val('');
			$('#confirmPassword').val('');
			return;
		}
		
		let email = $('.email').val().trim();
		// let regEmail = /\w+@\w+\.\w+/gi;
		if (email == '') {
			alert("이메일을 입력해주세요");
			return;
		} /* else if (!email.match("regEamil")) {
			alert("이메일이 올바르지 않습니다");
			return;
		} */
		
		let phoneNumber = $('.phoneNumber').val().trim();
		if (phoneNumber == '') {
			alert("휴대폰번호를 입력해주세요");
			return;
		}
		
		let idCheckOk = $('#idCheckOk').val().trim();
		if (idCheckOk.hasClass('.d-none') == true) {
			alert("아이디 중복 확인을 해주세요");
			return;
		}
	});
});
</script>