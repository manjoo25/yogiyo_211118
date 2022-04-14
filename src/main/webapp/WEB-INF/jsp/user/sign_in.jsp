<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-block justify-content-center signIn">
    <div class="d-flex justify-content-center">
        <img src="https://www.yogiyo.co.kr/mobile/image/logo-yogiyo-2.png?v=41f2560d9ad765ab4f74dff4fe465e5fa76d5eec" class="my-4" width="109" height="45">
    </div>
    <div class="d-flex justify-content-between">
        아이디
        <input type="text" class="loginId form-control col-10" placeholder="아이디를 입력해주세요">
    </div>
    <div class="d-flex justify-content-between my-3">
        비밀번호
        <input type="password" class="password form-control col-10" placeholder="비밀번호를 입력해주세요">
    </div>
    <label for="rememberMe">
        <input type="checkbox" id="rememberMe" class="mx-2 text-align-right">
        <span class="checkBox"></span>자동 로그인
    </label>
	<button type="button" id="signInBtn" class="btn w-100 mb-3">로그인</button>
	<button type="button" id="signUpViewBtn" class="btn w-100">회원가입</button>
</div>

<script>
$(document).ready(function() {
	
});
</script>