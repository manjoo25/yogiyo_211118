<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="search d-flex justify-content-center align-items-end">
    <div class="input-group mt-2 my-5 col-5">
        <input type="text" class="form-control" placeholder="검색어를 입력해주세요">
        <div class="input-group-append">
            <button class="btn searchBtn btn-outline-secondary" type="button">검색</button>
        </div>
    </div>
</div>
<nav class="category">
    <ul class="nav">
		<li class="nav-item"><a href="" class="nav-link">전체보기</a></li>
		<li class="nav-item"><a href="" class="nav-link">야식</a></li>
		<li class="nav-item"><a href="" class="nav-link">피자/양식</a></li>
		<li class="nav-item"><a href="" class="nav-link">중식</a></li>
		<li class="nav-item"><a href="" class="nav-link">한식</a></li>
		<li class="nav-item"><a href="" class="nav-link">일식/돈까스</a></li>
		<li class="nav-item"><a href="" class="nav-link">분식</a></li>
    </ul>
</nav>
<div class="d-flex justify-content-end">
    <select class="form-control m-3 w-25">
        <option>기본 정렬순</option>
        <option>별점순</option>
        <option>리뷰 많은 순</option>
    </select>
</div>
<div class="d-flex flex-wrap justify-content-start ml-1">
<c:forEach items="${restList}" var="store" varStatus="status">
    <div class="restInfo d-flex m-2">
        <div class="restImg">
            <img src="${store.imagePath}" class="m-2" alt="음식점 로고" width="70">
        </div>
        <div class="restDetail">
            <div>${store.name}</div>
            <small class="reviewPoint">${store.reviewPoint}</small><br>
            <small class="reviewCount">${status.count}</small>
        </div>
    </div>
</c:forEach>
</div>