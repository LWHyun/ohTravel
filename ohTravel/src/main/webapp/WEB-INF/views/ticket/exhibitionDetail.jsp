<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- google fonts icon -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pkage/package_detail.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href=" ${pageContext.request.contextPath}/css/hotel/style.css">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script> 
</head>
<style type="text/css">
.search_field{
	border:1px;
	background: #EAEAEA;
	width: 1200px;
	height: 220px;
	margin: 0 auto;
}

.trip {
	width : 80px;
	display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    align-content: center;
    justify-content: space-between;
    align-items: center;
    margin: 0 0 15px 30px;
}

.round_trip {
	display: inline-block;
	width: 40px;
	height: 20px;
	text-align: center;
	font-size: 18px;
}
.round_trip:hover{
	text-decoration: underline;
    color:blue;
    cursor: pointer;
}
.oneway {
	
	display: inline-block;
	width: 40px;
	height: 20px;
	text-align: center;
	font-size: 18px;
	margin-left: 5px;
}
.oneway:hover{
	text-decoration: underline;
    color:blue;
    cursor: pointer;
}

.start_end {
	
	width : 1140px;
	height: 62px;
	display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    align-content: center;
    justify-content: space-between;
    align-items: center;
    margin: 0 0 15px 30px;
}

.starting {
	width:370px;
	height: 60px;
}

.ending {
	margin-right:255px;
	width:370px;
	height: 60px;
}

.date{
	width : 1140px;
	height: 62px;
	display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    align-content: center;
    justify-content: space-between;
    align-items: center;
    margin-left: 30px;
}

.dates_start_check{
	display:inline-block;
	width: 161px;
	height: 62px;
	text-align: center;
}
.dates_start_end {
	display:inline-block;
	width: 161px;
	height: 62px;
	text-align: center;
	margin-right: 40px;
}
.ppl_check {
	display:inline-block;
	width: 410px;
	height: 62px;
	text-align: center;
	margin-left: 50px;
	background: white;
	border: 1px solid black;
}

.dates_start_oneway{
	display:inline-block;
	width: 370px;
	height: 62px;
	text-align: center;
	margin-right: 40px;
}



.air_search{
	display:inline-block;
	width: 161px;
	height: 62px;
	text-align: center;
	color:white;
    background-color: #1E9EED;
    border: 1px solid #1E9EED;
    padding: 0.5rem;
    line-height: 1rem;
    border-radius: 0.5rem;
    font-size: 18px;
    font-weight: bold;
}
.air_search:hover{
	cursor: pointer;
}

/*??????  */

	.entire {
		margin-top: 60px;
	}
	.modal_wrap {
        display: none;
        width: 500px;
        height: 450px;
        position: absolute;
        top: 135%;
        left: 25%;
        margin: -250px 0 0 -250px;
        background:#eee;
        z-index: 999;
    }
    .modal_wrap2{
        display: none;
        width: 500px;
        height: 450px;
        position: absolute;
        top: 135%;
        left: 60%;
        margin: -250px 0 0 -250px;
        background:#eee;
        z-index: 999;
    }
    
    .modal_wrap3{
        display: none;
        width: 500px;
        height: 550px;
        position: absolute;
        top: 145%;
        left: 60%;
        margin: -250px 0 0 -250px;
        background:#eee;
        z-index: 999;
    }
    .black_bg{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 30000px;
        background-color:rgba(0, 0,0, 0.2);
        top:0;
        left: 0;
        z-index: 1;
    }
    .black_bg2{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 30000px;
        background-color:rgba(0, 0,0, 0.2);
        top:0;
        left: 0;
        z-index: 1;
    }
    .black_bg3{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 30000px;
        background-color:rgba(0, 0,0, 0.2);
        top:0;
        left: 0;
        z-index: 1;
    }
    
    .select_area{
    	margin-left: 30px;
    }
    
    .modal_close{
        width: 26px;
        height: 26px;
        position: absolute;
        top: -30px;
        right: 0;
    }
    .modal_close2{
        width: 26px;
        height: 26px;
        position: absolute;
        top: -30px;
        right: 0;
    }
    
    .modal_close3 {
        width: 26px;
        height: 26px;
        position: absolute;
        top: -30px;
        right: 0;
    }
    
    .modal_close> span{
        display: block;
        width: 100%;
        height: 100%;
        background:url(https://img.icons8.com/metro/26/000000/close-window.png);
        text-indent: -9999px;
    }
    
    .modal_close2> span{
        display: block;
        width: 100%;
        height: 100%;
        background:url(https://img.icons8.com/metro/26/000000/close-window.png);
        text-indent: -9999px;
    }
    
    .modal_close3> span{
        display: block;
        width: 100%;
        height: 100%;
        background:url(https://img.icons8.com/metro/26/000000/close-window.png);
        text-indent: -9999px;
    }
    .modal_close_country{
    	border: 1px solid black;
    	width : 400px;
		display: flex;
	    flex-direction: row;
	    flex-wrap: nowrap;
	    align-content: center;
	    justify-content: space-between;
	    align-items: center;
	    margin-left: 30px;
	    margin-top: 10px;
    }
    .modal_close_country_1{
    	border-right: 1px solid black;
    }
    
    .modal_close_country_1 > ul > li  {
    	/* border: 1px solid gray; */
    	border-collapse:collapse;
     	width:200px;
     	height: 60px;
     	list-style: none;
     	display:inline-block;
     	margin-left: 10px;
     	
  
    }
    ul {
    	padding-left: 0px;
    	list-style: none;
    }
    
    .modal_close_country_2{
    	width:200px;
    }
    .modal_close_country_2 > ul > li {
    	border-collapse:collapse;
    	display:inline-block;
     	width:200px;
     	height: 53px;
     	list-style: none;
     	text-align: center;
     	margin-right: 10px;
     	
    }
    
     #a {
    	cursor: pointer;
		
    }
    
     #a:hover {
    	color:red;
    }
    
	/* ?????? ?????? ?????? ?????? */
	.member_count {
	    min-height: 50px;
	}
	
	.member_count_entire {
		margin-top: 40px;
		margin-left: 20px;
	}
	
	.ppl_select{
		margin-left: 7px;
		font-size: 20px;
		
	}
	
	.seat_select{
		margin-left: 7px;
		font-size: 20px;
	}
	.member_count ul {
	    margin: 0;
	}
	.member_count ul li {
	    height: 39px;
	}
	.member_count li:not(:first-child) {
	    margin-top: 30px;
	}
	p {
	    line-height: 1.5;
	}
	.member_count .tit {
	    float: left;
	    width: 55%;
	    margin: 0;
	    color: #111;
	    margin-top: 10px;
	}
	.member_count p.tit {
	    text-align: left;
	    font-size: 14px;
	    color: #333;
	}
	span.txt {
	    position: relative;
	}
	.member_count .tit .txt {
	    margin: 0;
	    font-size: 13px;
	    line-height: 1;
	    top: -3px;
	}
	.member_count p.tit .txt {
	    text-align: left;
	    font-size: 13px;
	    color: #888;
	    top: 0;
	    left: 10px;
	}
	.member_count .price {
	    display: block;
	    font-size: 17px;
	    font-weight: 600;
	    line-height: 1;
	}
	
	/* ?????? */
	button {
	    background-color: #fff;
	    font-family: Noto Sans KR,sans-serif;
	}
	.num_count_group {
	    display: inline-block;
	    width: 114px;
	    height: 38px;
	    border: 1px solid #c3c3c3;
	    border-radius: 2px;
	    margin-top: 10px;
	}
	.num_count_group button:after {
	    width: 26px;
	    height: 27px;
	}
	.num_count_group .btn_decrement:after {
	    display: inline-block;
	    content: '';
	    background-image: url(http://localhost:8399/img/pkage/icon/icon_minus.png);
	    background-repeat: no-repeat;
	    background-position: 0px 0px;
	}
	.num_count_group .btn_increment:after {
	    display: inline-block;
	    content: '';
	    background-image: url(http://localhost:8399/img/pkage/icon/icon_plus.png);
	    background-repeat: no-repeat;
	    background-position: 0px 0px;
	}
	
	/* ?????? ?????? */
	.num_count_group button {
	    float: left;
	    width: 35px;
	    height: 36px;
	    padding: 5px 5px 4px;
	}
	.num_count_group .btn_decrement {
	    border: none;
	    border-right: 1px solid #ddd;
	    border-bottom: 1px solid #ddd;
	}
	.num_count_group .btn_decrement:hover {
	    cursor: pointer;
	}
	
	/* ?????? ????????? */
	.num_count_group .inpt_counter {
	    float: left;
	    display: block;
	    font-size: 15px;
	    color: #111;
	    width: 33px;
	    height: 36px;
	    line-height: 34px;
	    text-align: center;
	    margin: 0 4px;
	}
	
	/* ??? ?????? */
	.num_count_group .btn_increment {
	    float: right !important;
	    border: none;
	    border-left: 1px solid #ddd;
	    border-bottom: 1px solid #ddd;
	}
	.num_count_group .btn_increment:hover {
	    cursor: pointer;
	}
	
	
	/* member_count float ???????????? */
	.member_count:after {
	    display: block;
	    clear: both;
	    content: '';
	}
	
	
	.select_complete{
		border: 1px solid #5E2BB8;
		background: #5E2BB8;
		width: 130px;
		height: 36px;
		color: white;
		text-align: center;
		line-height: center;
		margin-left: 300px;
		font-size: 20px;
	}
	.select_complete_text:hover {
		cursor: pointer;
		color:red;
	}

	/* ?????? ?????? ?????? */
	.product-detail-view .product-top .info-flex .product-info {
	    position: relative;
	    padding: 88px 90px 60px;
	}
	



	
	/* ??????,,, (????????? ??????... ?????? ???????????????) */
	.rate-wrap {
	    border-top: 1px solid #ccc;
	    border-bottom: 1px solid #ccc;
	    height: 60px;
	    display: -webkit-box;
	    display: -ms-flexbox;
	    display: flex;
	    -webkit-box-align: center;
	    -ms-flex-align: center;
	    align-items: center;
	    color: #666;
	    translate: 0 20px;
	}
	
	/* features ?????? ??????(?) */
	.features {
		padding: 18px 0;
	    border-bottom: 1px solid #ccc;
	    margin: 0 0 26px -4px;
	}
	
	.features ul li {
	    position: relative;
	    display: inline-block;
	    width: 48%;
	    font-size: 13px;
	    font-weight: 700;
	    color: #666;
	    padding: 10px 7px 13px 10px;
	    box-sizing: border-box;
	    vertical-align: top;
	    line-height: 18px;
	}
	
	.features .icon[data-v-4c0980f3] {
	    position: absolute;
	    left: 0;
	    top: 12px;
	    width: 35px;
	    font-size: 24px;
	    color: #999;
	}
	
	/* ?????? ???????????? ???????????? ?????? */
	.selected-default {
	    padding: 45px 0;
	    text-align: center;
	}
	
	.selected-default p {
	    line-height: 1.6;
	    color: #666;
	    margin-bottom: 15px;
	}
	.selected-default button {
	    font-weight: 400;
	}		
	.el-button--info, .el-button--info:active {
	    background-color: #666;
	}
	.el-button--info {
	    color: #fff;
	}
	.el-button--medium, .el-button--small {
	    min-width: 80px;
	    height: 35px;
	    line-height: 35px;
	    padding: 0 18px;
	    font-size: 13px;
	    font-weight: 700;
	    border-top-left-radius: 7px;
	    border-top-right-radius: 7px;
	    border-bottom-right-radius: 7px;
	    border-bottom-left-radius: 7px;
	}
	
	.product-detail-view .floating-selected-result {
	    bottom: 0;
	    width: 340px;
	    float: right;
	    padding-top: 70px;
	    margin-right: calc(50% - 620px);
	    border-left: 1px solid #ccc;
	    border-right: 1px solid #ccc;
	    z-index: 7;
	}
	
	.product-detail-view .floating-selected-result .amount {
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    flex-flow: wrap;
	    padding: 0 30px;
	    height: 82px;
	    border-top: 2px solid #999;
	    background-color: #fff;
	}
	
	/* ??? ?????? ?????? */
	.product-detail-view .floating-selected-result .amount p {
	    -webkit-box-flex: 1;
	    -ms-flex: 1;
	    flex: 1;
	    text-align: right;
	    font-size: 24px;
	    font-weight: 700;
	    color: #f06c5e;
	}
	
	.product-detail-view .btn-order-group {
	    opacity: 1;
	    position: absolute;
	    bottom: 0;
	    right: -20px;
	    width: 340px;
	    margin-left: -1px;
	    height: 70px;
	    background-color: #f06c5e;
	    overflow: hidden;
	    transition: opacity .3s;
	}
	
	/* ?????? css */
	.product-detail-view .btn-order-group button.btn-cart {
	    width: 70px;
	    border-right: 1px solid #f28478;
	    outline: none;
	}
	
	.product-detail-view .btn-order-group button, .product-detail-view .btn-order-group button .icon {
	    color: #fff;
	}
	
	.blind {
	    overflow: hidden;
	    position: absolute;
	    top: 0;
	    left: 0;
	    width: 1px;
	    height: 1px;
	    font-size: 0px;
	    line-height: 0;
	}
	
	.product-detail-view .btn-order-group button.btn-cart .icon {
	    display: inline-block;
	}	
	
	.product-detail-view .btn-order-group button .icon.cart {
	    font-size: 26px;
	    margin-top: 4px;
	}		
	
	.product-detail-view .btn-order-group button[class*=reservation] {
	    font-weight: 700;
	    font-size: 15px;
	    height: 70px;
	    vertical-align: top;
	}
	
	.product-detail-view .product-detail-menu-wrap {
	    position: static;
	    width: 1280px;
	    height: 70px;
	    bottom: 0;
	    left: 0;
	    right: 0;
	    z-index: 8;
	}	
	
	.product-detail-view .product-detail-menu {
	    width: 100%;
	    height: 70px;
	    line-height: 70px;
	    background-color: #fff;
	    border-top: 1px solid #ccc;
	    position: absolute;
	    box-shadow: 0 10px 15px rgb(0 0 0 / 3%);
	    z-index: 10;
	}
	
	.el-tabs__item {
	    position: relative;
	    height: 70px;
	    line-height: 70px;
	    color: #666;
	    font-weight: 600;
	    font-size: 15px;
	}
	
	.el-tabs__active-bar {
	    background-color: #f06c5e;
	}
	
	.resize-triggers, .resize-triggers > div, .contract-trigger:before {
	    content: " ";
	    display: block;
	    position: absolute;
	    top: 0;
	    left: 0;
	    height: 100%;
	    width: 100%;
	    overflow: hidden;
	    z-index: -1;
	}
	
	.resize-triggers {
	    animation: 1ms resizeanim;
	    visibility: hidden;
	    opacity: 0;
	}
	
	/* ???????????? ?????? */
	.product-detail-view .btn-order-group {
	    opacity: 1;
	    position: absolute;
	    bottom: 0;
	    right: -20px;
	    width: 340px;
	    margin-left: -1px;
	    height: 70px;
	    background-color: #f06c5e;
	    overflow: hidden;
	    -webkit-transition: opacity .3s;
	    transition: opacity .3s;
	}
	
	.product-detail-view .product-detail-wrap .point-background .left-content {
	    margin-top: 0;
	    padding-top: 80px;
	    padding-bottom: 80px;
	}	
	
	.product-detail-view .product-detail-wrap .left-content {
	    position: relative;
	    width: 860px;
	    padding-right: 90px;
	    padding-top: 30px;
	    box-sizing: border-box;
	}
	
	/* ???????????? css */
	.product-detail-view .section-title {
	    font-size: 24px;
	    font-weight: 700;
	    margin: 0 0 24px;
	    position: relative;
	}	
	
	/* ?????? ?????? ?????? */
	.pay_info .member_count.type ul {
	    width: 100%;
	    border: 1px solid #ddd;
	}
	.pay_info .member_count.type li {
	    float: left;
	    width: 50%;
	    margin: 0;
	    padding: 30px 0;
	    border-left: 1px solid #ddd;
	    text-align: center;
	    vertical-align: top;
	}
	.pay_info .member_count.type li:first-child {
	    width: 50%;
	    border-left: none;
	}
	
	.pay_info .member_count.type li .tit {
	    display: block;
	    width: 100%;
	    font-size: 15px;
	    font-weight: 600;
	    color: #111;
	}
	.pay_info .member_count.type li .tit {
	    text-align: center;
	}
	.pay_info .member_count.type li .txt {
	    margin-top: 5px;
	    font-size: 13px;
	    font-weight: 400;
	    color: #666;
	}
	.pay_info .member_count.type li .tit .txt {
	    top: 0;
	    margin: 0 0 0 5px;
	}
	/* ?????? ?????? */
	.num_count_group {
	    display: inline-block;
	    width: 114px;
	    height: 38px;
	    border: 1px solid #c3c3c3;
	    border-radius: 2px;
	}
	.pay_info .member_count.type li .num_count_group {
	    margin-top: 25px;
	}
	.num_count_group .inpt_counter {
	    float: left;
	    display: block;
	    font-size: 15px;
	    color: #111;
	    width: 34px;
	    height: 36px;
	    line-height: 34px;
	    text-align: center;
	    margin: 0 4px;
	}
	/* ?????? ?????? */
	.pay_info .member_count.type li .price_group {
	    margin-top: 25px;
	}
	.pay_info .member_count.type li .price {
	    color: #111;
	}
	
	/* ??? ??????  */
	.btn_wrap .btn-like {
	    width: 60px;
	    height: 56px;
	    border-radius: 5px;
	    border-color: #c3c3c3;
	    box-shadow: none;
	    color: #0e1c35;
	}
	
	.material-symbols-outlined-empty {
	    font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 10;
	    font-family: 'Material Symbols Outlined';
	    line-height: normal;
	    font-size: 19px;
	}	
	.count-wrap {position: relative;padding: 0 38px;border: 1px solid #ddd;overflow: hidden;width: 60px;}
	.count-wrap > button {border: 0;background: #ddd;color: #000;width: 38px;height: 38px;position: absolute;top: 0;font-size: 12px;}
	.count-wrap > button.minus {left: 0;}
	.count-wrap > button.plus {right: 0;}
	.count-wrap .inp {border: 0;height: 38px;text-align: center;display: block;width: 100%;}
	
	.dot-list li {
	    position: relative;
	    margin: 0;
	    color: #666;
	    padding-left: 10px;
	}	
	
	.dot-list>p, .dot-list li {
	    line-height: 1.6;
	}
	
	.ticket_name {
		min-height: 5rem;
		overflow-y: hidden;
		resize: non;
	}
	
</style>
<body>
<input type="hidden" id="rv_real_id" value="${rv_real_id}">
	<div class="container" style="height:auto;">
		<div class="info" style="width: 1250px; height: 770px;">
			<!-- ?????? ?????? ????????? -->
			<div class="ticketImg" style="width: 750px; height: 770px; border: 1px solid #808080; float:left; translate: 0px;">
				<h2><img src="${ticketDetail.ticket_rep_img_path}" style="width: 735px; height: 500px; margin: 0 auto; position: relative; transform: translate(4px, 139px);"></h2>
			</div>
			
			<!-- ????????? ?????? -->
			<div class="infoFlex" style="width: 450px; height: 770px; border: 1px solid #808080; float:right; translate: -55px;">
				<div id="productInfoWrap">
					<div class="product-info" style="padding: 40px 40px 60px; height: 770px;">
						<div class="product-title" style="width: 350px; height:660px; float: right; translate: -30px 20px;">
							<p class="city" style="font-size: 18px; color: #666; font-weight: 700;">${ticketDetail.city_name}</p>
							<!-- ?????? -->
							<textarea class="ticket_name" style="font-weight: 700; font-size:24px; border:none; width: 370px; height:110px; word-break:normal; resize:none;" cols="5" name="ticket_name" placeholder="${ticketDetail.ticket_name }" readonly></textarea>
							<div class="price-wrap">
								<div class="price" style="margin: 18px 0 0; font-size: 16px;">
									<input type="text" class="dc" style="font-size: 32px; color: #f06c5e; font-weight: 700; width: 99px; border:none;" name="ticket_child_price" value="${ticketDetail.ticket_child_price}" readonly>
									<span type="text" class="dc" style="font-size: 32px; color: #f06c5e; font-weight: 700; margin-right: 15px; width: 160px; border:none; translate:-20px;" >???~</span>
								</div>
							</div>
							
							<!-- ??? ?????? -->
 							<div class="btn-group" style="position: absolute; transform: translate(300px, -55px);">
						    	 <%-- ???????????? ????????? ?????? ??? ???????????? ?????? --%>
                                 <c:if test="${ticketDetail.basket_id == 0}">
                                 	<i class="likeBtn bi-heart" id="heart" style="font-size:2.5rem; color: red; cursor: pointer;"></i>
                                 </c:if>
                                 <c:if test="${ticketDetail.basket_id != 0}">
                                  	<i class="likeBtn bi-heart-fill" id="heart" style="font-size:2.5rem; color: red; cursor: pointer;"></i>
                                 </c:if>
							</div>
							
							<!-- ?????? -->
							<div class="rate-wrap">
								<h4 style="translate: 15px; font-style: italic;" class="star_scr" id="star_scr">${ticketDetail.ticket_score }</h4>
							</div>
							
							<div class="features">
								<ul style="vertical-align: baseline; translate: 10px 10px;">
									<li>
										<i class="bi bi-check"></i>
										<span>????????? ?????? ????????????</span>
									</li>
									<li>
										<i class="bi bi-check"></i>
										<span>?????? ?????? ??????</span>
									</li>
									<li>
										<i class="bi bi-check"></i>
										<span>???????????? ??? ??????</span>
									</li>
									<li>
										<i class="bi bi-check"></i>
										<span>e-??????</span>
									</li>
								</ul>
							</div>
							
							<div class="notice" style="margin: 0 0 65px;">
								<div class="read" style="margin-top: 30px;">
									<div class="title" style="font-weight: 700; font-size: 24px; margin:0 0 27px;">??? ???????????????!</div>
									<div class="dot-list" style="margin: 9px 0; line-height: 1.6;">
										<ul>
											<li style="position: relative; margin: 0; color: #666; padding-left: 10px;"><i class="bi bi-check"></i> ???????????? : ~<fmt:formatDate value="${ticketDetail.ticket_due_date}" pattern="yyyy-MM-dd"/></li>
											<li style="position: relative; margin: 0; color: #666; padding-left: 10px;"><i class="bi bi-check"></i> ???????????? : ~<fmt:formatDate value="${ticketDetail.ticket_due_date}" pattern="yyyy-MM-dd"/></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="ly_wrap prod_detail">
                    <!-- ?????? ?????? ?????? ?????? -->
                    <div class="inr">
                        <!-- ???????????? -->
                        <div class="cont_unit summary">
                            <div class="text_wrap big top">
                                <strong class="tit">????????????</strong>
                                	<!-- ticket_admission_date -->
                               		<div class="date">
										<div class="date_start" style="translate: 0 20px;">
											<input type="date" name="adDate" id="adDate" class="adDate" onchange="getDate()" value='2022-12-20' min="2022-12-20" max="2022-12-31">
											<!-- <input type="date" name="adDate" id="adDate" class="adDate" onchange="input()"> -->
										</div>
									</div>
                            </div>
                        </div>

                        <hr class="pkg">

                        <!-- ???????????? (??????)-->
                        <div class="cont_unit pic">
                            <div class="text_wrap big">
                                <strong class="tit">????????????</strong>
                            </div>
                            
                            <img src="${ticketDetail.ticket_detail_img_path }">
                            <div class="option_wrap"></div>
                        </div>

                        <hr class="pkg">
                        
                        <!-- ???????????? -->
                        <div class="cont_unit pic">
                            <div class="text_wrap big">
                                <strong class="tit">????????????</strong>
                            </div>
                            <div class="how-to-use" style="color: #666;">
                            	<div class="dot-list" style="margin: 9px 0; line-height: 1.6;">
                            		<ul style="margin: 17px 0; list-style-type:disc;">
                            			<li><i class="bi bi-check"></i> ?????? ?????? ?????? ?????? ?????? (?????? ?????? 1?????? ??? ????????????)</li>
                            			<li><i class="bi bi-check"></i> ?????? ??????????????? ????????? ?????? ?????? ??? ????????? ?????? ????????? ??????!</li>
                            			<li><i class="bi bi-check"></i> ?????? ??? ????????? ?????????!</li>
                            		</ul>
                            	</div>
                            </div>
                            
                            <div class="option_wrap"></div>
                        </div>

                        <hr class="pkg">
                        
                        <!-- ???????????? -->
                        <div class="cont_unit pic">
                            <div class="text_wrap big">
                                <strong class="tit">????????????</strong>
                            </div>
                            <div class="how-to-use" style="color: #666;">
                            	<div class="dot-list" style="margin: 9px 0; line-height: 1.6;">
                            		<ul style="margin: 17px 0; list-style-type:disc;">
                            			<li><i class="bi bi-check"></i> ???????????? : <b>${ticketDetail.ticket_location }</b></li>
                            			<li><i class="bi bi-check"></i> ???????????? : ?????? 11:00 ~ 22:00 [???????????? 21:00]</li>
                            			<li><i class="bi bi-check"></i> ?????? 1?????? ?????? ??????????????? ????????? ???????????????.</li>
                            			<li><i class="bi bi-check"></i> ????????? : ????????????</li>
                            			<li><i class="bi bi-check"></i> ???????????? : 24?????? ?????? (???????????? ?????? ??????)</li>
                            		</ul>
                            	</div>
                            </div>
                            
                            <div class="option_wrap"></div>
                        </div>
                        
                        <hr class="pkg">
                        
                        <!-- ?????? ??? ???????????? -->
                        <div class="cont_unit pic">
                            <div class="text_wrap big">
                                <strong class="tit">?????? ??? ????????????</strong>
                            </div>
                            <div class="how-to-use" style="color: #666;">
                            	<div class="dot-list" style="margin: 9px 0; line-height: 1.6;">
                            		<ul style="margin: 17px 0; list-style-type:disc;">
                            			<li><i class="bi bi-check"></i> ???????????? ??? ??????/?????? ??????</li>
                            			<li><i class="bi bi-check"></i> ????????? ?????? 100% ????????????</li>
                            			<li><i class="bi bi-check"></i> ????????? ?????? ?????? ??????</li>
                            			<li><i class="bi bi-check"></i> ?????? ?????? ?????? ??????</li>
                            		</ul>
                            	</div>
                            </div>
                            
                            <div class="option_wrap"></div>
                        </div>

                        <hr class="pkg">
                        
                        <!-- ?????? ?????? -->
                        <div class="cont_unit">
							<div class="all_review">
								??????
								
								<c:if test="${not empty sessionId }">
						            <div class="rv_btn">
						               <button class="genric-btn primary ela" data-toggle="modal" onclick="openModal()" data-target="#reviewModal">?????? ??????</button>
						            </div>
						         </c:if>   
								
								<div class="show_review"> <!-- ?????? ??????????????? ????????? ??? ???????????? -->
									<!-- ?????? ????????? ????????? table?????? -->
									<table id="reviewTable" class="reviewTable"> <!-- id??? ?????? X -->
										
									</table>
								</div> <!-- show_review -->
								
								<nav class="review-pagination blog-pagination justify-content-center d-flex">
									<!-- ????????? ?????? ????????? ?????? -->
									 <ul class="pagination" id="reviewPaginationUl">
									     
									 </ul>
								</nav>
							</div> <!-- all_review (?????? ???)-->
							
							<!-- ?????? ?????? (???????????? ????????? ??????????????????..)-->
							<div class="modal fade" id="reviewModal" tabindex="-1" role="dialog" aria-labelledby="modalCenterTitle" aria-hidden="true">
									  <div class="modal-dialog modal-dialog-centered" role="document">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" id="modalLongTitle">?????? ??????</h5>
									        <button type="button" class="close" data-dismiss="modal" onclick="closeModal()" aria-label="Close">
									          <span aria-hidden="true">&times;</span>
									        </button>
						      </div>
						      <div class="modal-body">
						      	<span class="star">
							      	 ???????????????
							      	 <span>???????????????</span>
				 					 <input type="range" oninput="drawStar()" id="starRate" value="1" step="1" min="0" max="10">
								</span>
						      	
					        	<div class="form-group">
						            <label for="message-text" class="col-form-label">??????:</label>
						            <textarea class="form-control" id="review-text"></textarea>
					         	</div>
					         	
					       		<!-- registerReview() -->
					         	
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-primary" onclick="registerReview()">?????? ??????</button>
						        <button type="button" class="btn btn-secondary" onclick="closeModal()" data-dismiss="modal">??????</button>
						      </div>
						    </div>
						  </div>
						</div>
                        </div>
                    </div><!-- inr -->
				
                    <!-- ?????? ?????? ????????? ?????? -->
                    <div class="inr right">
                        <div class="text_wrap big">
                            <strong class="tit">????????????</strong>
                        </div>

                        <div class="cont_unit js_sticky" style="right: auto; left: 0px;">
                            <div class="member_count">
                                <ul>
                                    <li>
                                        <p class="tit">
                                            <span class="txt">??????</span>
                                            <span class="price">${ticketDetail.ticket_adult_price }???</span>
                                        </p>
                                        <span class="num_count_group">
                                            <button type="button" class="btn_decrement down"></button>
                                            <span class="inpt_counter adultCnt">0</span>
                                            <button type="button" class="btn_increment up"></button>
                                        </span>
                                    </li>
                                    <li>
                                        <p class="tit">
                                            <span class="txt">??????</span>
                                            <span class="price">${ticketDetail.ticket_child_price }???</span>
                                        </p>
                                        <span class="num_count_group">
                                            <button type="button" class="btn_decrement down"></button>
                                            <span class="inpt_counter childCnt"></span>
                                            <button type="button" class="btn_increment up"></button>
                                        </span>
                                    </li>
                                </ul>
                            </div>

                            <div class="cont_wrap">
                                <hr class="pkg">
                                <div class="total_pay_price">
                                    <div class="row final">
                                        <p class="tit">??? ??????</p>
                                        <p class="con"></p>
                                    </div>
                                </div>
                                <hr class="pkg">
                                <div class="cont_unit foot">
                                    <div class="btn_wrap">
                                        <button type="button" class="btn-rv" style="width: 250px;" value="????????????" onclick="goReserve('${ticketDetail.ticket_id}')">????????????</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- inr right -->
                </div> <!-- prod_detail -->
	</div>
	
	
	<!-- ?????? ?????? (???????????? ????????? ??????????????????..)-->
	<div class="modal fade" id="reviewModal" tabindex="-1" role="dialog" aria-labelledby="modalCenterTitle" aria-hidden="true" data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
	    
				<div class="modal-header">
					<h5 class="modal-title" id="modalLongTitle">?????? ??????</h5>
					<button type="button" class="close" data-dismiss="modal" onclick="closeModal()" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			      
				<div class="modal-body">
					<span class="star">
						???????????????
						<span>???????????????</span>
						<input type="range" oninput="drawStar()" id="starRate" value="1" step="1" min="0" max="10">
					</span>
					<div class="form-group">
						<label for="message-text" class="col-form-label">??????:</label>
						<textarea class="form-control" id="review-text"></textarea>
					</div>
				</div>
			      
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" onclick="registerReview()">?????? ??????</button>
					<button type="button" class="btn btn-secondary" onclick="closeModal()" data-dismiss="modal">??????</button>
				</div>
				
			</div> <!-- modal-content -->
		</div> <!-- modal-dialog-centered -->
	</div> <!-- ?????? ?????? ??? -->
	
	
	<!-- ?????? -->
	<form action="/ticket/exhPayment" name="ReserveForm" method="post">
		<input type="hidden" name="ticket_id"   value="">
		<input type="hidden" name="ticket_name" value="">
		<input type="hidden" name="totalPay"    value="">
		<input type="hidden" name="adultCnt"    value="">
		<input type="hidden" name="childCnt"    value="">
		<input type="hidden" name="adDate"      value="">
	</form>

	
	<script>

	$(function() {
	    /* ?????? ??? ?????? ?????? ??? ??? ?????? ????????? ?????? script ?????? */

	    // ?????? / ?????? ?????????
	    let adultCnt = $(".adultCnt");
	    let childCnt = $(".childCnt");

	    // ??? ?????? / ?????? ??????
	    let up = $(".up");
	    let down = $(".down");

	    // ?????? ?????? / ?????? ?????? (???????????? ???????????? ???)
	    let adultPrice = ${ticketDetail.ticket_adult_price};
	    let childPrice = ${ticketDetail.ticket_child_price};

	    // ??? ?????? (??????????????? ????????? 1??? ?????????????????? ????????? ?????????????????? ?????? ????????? ?????????)
	    let totalPrice = adultPrice;
	    // ??? ?????? ??????
	    let totalPay = $(".con");

	    // ?????? ??? ?????? ??????
	    adultCnt.text("1");
	    childCnt.text("0");

	    // ??? ?????? ?????? ?????? (???????????? ???????????? ??? - ?????? ????????????)
	    totalPay.html(adultPrice + "<em>???</em>");

	    up.on("click", function () {
	        // ?????? ?????? ?????? (up / down)
	        let isUp = $(this).hasClass("up");

	        // ?????? ?????? ?????? ????????? ????????? ?????? ??? (siblings() ??? ????????????)
	        let cnt = Number($(this).siblings("span").text());
	        console.log(cnt);

	        // ?????? ?????? ?????? ?????? ?????? ??? (????????? ?????? ?????? ????????? ?????? ??????)
	        let totalCnt = Number(adultCnt.text()) + Number(childCnt.text());

	        // ?????? ?????? ??? ?????? / ?????? ??????
	        let isAdult = $(this).siblings("span").hasClass("adultCnt");
	        console.log(isAdult);

	        // ?????? / ?????? , up / down ??????
	        if (isAdult && !isUp) {
	            console.log("?????? down");
	        } else if (isAdult && isUp) {
	            console.log("?????? up");
	            // ?????? ?????? ?????? ??????.. (????????? ????????? ????????????)
	            if (totalCnt >= 10) {
	                return;
	            } else {
	                cnt += 1;
	                adultCnt.text(cnt);

	                // ??? ?????? ??????
	                totalPrice += adultPrice;
	            }
	        } else if (!isAdult && !isUp) {
	            console.log("?????? down");
	        } else if (!isAdult && isUp) {
	            console.log("?????? up");
	            // ?????? ?????? ?????? ??????.. (????????? ????????? ????????????)
	            if (totalCnt >= 10) {
	                return;
	            } else {
	                cnt += 1;
	                childCnt.text(cnt);

	                // ??? ?????? ??????
	                totalPrice += childPrice;
	            }
	        }

	        // ??? ?????? ????????? ?????? ??????
	        totalPay.html(totalPrice + "<em>???</em>");
	    });

	    down.on("click", function () {
	        // ?????? ?????? ?????? (up / down)
	        let isUp = $(this).hasClass("up");

	        // ?????? ?????? ?????? ?????? ???
	        let cnt = $(this).siblings("span").text();
	        console.log(cnt);

	        // ?????? ?????? ??? ?????? / ?????? ??????
	        let isAdult = $(this).siblings("span").hasClass("adultCnt");
	        console.log(isAdult);

	        // ?????? / ?????? , up / down ??????
	        if (isAdult && !isUp) {
	            console.log("?????? down");
	            if (cnt <= 1) {
	                return;
	            } else {
	                cnt -= 1;
	                adultCnt.text(cnt);

	                // ??? ?????? ??????
	                totalPrice -= adultPrice;
	            }
	        } else if (isAdult && isUp) {
	            console.log("?????? up");
	        } else if (!isAdult && !isUp) {
	            console.log("?????? down");
	            if (cnt <= 0) {
	                return;
	            } else {
	                cnt -= 1;
	                childCnt.text(cnt);

	                // ??? ?????? ??????
	                totalPrice -= childPrice;
	            }
	        } else if (!isAdult && isUp) {
	            console.log("?????? up");
	        }

	        totalPay.html(totalPrice + "<em>???</em>");
	    });
		    
	});
	
	// DTO??? ???????????? ??? ???....???
	//let basket_id = ${ticketDetail.basket_id};
	//alert(basket_id);
	
	/* ??? ?????? */
	$('#heart').click(function(){
		
    	// ????????? ??? ?????? ?????????
    	if("${member.mem_id}" == "") {
    		if(confirm("??????????????????.")) {
    			location.href="${pageContext.request.contextPath}/member/loginForm?toURL=${redirectURL }";
    		} else {
	    		return false;
    		}
    	}
    	
    	let ticket_id = "${ticketDetail.ticket_id}";
    	let mem_id    = '${member.mem_id}';
        	
       	// ??? ?????? ajax
       	$.ajax({
       		url: "${pageContext.request.contextPath}/ticketRest/ticketBasket",
       		data : {ticket_id, mem_id},
       		type: 'post',
       		dataType: 'text',
       		success: function(result) {
       			if(result == 'INSERT OK') {
       				$('.likeBtn').removeClass('bi-heart').addClass("bi-heart-fill");
       				alert("??? ????????? ?????? ????????? ???????????????.");
       				
       			} else if(result == 'DELETE OK') {
       				$('.likeBtn').removeClass('bi-heart-fill').addClass("bi-heart");
       				alert("??? ???????????? ?????? ????????? ?????????????????????.");
       			}
       		},
       		error: function(err) {
       			console.log(err)
    		}
    	});
    })

	// ????????? ??????
	function isLogined() {
		// ????????? ?????? -> ????????? ??????
		// ???????????? ??? ?????? ????????? -> return false;
		
		let mem_id = '${member.mem_id}';
		
		if(!mem_id) {
			return false;
		} else {
			return true;
		}
	}
	
	
	
	/* ???(????????????, ?????? ??????, ?????? ??????, ??? ??????, ?????????) ?????? ?????? ???????????? ?????? */
	function goReserve(ticket_id) {
	    	// ????????? ??? ?????? ?????????
	    	if(!isLogined()) {
	    		alert("????????? ??? ??????????????????.")
	    		location.href = "${pageContext.request.contextPath }/member/loginForm?toURL=${redirectURL }";
	    		return false;
	    	}
		
		
			let adultCnt = $(".adultCnt").html();
			let childCnt = $(".childCnt").html();
		    let adDate = $("#adDate").val();
	
		    // ?????? ?????? / ?????? ??????
		    let adultPrice = ${ticketDetail.ticket_adult_price};
		    let childPrice = ${ticketDetail.ticket_child_price};
	
		    let totalPay =  parseInt((adultPrice * parseInt(adultCnt)) + (childPrice * parseInt(childCnt)));
		    
			let ticket_name = "${ticketDetail.ticket_name }"

			console.log("ticket_id : " + ticket_id)
		    console.log("totalPay : " + totalPay)
			console.log("adultCnt->"+adultCnt);
			
			$('input[name=ticket_name]').attr('value', ticket_name);
			$('input[name=totalPay]').attr('value', totalPay);
			$('input[name=adultCnt]').attr('value', adultCnt);
			$('input[name=childCnt]').attr('value', childCnt);
			$('input[name=adDate]').attr('value', adDate);
			$('input[name=ticket_id]').attr('value', ticket_id);
			
			ReserveForm.submit();
	} 
	
	//?????? ?????? -- ????????? ??????2 (?????? ?????? ?????????)
	function makeRow(datum) {
	   
	   let innerHtml = ''

	   innerHtml += '<tr>'
	      innerHtml += '<input type="hidden" class="rv_id" value="'+datum.rv_id +'">'
	      innerHtml += '<td>'
	         innerHtml += '<span class="rv_date">'+datum.rv_date +'</span>'
	      innerHtml += '</td>'
	      innerHtml += '<td>'
	         innerHtml += '<div class="star_img"> <img alt="?????????~" src="/img/hotel/star.png"></div>'
	         innerHtml += '<span class="rv_rating">'+datum.rv_rating +'</span>'
	      innerHtml += '</td>'
	      innerHtml += '<td>'
	         innerHtml += '<span class="rv_contents">'+datum.rv_contents +'</span>'
	      innerHtml += '</td>'
	      innerHtml += '<td>'
	         // ????????? = ????????? ???????????? ?????? ?????? ????????? 
	         if(datum.mem_id == '${sessionId}') {   
	            innerHtml += '<button type="button" class="rv_modify genric-btn info radius" onclick="openUpdateModal(this)">??????</button>'
	         }
	      innerHtml += '</td>'
	      innerHtml += '<td>'
	         // ????????? = ????????? ???????????? ?????? ?????? ????????? 
	         if(datum.mem_id == '${sessionId}') {   
	            innerHtml += '<button type="button" class="rv_delete genric-btn info radius" onclick="deleteReview(this)">??????</button>'
	         }
	      innerHtml += '</td>'
	   innerHtml += '</tr>'
	   
	   return innerHtml;
	}
	
    </script>
    <script src="${pageContext.request.contextPath }/js/review/review.js"></script>
</body>
</html>