<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>패키지 검색</title>
<!-- google fonts icon -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pkage/package_detail.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pkage/package_searchResult.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pkage/package_clear.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pkage/data_no.css">
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
</head>
<body>
<div id="pk_container">
        <div class="container">
            <div class="ly_wrap result_wrap">
            
                <!-- 국가 날짜 출발 부분 -->
                <div class="text_wrap big line">
                        <div class="select_area_wrap">
                            <strong class="tit"><span>${pkgSearch.country }</span></strong>
                        </div>

                        <div class="right_cont">
                            <div class="infomation">인천출발</div>

                            <div class="infomation">${pkgSearch.dates_start_check }</div>
                        </div>
                </div><!-- text_wrap big line -->

                <!-- 필터 부분 -->
                <div class="inr">
                    <div>
                        <div class="form_wrap major"></div>
                        <div class="js_acc multi filter_wrap">
                            <!-- 가격 -->
                            <div class="inr">
                                <a href="#adtAmtCdsDiv" class="header active">가격</a>
                                <div id="adtAmtCdsDiv" class="view" style="display: block;">
                                    <div class="form_wrap">
                                        <span class="form_holder text">
                                            <input type="checkbox" id="chk_adtAmtCds0|400000" name="chk_price" class="inpt_checkbox" value="|400000">
                                            <label for="chk_adtAmtCds0|400000" class="label_checkbox">0~40만원</label>
                                        </span>

                                        <span class="form_holder text">
                                            <input type="checkbox" id="chk_adtAmtCds400000|600000" name="chk_price" class="inpt_checkbox" value="400000|600000">
                                            <label for="chk_adtAmtCds400000|600000" class="label_checkbox">40~60만원</label>
                                        </span>

                                        <span class="form_holder text">
                                            <input type="checkbox" id="chk_adtAmtCds600000|800000" name="chk_price" class="inpt_checkbox" value="600000|800000">
                                            <label for="chk_adtAmtCds600000|800000" class="label_checkbox">60~80만원</label>
                                        </span>

                                        <span class="form_holder text">
                                            <input type="checkbox" id="chk_adtAmtCds800000" name="chk_price" class="inpt_checkbox" value="800000|">
                                            <label for="chk_adtAmtCds800000" class="label_checkbox">80~만원</label>
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <!-- 여행기간 -->
                            <div class="inr">
                                <a href="#trvlDayCntsDiv" class="header active">여행기간</a>
                                <div id="trvlDayCntsDiv" class="view" style="display: block;">
                                    <div class="form_wrap">
                                        <span class="form_holder text">
                                            <input type="checkbox" id="chk_trvlDayCnts3" name="chk_term" class="inpt_checkbox" value="3"> 
                                            <label for="chk_trvlDayCnts3" class="label_checkbox">3일</label>
                                        </span>

                                        <span class="form_holder text">
                                            <input type="checkbox" id="chk_trvlDayCnts4" name="chk_term" class="inpt_checkbox" value="4"> 
                                            <label for="chk_trvlDayCnts4" class="label_checkbox">4일</label>
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <!-- 출발시간 -->
                            <div class="inr">
                                <a href="#depTmsCdsDiv" class="header active">출발시간</a>
                                <div id="depTmsCdsDiv" class="view" style="display: block;">
                                    <div class="form_wrap">
                                        <span class="form_holder text">
                                            <input type="checkbox" id="chk_depTmsCdsAM" name="chk_time" class="inpt_checkbox" value="AM"> 
                                            <label for="chk_depTmsCdsAM" class="label_checkbox">05시~12시</label>
                                        </span>
                                        <span class="form_holder text">
                                            <input type="checkbox" id="chk_depTmsCdsPM" name="chk_time" class="inpt_checkbox" value="PM"> 
                                            <label for="chk_depTmsCdsPM" class="label_checkbox">12시~18시</label>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- js_acc multi filter_wrap -->
                    </div>
                </div><!-- 필터 부분 inr -->

                <!-- 패키지 상세 상품 부분 -->
                <div class="inr right">
                    <!-- 패키지 상품 정렬 부분 -->
                    <div class="option_wrap result">
                        <span class="count">
                            	${pkgSearch.country } 패키지 ${pkgCnt }개
                        </span>
                        <div class="right_cont">
                        <%-- 검색한 패키지가 있을 경우에만 정렬 ul 출력 --%>
                        	<c:if test="${pkgCnt > 0 }">
	                            <ul class="list_sort">
	                                <li class="orderli1"><a href="/pkage/searchResult${pkgSearch.getQueryString(1) }" data-order="1">구매순</a></li>
	                                <li class="orderli2"><a href="/pkage/searchResult${pkgSearch.getQueryString(2) }" data-order="2">평점순</a></li>
	                                <li class="orderli3"><a href="/pkage/searchResult${pkgSearch.getQueryString(3) }" data-order="3">높은 가격순</a></li>
	                                <li class="orderli4"><a href="/pkage/searchResult${pkgSearch.getQueryString(4) }" data-order="4">낮은 가격순</a></li>
	                            </ul>
                            </c:if>
                        </div>
                    </div><!-- option_wrap result -->

                    <!-- 상품 패키지 설명부분 및 상세 부분 -->
                  <c:if test="${pkgCnt > 0 }">
                    <div class="prod_list_wrap">
                        <ul class="type">
                        	<c:forEach var="pkageDTORm" items="${pkageDTORmlist }" varStatus="status">
	                            <li>
	                                <div class="inr img">
	                                	<%-- 패키지 이미지 --%>
	                                    <img src="${pkageDTORm.pkage_imageDTOList[0].pkage_img_path }" alt="">
	                                </div>
	
	                                <div class="inr right">
	                                    <div class="tag_group">
	                                        <span class="attr">패키지</span>
	                                    </div>
	                                    <!-- 패키지이름 -->
	                                    <strong class="item_title eps3">${pkageDTORm.pkage_name }</strong>
	                                    <p class="item_text stit">${pkageDTORm.pkage_info }</p>
	                                    <p class="item_text eps2">
	                                        <span class="icn pos">${pkageDTORm.cityDTO.countryDTO.country_name }, ${pkageDTORm.cityDTO.city_name }</span>
	                                    </p>
	                                    <p class="item_text">
	                                    <!-- 패키지에 존재하는 상세들의 최소 및 최대 일 수 -->
	                                        <span class="icn cal">여행기간 
	                                        	<%-- 패키지 상세의 최소 / 최대 일 수가 담겨있는 리스트 --%>
		                                        <c:forEach var="days" items="${pkageDTORm.daysList }" varStatus="status">
		                                        	<%-- 패키지 상세의 개수가 1개 밖에 없다면 ~ 는 출력 안됨. 2개 이상일 경우에만 리스트 내용물의 개수가 2개가 됨. --%>
		                                        	<c:if test="${status.index == 1 }">~</c:if>  
		                                        	${days }	
		                                        </c:forEach>
	                                                                                          일</span>
	                                    </p>
	                                    <%-- 평점, 리뷰 개수 --%>
	                                    <div class="item_group">
	                                        <span class="icn star">${pkageDTORm.pkage_score }</span>
	                                        <span class="icn balloon">${pkageDTORm.reviewCnt }</span>
	                                    </div>
	                                    <div class="price_group">
	                                    	<%-- 패키지 상세 중 최소 가격 --%>
	                                        <strong class="price">
	                                            ${pkageDTORm.minPrice }
	                                            <span>원~</span>
	                                        </strong>
	                                    </div>
	                                    <div class="btn_wrap">
		                                    <button class="btn-like">
		                                    <%-- 로그인한 회원이 찜을 한 패키지인지 여부 --%>
		                                    <c:if test="${pkageDTORm.basket_id eq null }">
		                                    	<span class="btn-like-span material-symbols-outlined-empty" data-id="${pkageDTORm.pkage_id }">favorite</span>
		                                    </c:if>
	                                        <c:if test="${pkageDTORm.basket_id ne null }">
	                                        	<span class="btn-like-span material-symbols-outlined-filled" data-id="${pkageDTORm.pkage_id }">favorite</span>
	                                        </c:if>
	                                        </button>
                                        </div>
	                                    <div class="btn_wrap">
	                                        <a href="#none" class="btn arrow">판매상품보기</a>
	                                    </div>
	                                </div> <!-- inr right -->
	
	                                <!-- 상품 상세 (실제 상품 부분) -->
	                                <div class="sub_list_wrap" style="display: none;">
	                                    <div class="cont_unit">
	                                    	<%-- 패키지 상세 개수 --%>
	                                        <div class="option_wrap result">
	                                            <span class="count">총 ${pkageDTORm.pkgDetailCnt }개</span>
	                                        </div>
	                                        <div class="prod_list_wrap">
	                                            <ul class="type">
	                                            	<c:forEach var="pkgDetail" items="${pkageDTORm.pkage_detailDTOList }">
	                                            		<%-- 패키지 ID / 패키지 상세 ID --%>
		                                                <li data-pkgId="${pkageDTORm.pkage_id }" data-pkgDetailId="${pkgDetail.pkage_dt_id }">
		                                                    <div class="inr">
		                                                    	<%-- 패키지 상세 테마 --%>
		                                                        <div class="tag_group">
		                                                            <span class="attr">${pkgDetail.pkage_dt_thema }</span> 
		                                                        </div>
		                                                        <%-- 패키지 상세 이름 --%>
		                                                        <strong class="item_title eps3">${pkgDetail.pkage_dt_name }
		                                                        	<%-- 현재 로그인한 회원이 예약한 상품인지 여부 --%>
		                                                        	<c:if test="${pkgDetail.pkage_rv_id ne null}"><span class="reserved">내가 예약한 상품</span></c:if>
		                                                        </strong>
		                                                        
		                                                        <p class="item_text">
		                                                        	<!-- 항공 일정이 있을 때만 항공정보 불러오기 -->
		                                                       		<c:if test="${not empty pkgDetail.pkage_flightScheDTOList[1]}">
			                                                            <span class="air_name">
			                                                                <span class="air_img">
			                                                                	<!-- (출발)항공 사진 불러오기 -->
			                                                                    <img src="${pkgDetail.pkage_flightScheDTOList[0].air_ScheduleDTORM.airlineDTO.air_picture }">
			                                                                </span>
			                                                                <!-- 출발 항공 불러오기 -->
			                                                                	<c:forEach var="flightScheDTO" items="${pkgDetail.pkage_flightScheDTOList }"> 
			                                                                		<c:if test="${flightScheDTO.pkage_flight_gubun == 0 }">
			                                                                			${flightScheDTO.air_ScheduleDTORM.airlineDTO.air_name }
			                                                                		</c:if>
			                                                                	</c:forEach>,
			                                                            </span>
		                                                            </c:if>
		                                                            <!-- 패키지 인원 - 패키지 예약인원 -->
		                                                            <span>잔여 ${pkgDetail.pkage_dt_cnt - pkgDetail.pkage_dt_Rcnt }석</span>
		                                                            <c:if test="${pkgDetail.pkage_dt_cnt-pkgDetail.pkage_dt_Rcnt == '0' }"><span class="reserv_impossible">예약불가</span></c:if>
		                                                        </p>
		                                                        <p class="item_text air_info">
		                                                        	<!-- 출발 / 도착 날짜 적어주기 -->
			                                                            <span>
				                                                            <fmt:formatDate value="${pkgDetail.pkage_dt_startDay }" pattern="yyyy.MM.dd HH:mm"/>
				                                                            <span>(${pkgDetail.startYoil })</span>
				                                                            &emsp;->&emsp;
			                                                            </span>
			                                                            <span>
			                                                            	<fmt:formatDate value="${pkgDetail.pkage_dt_endDay }" pattern="yyyy.MM.dd HH:mm"/>
			                                                            	<span>(${pkgDetail.endYoil })</span>
			                                                            </span>
			                                                        <%-- ?박 ?일 --%>
		                                                            <span class="info">${pkgDetail.day-1 }박${pkgDetail.day }일</span>
		                                                        </p>
		                                                        <p class="item_text note">
		                                                        	<%-- 호텔 숙박은 무조건 있기 때문에 그냥 하드코딩함 --%>
		                                                            <span class="info">호텔 숙박,</span>
		                                                            <span class="info">
		                                                            	<c:if test="${pkgDetail.pkage_dt_Gname ne null}">가이드 있음</c:if>
		                                                            	<c:if test="${pkgDetail.pkage_dt_Gname eq null}">가이드 없음</c:if>
		                                                            </span>
		                                                        </p>
		                                                    </div>
		                                                    <!-- 가격 / 상세 상품 보기 버튼 -->
		                                                    <div class="inr right">
		                                                        <div class="price_group">
		                                                            <div><strong class="price">${pkgDetail.pkage_dt_Aprice }<span>원</span></strong></div>
		                                                        </div>
		                                                        <div class="btn_wrap">
		                                                            <button type="button" class="btn pkgDetail">상세일정보기</button>
		                                                        </div>
		                                                    </div>
		                                                </li>
	                                                </c:forEach>
	                                            </ul>
	                                        </div>
	                                    </div><!-- cont_unit -->
	                                </div><!-- sub_list_wrap -->
	                            </li>
                            </c:forEach>
                        </ul> <!-- type -->
                    </div> <!-- prod_list_wrap -->      

                    <!-- 페이지 네비게이션 부분 -->
                    <div class="paginate_wrap">
                        <div class="paginate">
                            <div>
                            	<c:if test="${ph.showPrev }">
                                	<a href="/pkage/searchResult${pkgSearch.getQueryString(ph.beginPage-1, 10) }" class="direction prev">이전</a>
                                </c:if>
                                <span>
                                    <c:forEach var="i" begin="${ph.beginPage }" end="${ph.endPage }">
                                    	<c:if test="${i == pkgSearch.page }">
                                    		<a href="/pkage/searchResult${pkgSearch.getQueryString(i, 10) }"><strong>${i }</strong></a>
                                    	</c:if>
                                    	<c:if test="${i != pkgSearch.page }">
                                    		<a href="/pkage/searchResult${pkgSearch.getQueryString(i, 10) }">${i }</a>
                                    	</c:if>
                                    	
                                    </c:forEach>
                                </span>
                                <c:if test="${ph.showNext }">
                                	<a href="/pkage/searchResult${pkgSearch.getQueryString(ph.endPage+1, 10) }" class="direction next">다음</a>
                                </c:if>
                            </div>
                        </div>
                    </div><!-- paginate_wrap -->
				</c:if>
				
				<c:if test="${pkgCnt == 0 }">
                    <!-- 만약 상품이 아예 없을 때 (페이지 네비게이션 display none 으로 만들어라)-->
                    <div class="data_no type">
                        <div class="cont">
                            <strong>검색 결과가 없습니다.</strong> 
                            <span>필터를 변경해보거나, 다른 날짜를 검색해보세요</span>
                        </div>
                    </div>
                </c:if>
                </div><!-- inr right -->
            </div><!-- ly_wrap result_wrap -->
        </div> <!-- pk_contents -->
    </div> <!-- pk_container -->

<script>
<%-- url 만드는 함수 - 사용 안함.. (자바단에서 쿼리스트링 만드는 걸로 바꿈) --%>
function makeURL(order) {
	/* 패키지를 클릭해서 검색결과가 나올 때와, 검색해서 검색결과가 나올때를 구분해주기 위함..(패키지 클릭 시는 pkage_id가 딸려옴) */
	let pkage_id = '${pkgSearch.pkage_id}';
	let tmp = '${toURL}';
	tmp += '?pkage_gubun=${pkgSearch.pkage_gubun}';
	tmp += '&toDesti=${pkgSearch.toDesti}';
	tmp += '&dates_start_check=${pkgSearch.dates_start_check}';
	tmp += '&order='+order;
	if(pkage_id != '') tmp += '&pkage_id=${pkgSearch.pkage_id}';

	return tmp;
}

/* 정렬 li에 on class 부여 */
let orderli = '${orderli}';
if(orderli == '1') $('li.orderli1').addClass('on')
else if(orderli == '2') $('li.orderli2').addClass('on')
else if(orderli == '3') $('li.orderli3').addClass('on')
else if(orderli == '4') $('li.orderli4').addClass('on')

/* 선택되었던 필터에  checked 부여 */
let chk_price = '${pkgSearch.minAmt}|${pkgSearch.maxAmt}'
let chk_term = '${pkgSearch.chk_term}'
let chk_time = '${pkgSearch.chk_time}'

$(function() {
	<%-- 필터 input 들을 돌면서 선택되었던 필터에  checked 부여 --%>
	$('.inpt_checkbox').each(function(index, item) {
		let value = $(item).attr('value')
		
		if(value == chk_price || value == chk_term || value == chk_time) {
			$(item).prop('checked', true);
		}
	});
});


	/* 필터 가격 부분 화살표 및 active class 부여 */
	let daylist = $('.header'); // 각 일정의 a태그
	$(daylist).on('click', function(e) {
	    e.preventDefault(); // 이벤트를 취소할 때 사용하는 메서드, 클릭 이벤트를 취소하여 페이지 이동을 막을 수 있습니다.
	    let viewDiv = $(this).siblings('div.view'); // 안에 있는 내용 div
	    
	    if(!$(this).hasClass('active')) {
	        $(this).addClass('active');
	        viewDiv.css('display', 'block');
	    } else {
	        $(this).removeClass('active');
	        viewDiv.css('display', 'none');
	    }
	});    

	<%-- 사용 안됨.. 자바단에서 선택한 order 가져와서 class 부여하는 걸로 바꿈 --%>
	/* 정렬 li 눌렀을 때 on 클래스 부여 및 해제 */
	let liOn = $('.list_sort li');
	$(liOn).on('click', function(e) {
		let aTag = $(this).children('a'); // li 내의 a 태그
		let order = aTag.attr('data-order'); // a 태그 내의 order 값
	
	    /* if(!$(this).hasClass('on')) {
	        $(liOn).not(this).removeClass('on');
	        $(this).addClass('on');
	    }  */
		
	    let url = makeURL(order);
	    // let url = ${toURL}; 
	  	// aTag.attr('href', url);
	})
	
	/* 필터 input 태그를 눌렀을 때 */
	$('.inpt_checkbox').on('click', function() {
		let inputName = $(this).attr('name'); // input 태그의 name
		
		// 같은 종류의 필터 input 을 동시에 2개 선택되게 하지 못하도록 하기 위한 작업
		// 같은 종류의 필터에서 이미 checked 된 것이 있는 것인지를 체크하는 것.
		let inputTag = $('input[name="'+inputName+'"]'); // name 에 맞는 input 태그들
		
		// 지금 클릭한 input 태그 외에 태그들 중 checked 된 것이 있으면 해제시키고, 클릭한 것만 check 되게 함.
		$(inputTag).not(this).each(function(index, item) {
			if($(item).is(':checked')) {
				$(item).prop('checked', false);
			}
		});
		
		let tmp = "";
		// 필터 input 들 중 checked 된 것들 가져오기
		$('.inpt_checkbox').each(function(index, item) {
			if($(item).prop('checked')) {
				let name = $(item).attr('name');
				let value = $(item).attr('value');
				
				let arr = [];
				// 가격 필터 value 값 나눠서 보내기 ( 두 값을 보내야 하는 것(가격,시간)과 하나의 값(기간)만 보내야 하는 것들을 나눠서 처리)
				// 가격 필터 value 에는 | 값이 들어 있음
				if(value.includes('|') == true) {
					<%-- |400, 400| 처럼 값을 | 을 기준으로 1개만 놔도 | 기준으로 나누기 때문에 arr의 길이가 2가 된다. --%>
					arr = value.split('|'); 
					console.log("length="+arr.length);
					
					for(let i = 0 ; i < arr.length; i++) {
						if(i == 0) {
							tmp += arr[i] != '' ? '&minAmt='+arr[i] : '';
						} else if(i == arr.length-1) {
							tmp += arr[i] != '' ? '&maxAmt='+arr[i] : '';
						}
					}
				} else { // 가격 이외의 필터 조건들은 그냥 보내기
					tmp += '&'+name+'='+value;
				}
			}
		});
		// 체크된 것들을 쿼리 스트링으로 만들어서 전달
		let url = '${pkgSearch.getQueryString()}'+tmp;
		console.log(url);
		
		location.href='/pkage/searchResult'+url;
		
	});

	/* 찜 하트 변경 script 부분 (구글 font-icons 활용) */
	/* 찜이 되어있으면 꽉찬 하트, 안되어있으면 빈 하트로 초기화 시켜주는 로직은 위쪽에서 JSTL 태그로 처리함  */
	/* $('.btn-like-span').addClass("material-symbols-outlined-empty"); */


    $('.btn-like').on('click', function() {
    	let likeSpan = $(this).children('.btn-like-span'); <%-- favorite span 태그 --%>
    	let pkage_id = likeSpan.attr("data-id"); <%-- 클릭한 span 태그의 패키지 ID 값 --%>
    	
    	console.log(pkage_id);
    	/* 빈 하트로 변경 - 찜 해제 */
        if(likeSpan.hasClass('material-symbols-outlined-filled')) {
        	// 찜 해제 ajax
        	$.ajax({
        		url:'/pkageRest/basket/'+pkage_id,
        		type: 'DELETE',
        		dataType: 'text',
        		success: function(data) {
        			if(data == 'LOGIN_NO') {
        				alert("로그인 후 찜을 해제할 수 있습니다.");
        			} else if(data == 'DEL_OK') {
        				alert("선택하신 패키지의 찜이 해제되었습니다.");
        				
        				likeSpan.removeClass("material-symbols-outlined-filled");
        				likeSpan.addClass("material-symbols-outlined-empty");
        			}
        		},
        		error: function(err) { console.log(err) }
        	});// 찜 해제 ajax
        } 
        /* 꽉 찬 하트로 변경 - 찜 하기 */
        else {
        	// 찜 하기 ajax
        	$.ajax({
        		url:'/pkageRest/basket/'+pkage_id,
        		type: 'POST',
        		dataType: 'text',
        		success: function(data) {
        			if(data == 'LOGIN_NO') {
        				alert("로그인 후 찜을 할 수 있습니다.");
        				location.href="/member/loginForm?toURL=${redirectURL}"
        			} else if(data == 'INSERT_OK') {
        				alert("선택하신 패키지가 찜되었습니다.");
        				
        				likeSpan.removeClass("material-symbols-outlined-empty");
        				likeSpan.addClass("material-symbols-outlined-filled");
        			}
        		},
        		error: function(err) { console.log(err) }
        	});// 찜 하기 ajax
        }
    }); 

	/* 상품상세보기 버튼 눌렀을 때 */
	let detailAtag = $('.btn.arrow');
	$(detailAtag).on('click', function(e) {
	    e.preventDefault(); <%-- a 태그 이벤트 막기 --%>
	
	    // 버튼을 감싸고 있는 부모 div 의 형제인 상품 상세 박스
	    let detailProdBox = $(this).parents('.inr.right').siblings('.sub_list_wrap')
	    $(detailProdBox).toggle(); <%-- show() & hide() --%>
	});

	/* 상세일정보기 버튼 눌렀을 때 (진짜 상품으로 가는 버튼) */
	let pkgDetailBtn = $('.btn.pkgDetail');
	$(pkgDetailBtn).on('click',function() {
		// 자신을 포함한 조상 요소 중에서 전달받은 선택자에 해당하는 요소의 집합에서 가장 첫 번째 요소를 선택
		let pkage_id = $(this).closest('li').attr('data-pkgId') 		// 패키지ID
		let pkage_dt_id = $(this).closest('li').attr('data-pkgDetailId')	// 패키지 상세ID
		
		console.log(pkage_id, pkage_dt_id);
		
		location.href="/pkage/detail?pkage_id="+pkage_id+"&pkage_dt_id="+pkage_dt_id;
	})
</script>
</body>
</html>