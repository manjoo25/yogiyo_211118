<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="d-flex justify-content-between align-items-center w-100 h-100">
    <div>
    	<a href="/list/list_all">
        	<img src="https://www.yogiyo.co.kr/mobile/image/logo-yogiyo.png?v=41f2560d9ad765ab4f74dff4fe465e5fa76d5eec" alt="logo" width="90px">
        </a>
    </div>
    <div>
    	<c:if test="${not empty userEmail}">
			<a href="/user/sign_out" class="ml-2 text-white font-weight-bold">로그아웃</a>
		</c:if>
		<c:if test="${empty userEmail}">
			<a href="/user/sign_in_view"><button class="signInViewBtn btn">로그인</button></a>
			<a href="/user/sign_up_view"><button class="signUpViewBtn btn">회원가입</button></a>
		</c:if>
        <button class="signOutViewBtn btn">로그아웃</button>
	</div>
    <div>
    </div>
</div>