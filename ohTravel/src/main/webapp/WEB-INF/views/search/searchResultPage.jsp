<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pkage/package_detail.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pkage/package_searchResult.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pkage/package_clear.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pkage/data_no.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container>.inr {
	width: 1200px;
	margin: 50px auto 0;
}

.contents {
	min-height: 1000px;
}

.text_wrap.line.top {
	padding-bottom: 18px;
	margin-bottom: 18px;
}

.text_wrap.type.top {
	margin: 0 0 20px;
}

.text_wrap.big {
	margin-top: 60px;
	margin-bottom: 30px;
}

.text_wrap.line {
	border-bottom: 1px solid #ddd;
	padding-bottom: 10px;
}

.text_wrap.type {
	display: table;
	width: 100%;
}

.text_wrap {
	position: relative;
	margin: 40px 0 0;
	padding: 0;
}

.text_wrap.line.top strong.tit {
	font-size: 24px;
	font-weight: normal;
	margin-bottom: 20px;
}

strong.tit {
	display: table-cell;
	vertical-align: middle;
}

.related_search {
	font-size: 13px;
	color: #666;
	margin: 0 0 35px;
}

.related_search .tit {
	color: #333;
	display: inline-block;
}

ul, li {
	list-style: none;
}

a {
	color: #333;
	text-decoration: none;
}

.related_search ul {
	margin-left: 5px;
}

.related_search ul, .related_search li {
	display: inline-block;
	margin-left: 18px;
}

.js_tabs {
	position: relative;
	margin-bottom: 40px;
}

.tabs {
	overflow: hidden;
	padding-left: 0;
}

.js_tabs.no_division>.tabs.sort>li.item01 {
	width: 120px;
}

.js_tabs.no_division>.tabs.sort>li.item02 {
	width: 120px;
}

.js_tabs.no_division>.tabs.sort>li.item03 {
	width: 120px;
}

.js_tabs.no_division>.tabs.sort>li.item04 {
	width: 120px;
}

.js_tabs.no_division>.tabs.sort>li.item05 {
	width: 120px;
}

.js_tabs.no_division>.tabs.sort>li.item06 {
	width: 120px;
}

.type1 .tabs>li {
	height: 62px;
	line-height: 62px;
}

.type1 .tabs>li {
	display: table;
	height: 52px;
	line-height: 52px;
	border-width: 1px 0 0 1px;
	border-color: #ddd;
	border-style: solid;
	background-color: #fff;
	border-bottom: 1px solid black;
}

.tabs>li {
	float: left;
	position: relative;
	text-align: center;
	z-index: 1;
}

.type1 .tabs>li.selected {
	border-color: #111;
	border-right: 1px solid #111;
	border-bottom: none;
	color: #5e2bb8;
}

.type1 .tabs>li.selected:after {
	background-color: #fff;
	left: 0;
	right: 0;
}

.type1 .tabs>li:after {
	height: 1px;
	background-color: #111;
}

.tabs>li:after {
	content: '';
	position: absolute;
	bottom: 0;
}

.tabs>li.selected {
	border-color: #5e2bb8;
	border-left: 1px solid #5e2bb8;
	z-index: 2;
}

.tabs>li+li {
	border-left: none;
}

.type1 .tabs>li:last-child {
	border-right: 1px solid black;
}

.ly_wrap {
	width: 100%;
}

.result_wrap>.inr {
	width: 240px;
}

.ly_wrap .inr {
	width: 240px;
	float: left;
}

.js_acc.filter_wrap {
	margin-top: 0;
}

.js_acc {
	border-top: 1px solid #eaeaea;
}

.js_acc.filter_wrap .inr {
	float: none;
	width: 100%;
	padding-bottom: 9px;
	border-bottom: 1px solid #eaeaea;
}

.js_acc.filter_wrap .header {
	padding: 25px 25px 16px 0;
	border-bottom: none;
	font-size: 15px;
	font-weight: 600;
}

.js_acc .header {
	display: block;
	position: relative;
	border-bottom: 1px solid #eaeaea;
	padding: 20px;
	color: #111;
}

.js_acc.filter_wrap .header:after {
	top: 26px;
	right: 0;
	width: 14px;
	height: 10px;
	background-position: -178px -30px;
}

.js_acc .header:after {
	width: 20px;
	height: 20px;
	background-position: -143px -52px;
	position: absolute;
	top: 20px;
	right: 20px;
}

.js_acc.filter_wrap .view {
	border: none;
	padding: 0 0 12px;
}

.js_acc .view {
	display: none;
	padding: 20px;
	border-bottom: 1px solid #eaeaea;
	line-height: 24px;
}

.form_holder.text {
	margin: 4px 4px 4px 0;
}

span.form_holder {
	display: inline-block;
	margin-right: 20px;
}

.form_holder {
	position: relative;
	vertical-align: top;
}

.form_holder input[type='checkbox'], .form_holder input[type='radio'] {
	position: absolute;
	top: 0;
	left: 0;
	opacity: 0 !important;
}

button, input, textarea {
	-webkit-border-radius: 0;
	border-radius: 0;
}

.form_holder.text label {
	z-index: 1;
}

.form_holder.text label {
	padding: 5px 10px;
	border: 1px solid #c2c2c2;
	border-radius: 3px;
	background-color: #fff;
	font-size: 13px;
	cursor: pointer;
}

.label_checkbox, .label_radio {
	position: relative;
	display: block;
	line-height: 20px;
	color: #333;
	padding-left: 34px;
	min-height: 24px;
}

.js_acc.filter_wrap .view .btn.gray {
	margin: 4px 0;
	height: 32px;
	line-height: 30px;
	font-size: 13px;
}

.btn.gray {
	color: #fff !important;
	border: solid 1px #5b606e;
	background-color: #5b606e;
}

.result_wrap>.inr.right {
	width: 900px;
}

.ly_wrap .inr.right {
	float: right;
}

.filter_top {
	margin-bottom: 30px;
}

.mt0 {
	display: inline-block;
	margin-top: 0px !important;
}

.filter_top .tit {
	float: left;
	width: 110px;
	padding-top: 3px;
	font-size: 17px;
}

p {
	line-height: 1.5;
}

.spr.filter {
	width: 17px;
	height: 17px;
	background-position: -58px -52px;
}

.spr, .paginate a.next, .paginate a.prev, .paginate a.prevend .paginate a.nextend {
	display: inline-block;
	content: '';
	background-repeat: no-repeat;
	background-image:
		url(https://image.hanatour.com/usr/static/img2/pc/com/spr_com.png);
}

.filter_top .tit .notice_count {
	margin-left: 4px;
	font-size: 13px;
	line-height: 24px;
	vertical-align: middle;
	width: 24px;
	height: 24px;
	background: #5e2bb8;
}

.notice_count {
	display: inline-block;
	text-align: center;
	border-radius: 50%;
	color: #fff;
}

.filter_sticky .filter_top .inr, .result_wrap .right .filter_top .inr {
	width: 790px;
	min-height: 40px;
}

.filter_top .inr {
	width: 1090px;
	float: left;
	margin-top: 20px;
}

.option_wrap.result {
	padding-bottom: 20px;
	border-bottom: 1px solid #ddd;
	color: #111;
}

.option_wrap {
	position: relative;
	padding: 0;
}

.its .option_wrap .count {
	font-size: 17px;
	color: #111;
	font-weight: normal;
}

.option_wrap .count {
	display: inline-block;
	margin-right: 20px;
	font-weight: 600;
	font-size: 15px;
	color: #111;
}

.its .option_wrap .count em {
	font-size: 15px;
}

.item02 {
	color: #333;
	border: none;
	background: white;
}

#airplane {
	color: #5e2bb8;
}

.right_cont {
	float: right;
}

.list_sort li {
	margin-left: 20px;
	margin-top: 50px;
}

.list_sort>li {
	float: left;
}

.prod_list_wrap {
	width: 100%;
}

.prod_list_wrap ul {
	padding-left: 0;
}

.prod_list_wrap>ul>li:first-child {
	margin-left: 0;
}

.prod_list_wrap .type>li {
	width: 100%;
	margin-left: 0;
	padding: 30px 0 0;
	border-bottom: 1px solid #ddd;
}

.prod_list_wrap>ul>li {
	position: relative;
	float: left;
	width: 320px;
}

.prod_list_wrap .type .inr {
	width: 200px;
	min-height: 200px;
	overflow: hidden;
	position: absolute;
	top: 30px;
	left: 0;
}

.prod_list_wrap .type .img {
	height: 200px;
}

.prod_list_wrap .img {
	width: 100%;
	height: 210px;
}

.img {
	display: inline-block;
}

.prod_list_wrap .img .group_area {
	position: absolute;
	left: 0;
	bottom: 0;
	right: 0;
	text-align: right;
	z-index: 10;
}

.prod_list_wrap .img img, .prod_thum_list .img img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.img img {
	display: block;
}

img {
	max-width: 100%;
	height: 100%;
	vertical-align: top;
}

.inr.right .prod_list_wrap .type .inr.htl {
	width: 676px;
}

.prod_list_wrap .type .inr.htl {
	position: relative;
	float: right;
	width: 976px;
	height: 230px;
	margin-right: 0;
	padding: 0 221px 0 0;
	top: 0;
}

.tag_group>span.attr {
	border: 1px solid #5b699c;
	color: #5b699c;
}

.tag_group>span+span {
	margin-left: 5px;
}

.tag_group>span {
	background: #fff;
}

.tag, .tag_group>span, .badge {
	display: inline-block;
	padding: 0 6px;
	height: 19px;
	line-height: 17px;
	font-size: 12px;
}

.prod_list_wrap .htl .item_text {
	margin-top: 2px;
}

.prod_list_wrap .item_text {
	max-height: 45px;
}

.prod_list_wrap .tag_group+.item_title, .prod_list_wrap .tag_group+.item_title2
	{
	margin-top: 8px;
}

.prod_list_wrap .item_title {
	font-size: 20px;
	color: #111;
	font-weight: 600;
	display: block;
	line-height: 30px;
}

.tag_group+.item_title {
	margin-top: 5px;
	display: block;
}

.item_title {
	font-size: 17px;
	line-height: 27px;
	color: #111;
}



.prod_list_wrap .item_title.sub {
	font-size: 13px;
	color: #888;
	margin-top: 9px;
	font-weight: normal;
	line-height: 1;
}

.prod_list_wrap .info_group {
    margin-top: 15px;
}

.prod_list_wrap .htl .item_text {
    margin-top: 2px;
}
.prod_list_wrap .info_group p {
    color: #333;
}
.prod_list_wrap .item_text {
    max-height: 45px;
    margin-top: 5px;
    color: #333;
}
.item_text {
    font-size: 14px;
    color: #333;
    line-height: 21px;
}

.item_text .icn {
    padding-left: 27px;
}
.icn.pos {
    position: relative;
    padding-left: 17px;
}
.icn {
    display: inline-block;
    position: relative;
}

.item_text .icn:before {
    position: absolute;
    left: 3px;
    top: 3px;
    width: 14px;
    height: 14px;
}
.icn.pos:before {
    position: absolute;
    left: 0;
    top: 1px;
    width: 13px;
    height: 14px;
    margin-right: 9px;
    background-position: -135px 0;
    vertical-align: middle;
}

.icn:before {
    display: inline-block;
    content: '';
    background-repeat: no-repeat;
    background-image: url(https://image.hanatour.com/usr/static/img2/pc/com/spr_icn.png);
}

.prod_list_wrap .htl .info_bottom {
    left: 0;
}
.prod_list_wrap .info_bottom {
    position: absolute;
    bottom: 30px;
    left: 224px;
    right: 0;
}

.prod_list_wrap .htl .item_group {
    margin-top: 0px;
}

.score_htl_wrap {
    position: relative;
    padding: 14px 0 0;
    line-height: 21px;
}

.score_htl_wrap .icn.star {
    color: #111;
    font-size: 14px;
    font-weight: bold;
    line-height: 16px;
    vertical-align: middle;
}

.score_htl_wrap .icn.star+.txt {
    margin-left: 5px;
}
.score_htl_wrap .txt {
    display: inline-block;
    color: #111;
    font-size: 14px;
    font-weight: normal;
    line-height: 16px;
    vertical-align: middle;
}

.txt {
	margin-bottom: 0;
}

.prod_list_wrap .htl .price_group {
    top: 30px;
}
.prod_list_wrap .type .price_group {
    position: absolute;
    top: 2px;
    right: 0;
    text-align: right;
}

.prod_list_wrap .htl .login_guide {
    display: inline-block;
    width: 140px;
    text-align: center;
    word-break: keep-all;
    padding-left: 15px;
}

.prod_list_wrap .htl .btn_wrap {
    width: auto;
}
.prod_list_wrap .htl .btn_wrap {
    position: absolute;
    right: 0;
    bottom: 30px;
    width: 170px;
    text-align: right;
}

prod_list_wrap .htl .btn.line {
    width: auto;
}

/* 페이징 */
.paginate_wrap {
    text-align: center;
    position: relative;
    margin-top: 15px;
}
.paginate_wrap .paginate {
    display: inline-block;
    margin: 0 auto;
    padding: 15px 0;
}
.paginate_wrap .paginate.type2 a, .paginate_wrap .paginate.type2 strong {
    padding: 0 7px;
}
.paginate a.prevend {
    background-position: -30px 0;
}
.paginate a.prev {
    margin: 0 15px 0 5px;
    background-position: -61px 0;
}
.paginate_wrap .paginate.type2 a, .paginate_wrap .paginate.type2 strong {
    padding: 0 7px;
}
.paginate strong {
    /* width: 37px; */
    height: 26px;
    /* padding: 0; */
    padding: 0 14px;
    color: #5e2bb8;
    text-align: center;
}
.paginate a, .paginate strong {
    display: inline-block;
    z-index: 2;
    padding: 0 14px;
    font-size: 14px;
    color: #111;
    vertical-align: middle;
    line-height: 26px;
}
.paginate a.next {
    margin: 0 5px 0 15px;
    background-position: -92px 0;
}
.paginate .direction {
    display: inline-block;
    width: 26px;
    height: 26px;
    position: relative;
    font-size: 0;
    line-height: 0;
    vertical-align: top;
    padding: 0 !important;
}
.paginate a.nextend {
    background-position: -123px 0;
}

#all {
	color: black;
}
/* 비행기 검색시 나오는 div  */
.airline{
	margin-left:10px;
}
.airline_num{
	margin-left:30px;
}
.time{
 font-weight: bold;
 font-size: 22px;
 margin-left: 15px;	
}
.step{
	color:#3399FF;
	margin-left: 15px;
}
.hour{
	margin-left: 15px;
	font_size:20px;
	color:gray;
}

.go_airplane{
	border: 1px solid gray;
	width : 800px;
	height: 125px;
    display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    align-content: center;
    justify-content: space-between;
    align-items: center;
    margin-top : 50px;
    margin-bottom: 50px;
    margin: 20px auto;
}

.go_airplane:hover{
	cursor:pointer;
}

.emoji{
	width: 70px;
	height: 30px;
}

.price{
	margin-right: 15px;
	font-size: 18px;
	font-weight: bold;
}

.reservation_check{
	margin-right:5px;
}

.text_wrap.big {
    width : 870px;
    display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    align-content: center;
    justify-content: space-between;
    align-items: center;
    margin: 20px 15px 0 0;
    margin-top: 50px;
}

.end{
	margin-right: 50px;
}

.state1{
 	display:inline-block;
	width: 70px;
	height: 40px;
	text-align: center;
	color:white;
    background-color: #1E9EED;
    border: 1px solid #1E9EED;
    padding: 0.5rem;
    vertical-align: middle;
    border-radius: 0.5rem;
    font-size: 13px;
    font-weight: bold;
}

.one_list{
	margin-top: 20px;
}

.forEach_list{
	margin-top: 20px;
}

.calendar{
	margin-left: 400px;
	font-size: 16px;
	color:#808080;
}

.list_sort{
	margin-bottom: 100px;
}

.search_type:hover{
	color:red;
	cursor:pointer;
}
</style>
</head>
<body>
                <!-- 패키지 상세 상품 부분 -->
                    <!-- 패키지 상품 정렬 부분 -->
                    <div class="option_wrap result">
                    	<div class="right_cont">
                            <ul class="list_sort">
                                <li class="search_type" data-order="1">출발시간 빠른순</li>
                                <li class="search_type" data-order="2">높은 가격순</li>
                                <li class="search_type" data-order="3">낮은 가격순</li>
                            </ul>
                   		</div>
                        
                  
	                        <div class="text_wrap big">
									<h5><strong>✈️ 가는 항공편</strong></h5>
										<c:if test="${not empty start_date1 }">
										<div class="calendar">${start_date1}
											<span class="calendar_day1"></span>
											<span class="startCity1"></span> 🔜  <span class="endCity1"></span>
										</div>
									</c:if>
									<c:if test="${not empty start_date2}">
										<div class="calendar">${start_date2}
											<span class="calendar_day1"></span>
											<span class="startCity1"></span> 🔜  <span class="endCity1"></span>
										</div>
									</c:if>	
		                        
		                    </div><!-- option_wrap result -->
		             <div class="one_list">
		             ${gubun_check}
		             <c:if test="${gubun_check == 1}">  
		             <c:forEach var="schedule" items="${schedule_list}">
							<div class="go_airplane">
								<div class="airline"><img class="airline_pic" src="${pageContext.request.contextPath}${schedule.air_picture}" width="20px" height="20px">${schedule.air_name}<br>
								<span class="airline_num">${schedule.airplane_name}</span>
								</div>
								
								<div class="go_airplane_day">
								<fmt:formatDate pattern="yyyy-MM-dd" value="${schedule.start_time}"/><br>
									<span class="time"><fmt:formatDate pattern="HH:mm" value="${schedule.start_time}"/></span><br>
									<span class="airport">${schedule.start_airport_name}</span>
								</div>
								<div>
										<span class="step">직항</span><br>
										<img class="emoji" src="${pageContext.request.contextPath}/airport/img/arro.png"><br>
										<span class="hour">${schedule.lead_time}분</span>
								</div>		
								<div class="depart_airplane_day">
									<fmt:formatDate pattern="yyyy-MM-dd" value="${schedule.end_time}"/><br>
									<span class="time"><fmt:formatDate pattern="HH:mm" value="${schedule.end_time}"/></span><br>
									<span class="airport">${schedule.end_airport_name}</span>
								</div>
								<div class="reservation_check">
									 예약가능<br>
									<span>잔여5석</span>
								</div>
								<div class="price">
									<c:if test="${seat_position == 'C'}">
									<fmt:formatNumber value="${1*schedule.schedule_price}" pattern="#,###"/>원<br>
									 </c:if>
									 <c:if test="${seat_position == 'B'}">
									<fmt:formatNumber value="${2*schedule.schedule_price}" pattern="#,###"/>원<br> 	
									 </c:if>
									 <c:if test="${seat_position == 'A'}">
									<fmt:formatNumber value="${3*schedule.schedule_price}" pattern="#,###"/>원<br>
									 </c:if>
							</div>
						</div>
				</c:forEach>
				</c:if>
				<c:if test="${gubun_check == 0}">  
		             <c:forEach var="go" items="${goList}">
							<div class="go_airplane">
								<div class="airline"><img class="airline_pic" src="${pageContext.request.contextPath}${go.air_picture}" width="20px" height="20px">${go.air_name}<br>
								<span class="airline_num">${go.airplane_name}</span>
								</div>
								
								<div class="go_airplane_day">
								<fmt:formatDate pattern="yyyy-MM-dd" value="${go.start_time}"/><br>
									<span class="time"><fmt:formatDate pattern="HH:mm" value="${go.start_time}"/></span><br>
									<span class="airport">${go.start_airport_name}</span>
								</div>
								<div>
										<span class="step">직항</span><br>
										<img class="emoji" src="${pageContext.request.contextPath}/airport/img/arro.png"><br>
										<span class="hour">${go.lead_time}분</span>
								</div>		
								<div class="depart_airplane_day">
									<fmt:formatDate pattern="yyyy-MM-dd" value="${go.end_time}"/><br>
									<span class="time"><fmt:formatDate pattern="HH:mm" value="${go.end_time}"/></span><br>
									<span class="airport">${go.end_airport_name}</span>
								</div>
								<div class="reservation_check">
									 예약가능<br>
									<span>잔여5석</span>
								</div>
								<div class="price">
									<c:if test="${seat_position == 'C'}">
									<fmt:formatNumber value="${1*go.schedule_price}" pattern="#,###"/>원<br>
									 </c:if>
									 <c:if test="${seat_position == 'B'}">
									<fmt:formatNumber value="${2*go.schedule_price}" pattern="#,###"/>원<br> 	
									 </c:if>
									 <c:if test="${seat_position == 'A'}">
									<fmt:formatNumber value="${3*go.schedule_price}" pattern="#,###"/>원<br>
									 </c:if>
							</div>
						</div>
				</c:forEach>
				</c:if>  
			</div>     
		</div>
		<!--오는 항공편  -->
		           <div class="text_wrap big">
		           				<c:if test="${gubun_check == 0 }">
									<h5><strong>✈️ 오는 항공편</strong></h5>
										<div class="calendar">${end_date}
											<span class="calendar_day2"></span>
											<span class="startCity2">${end_city_id}</span> 🔜  <span class="endCity2">${start_city_id}</span>
										</div>
		                        </c:if>
                    </div><!-- option_wrap result -->
		             <div class="one_list">
		             <c:if test="${gubun_check == 0 }">   
		             <c:forEach var="come" items="${comeList}">
							<div class="go_airplane">
								<div class="airline"><img class="airline_pic" src="${pageContext.request.contextPath}${come.air_picture}" width="20px" height="20px">${come.air_name}<br>
								<span class="airline_num">${come.airplane_name}</span>
								</div>
								
								<div class="go_airplane_day">
								<fmt:formatDate pattern="yyyy-MM-dd" value="${come.start_time}"/><br>
									<span class="time"><fmt:formatDate pattern="HH:mm" value="${come.start_time}"/></span><br>
									<span class="airport">${come.start_airport_name}</span>
								</div>
								<div>
										<span class="step">직항</span><br>
										<img class="emoji" src="${pageContext.request.contextPath}/airport/img/arro.png"><br>
										<span class="hour">${come.lead_time}분</span>
								</div>		
								<div class="depart_airplane_day">
									<fmt:formatDate pattern="yyyy-MM-dd" value="${come.end_time}"/><br>
									<span class="time"><fmt:formatDate pattern="HH:mm" value="${come.end_time}"/></span><br>
									<span class="airport">${come.end_airport_name}</span>
								</div>
								<div class="reservation_check">
									 예약가능<br>
									<span>잔여5석</span>
								</div>
								<div class="price">
									<c:if test="${seat_position == 'C'}">
									<fmt:formatNumber value="${1*come.schedule_price}" pattern="#,###"/>원<br>
									 </c:if>
									 <c:if test="${seat_position == 'B'}">
									<fmt:formatNumber value="${2*come.schedule_price}" pattern="#,###"/>원<br> 	
									 </c:if>
									 <c:if test="${seat_position == 'A'}">
									<fmt:formatNumber value="${3*come.schedule_price}" pattern="#,###"/>원<br>
									 </c:if>
								</div>
							</div>
					</c:forEach>
				</c:if>	
			</div>   
</body>		
</html>
	
