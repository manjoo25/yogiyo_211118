<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-block justify-content-center signOut">
	<div class="d-flex justify-content-center userInfo">
		<div>
			<div class="userEmail">
			${userEmail}님으로 로그인 되어 있습니다
			</div>
		</div>
	</div>
	<button type="button" id="signOutBtn" class="btn w-100">로그아웃</button>
</div>

<script>
$(document).ready(function() {
	$('#signOutBtn').on('click', function() {
		alert("로그아웃 하였습니다. 홈 화면으로 돌아갑니다.");
		
		// 홈 화면으로 경로 변경
		location.href = "/user/sign_in_view";
	});
});
</script>