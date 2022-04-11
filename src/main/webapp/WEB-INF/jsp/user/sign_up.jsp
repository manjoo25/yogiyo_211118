<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-block justify-content-center signUp">
    <div class="d-flex justify-content-center">
        <img src="https://www.yogiyo.co.kr/mobile/image/logo-yogiyo-2.png?v=41f2560d9ad765ab4f74dff4fe465e5fa76d5eec" class="my-4" width="109" height="45">
    </div>
    <div class="d-flex justify-content-between mb-3">
        이름
        <input type="text" class="name form-control col-10" placeholder="이름을 입력해주세요">
    </div>
    <div class="d-flex justify-content-between mt-3">
        아이디
        <input type="text" class="loginId form-control col-10" placeholder="아이디를 입력해주세요">
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
        <input type="password" class="password form-control col-10" placeholder="비밀번호를 입력해주세요">
    </div>
    <div class="d-flex justify-content-between my-3">
        비밀번호 확인
        <input type="password" class="confirmPassword form-control col-10" placeholder="비밀번호를 입력해주세요">
    </div>
    <div class="d-flex justify-content-between my-3">
        이메일
        <input type="text" class="email form-control col-10" placeholder="이메일을 입력해주세요">
    </div>
    <div class="d-flex justify-content-between my-3">
        휴대폰번호
        <input type="text" class="phoneNumber form-control col-10" placeholder="휴대폰번호를 입력해주세요(-없이)">
    </div>
	<button type="button" id="signUpBtn" class="btn w-100">가입하기</button>
</div>