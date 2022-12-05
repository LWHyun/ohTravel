<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container>.inr {
	width: 1200px;
	margin: 50px auto 0;
}

.contents {
	min-height: 5400px;
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
	border-right-color: black;
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

#ticket {
	color: #5e2bb8;
}

.right_cont {
	float: right;
}

.list_sort li {
	margin-left: 20px;
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


</style>
</head>
<body>
	<div class="js_tabs type1 no_division">
		<ul class="tabs sort">
			<li class="item01"><button id="all" class="item02">전체</button></li>
	        <li class="item"><button id="pkage" class="item02">패키지</button></li>
	        <li class="item03"><button id="hotel" class="item02">호텔/펜션</button></li>
	        <li class="item04 selected"><button id="ticket" class="item02">투어/입장권</button></li>
		</ul>
	</div>
	<div>
		<div class="ly_wrap result_wrap">
			<div class="inr right">
				<div class="option_wrap result">
					<span class="count">투어/입장권<em>(${ticketListCount})</em></span>
					<div class="right_cont">
						<ul class="list_sort">
							<li><a href="#">구매순</a></li>
							<li><a href="#">평점순</a></li>
							<li><a href="#">높은 가격순</a></li>
							<li><a href="#">낮은 가격순</a></li>
						</ul>
					</div>
				</div>
				<div class="prod_list_wrap">
					<ul class="type">
						<c:forEach var="ticketList" items="${ticketList}" begin="0" end="3">
			              <li>
			                <div>
			                  <div class="inr img">
			                    <img src="${ticketList.ticket_rep_img_path }">
			                  </div>
			                  <div class="inr right route_type">
			                    <strong class="item_title eps2">${ticketList.ticket_name }</strong>
			                    <p class="item_text stit"><p>
			                    <div class="price_group">
			                      <strong class="price now">${ticketList.ticket_adult_price}<span>원</span></strong>
			                    </div>
			                    <div class="btn_wrap">
			                      <a href="/ticket/exhibitionDetail" class="btn arrow">상세보기</a>
			                    </div>
			                  </div>
			                </div>
			              </li>
			             </c:forEach>
					</ul>
				</div>
				<div class="paginate_wrap" style="">
					<div class="paginate type2">
						<div>
							<c:if test="${page.startPage > page.pageBlock }">
								<a href="search/searchResultTicket?search_word=${search_word}&currentPage=${page.startPage - page.pageBlock }" class="direction prev">[이전]</a>
							</c:if>
							<c:forEach var="i" begin="${page.startPage }" end="${page.endPage }">
								<a href="search/searchResultTicket?search_word=${search_word}&currentPage=${i}" class="current_page">[${i}]</a>
							</c:forEach>
							<c:if test="${page.startPage < page.pageBlock }">
								<a href="search/searchResultTicket?search_word=${search_word}&currentPage=${page.startPage + page.pageBlock }" class="direction next">[다음]</a>
							</c:if>
						</div>
					</div>
					<!---->
				</div>
				<!---->
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script type="text/javascript">
	
	$(function() {
		$('.item02').click(function() {
			let gubun = $(this).attr('id');
			console.log(gubun);
			$.ajax({
				url: '/searchCategoryAjax',
				data: {'search_word' : $('#search_word').val(),
						'gubun' : gubun},
				dataType: 'html',
				success: function(data) {
					$('.no_division').empty();
					$('.empty_here').empty();
					$('.no_division').html(data)
				}
			})
		});
	})

</script>
</html>