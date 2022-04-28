<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="search d-flex justify-content-center align-items-end">
    <div class="input-group mt-2 my-5 col-5">
        <input type="text" class="form-control" placeholder="검색어를 입력해주세요">
        <div class="input-group-append">
            <button class="btn searchBtn btn-outline-secondary" type="button">검색</button>
        </div>
    </div>
</div>
<nav class="category mb-3">
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
<div id="restInfo"> 
    <div>
        <div Id="restMenu">
            <div class="restName p-3">파스타입니다-안양평촌점</div>
            <div class="restInfo d-flex justify-content-between p-2">
                <img src="https://www.yogiyo.co.kr/mobile/image/default_restaurant_logo.png" alt="음식점 로고" width="80">
                <div class="restDetail m-2 w-100">
                    <small class="reviewPointAvg">5.0</small><br>
                    <small class="reviewCount">리뷰 1951</small><br>
                    <small>신용카드, 현금</small>
                </div>
            </div>
            <div class="restIntro p-3">사장님알림</div>
        </div>
        
        <div class="restInfoList d-flex text-center mt-3 ">
            <div class="menuBtn col-6">메뉴</div>
            <div class="reviewBtn col-6">리뷰</div>
        </div>
        <div class="menuInfo">
            <div class="d-flex justify-content-between p-3">
                <div class="w-100">
                    <a href="#" data-toggle="modal" data-target="#menuModal" id="menu">
                        <div class="menuName font-weight-bold text-dark">매콤크림 파스타</div>
                        <div class="menuEx">시그니처메뉴）베이컨과 새우2마리가 들어가 느끼함을 잡아줄 매콤한 크림소스파스타 기본맛 - 땀아주찔끔날랑말랑 （매콤초보입문자용） 1단계 - 땀쪼금나고 스트레스해소 （중급자용)
                            2단계 - 남들과 다른 위장소유자분,스트레스 포맷 （고급자용） 지옥맛 - 스트레스풀기위해 한번씩 즐겨먹는 맛,극한의 매운맛 （레전드용）</div>
                        <div class="text-dark">9,900원</div>
                    </a>
                </div>
                <img src="https://images.yogiyo.co.kr/image/yogiyo/REST_OWN_IMG/%EA%B2%BD%EA%B8%B0/%EA%B2%BD%EA%B8%B0%EC%95%88%EC%96%91%EC%8B%9C/%EB%A7%8C%EC%95%88%EA%B5%AC/537505_%ED%8C%8C%EC%8A%A4%ED%83%80%EC%9E%85%EB%8B%88%EB%8B%A4-%EC%95%88%EC%96%91%EB%A7%8C%EC%95%88%EC%A0%90/%EC%97%85%EC%B2%B4%EC%9E%90%EC%B2%B4_20210316_537505_%ED%8C%8C%EC%8A%A4%ED%83%80%EC%9E%85%EB%8B%88%EB%8B%A4-%EC%95%88%EC%96%91%EB%A7%8C%EC%95%88%EC%A0%90_%EB%A7%A4%EC%BD%A4%ED%81%AC%EB%A6%BC%ED%8C%8C%EC%8A%A4%ED%83%80_1080x640.jpg?width=384&height=273&quality=100" width="110px" class="pl-2">
            </div>
            <div class="d-flex justify-content-between p-3">
                <div class="w-100">
                    <a href="#" id="menu">
                        <div class="menuName font-weight-bold text-dark">나혼자 먹방 세트</div>
                        <div class="menuEx">메인메뉴 1 + 사이드 메뉴 1 + 음료 1</div>
                        <div class="text-dark">13,400원</div>
                    </a>
                </div>
                <img src="https://images.yogiyo.co.kr/image/yogiyo/REST_OWN_IMG/%EA%B2%BD%EA%B8%B0/%EA%B2%BD%EA%B8%B0%EC%95%88%EC%96%91%EC%8B%9C/%EB%A7%8C%EC%95%88%EA%B5%AC/537505_%ED%8C%8C%EC%8A%A4%ED%83%80%EC%9E%85%EB%8B%88%EB%8B%A4-%EC%95%88%EC%96%91%EB%A7%8C%EC%95%88%EC%A0%90/%EC%97%85%EC%B2%B4%EC%9E%90%EC%B2%B4_20210316_537505_%ED%8C%8C%EC%8A%A4%ED%83%80%EC%9E%85%EB%8B%88%EB%8B%A4-%EC%95%88%EC%96%91%EB%A7%8C%EC%95%88%EC%A0%90_%EB%A7%A4%EC%BD%A4%ED%81%AC%EB%A6%BC%ED%8C%8C%EC%8A%A4%ED%83%80_1080x640.jpg?width=384&height=273&quality=100" width="110px" class="pl-2">
            </div>
        </div>
        <div class="menuReview d-none">
            <h1 class="reviewPointAvg m-3 text-center">5.0</h1>
            <div class="reviewInfo p-3">
                <span class="font-weight-bold mr-3">ha**님</span>
                <small class="text-secondary">1시간 전</small>
                <a href="#" class="more-btn mx-2" data-toggle="modal" data-target="#moreModal">
                    <img src="https://www.iconninja.com/files/860/824/939/more-icon.png" width="30">
                </a>
                <div class="reviewPoint mb-2">5.0</div>
                <div class="reviewImg my-2">
                    <img src="https://rev-static.yogiyo.co.kr/81b4134eaf69a92bcaccf0025d9dc95a_tn.jpg">
                </div>
                <small class="orderedMenu">(곧1위될)우삼겹짬뽕파스타/1(맛 선택(매콤1단계))</small>
                <div class="reviewContent mt-2">해장이 필요했는데 제대로 했습니다 :) 서비스도 맛있게 잘먹었습니다 !</div>
            </div>
        </div>
    </div>
    <div class="orderTable">
        <div>
            <hr>
            <div class="my-2 ml-3">주문표</div><hr>
            <div class="orderMenuEmpty m-3 text-center">주문표에 담긴 메뉴가 없습니다.</div>
            <div class="orderMenu m-3 d-none">주문메뉴</div><hr>
            <div class="price text-right m-3">가격</div><hr>
        </div>
        <div class="my-3"></div>
        <button type="button" class="btn orderEmptyBtn font-weight-bold">주문하기</button>
        <button type="button" class="btn orderBtn font-weight-bold d-none">주문하기</button>
    </div>
</div>
<div class="modal" id="menuModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-l modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="w-100">
                <h5 class="my-3 text-center modal-title">메뉴 상세</h5>
                <img src="https://images.yogiyo.co.kr/image/yogiyo/REST_OWN_IMG/%EA%B2%BD%EA%B8%B0/%EA%B2%BD%EA%B8%B0%EC%95%88%EC%96%91%EC%8B%9C/%EB%A7%8C%EC%95%88%EA%B5%AC/537505_%ED%8C%8C%EC%8A%A4%ED%83%80%EC%9E%85%EB%8B%88%EB%8B%A4-%EC%95%88%EC%96%91%EB%A7%8C%EC%95%88%EC%A0%90/%EC%97%85%EC%B2%B4%EC%9E%90%EC%B2%B4_20210316_537505_%ED%8C%8C%EC%8A%A4%ED%83%80%EC%9E%85%EB%8B%88%EB%8B%A4-%EC%95%88%EC%96%91%EB%A7%8C%EC%95%88%EC%A0%90_%EB%A7%A4%EC%BD%A4%ED%81%AC%EB%A6%BC%ED%8C%8C%EC%8A%A4%ED%83%80_1080x640.jpg?width=384&height=273&quality=100" width="380px">
                <div class="menuInfo m-2">청양고추와 양파로 만든 프리미엄 양념장이 들어갔습니다. 화끈하고 얼큰한 해장각 국밥 '족보레드 오리지널' 대한민국 대표음식 김치로 맛을 내다 속풀이 '족보레드 김치국밥' 의정부에 잭슨빌이 전입신고 했다....'2346 특수 부대맛' '족보레드 부대국밥'</div>
                <div class="m-2">가격 20,900원</div>
                <div class="border-top py-3 text-center">
                    <a href="#" class="menuAddBtn" data-dismiss="modal">주문하기</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal" id="moreModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="w-100">
                <div class="my-3 text-center">
                    <a href="#" class="del-post d-block">삭제하기</a>
                </div>
                <div class="border-top py-3 text-center">
                    <a href="#" class="cancel d-block" data-dismiss="modal">취소</a>
                </div>
            </div>
        </div>
    </div>
</div>