<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/myPage.css">
<style type="text/css">
.btn_wrap .btn {
    min-width: 120px;
    height: 56px;
    line-height: 54px;
    font-size: 15px;
    color: #333;
    padding: 0 30px;
}
.btn_wrap .btn>span {
    justify-content: center;
    align-items: center;
    display: flex;
}
ul.btn_wrap li {
    float: left;
    width: 200px;
    padding-right: 10px;
    padding-bottom: 20px;
}
ul.btn_wrap li .btn {
    padding-left: 10px;
    padding-right: 10px;
    text-align: left;
}
span {
 text-align: center;
}
</style>
</head>
<body>
	<div id="container">
		<div class="inr">
			<!-- 카테고리 -->
			<div class="lnb" id="lnb">
				<div class="inr">
					<dl>
						<dt class="type"><a href="${pageContext.request.contextPath}/member/myPageReservPackage">마이페이지</a></dt>
						<dd>
							<ul class="list_lnb">
							    <li id="EM00000196" class="">
							        <a href="${pageContext.request.contextPath}/member/myPageReservPackage" id="/com/mpg/CHPC0MPG0200M200">예약내역</a>
							        <!---->
							    </li>
							    <li id="EM00000203" class="">
							        <a href="${pageContext.request.contextPath}/member/myPageLikePackage" id="/com/sbk/CHPC0COM0300M200">찜</a>
							        <!---->
							    </li>
							    <li id="EM00000224">
							        <a href="${pageContext.request.contextPath}/member/myPageCouponPackage">쿠폰함</a>
							    </li>
							    <li id="EM00002140" class="">
							        <a href="${pageContext.request.contextPath}/member/myPageFAQ" id="/com/cuc/CHPC0CUC0001M200">자주찾는 질문</a>
							        <!---->
							    </li>
							    <li id="EM00002141" class="">
							        <a href="${pageContext.request.contextPath}/member/myPageReviewPackage" id="/com/mpg/CHPC0MPG0403M200">My 상품평</a>
							        <!---->
							    </li>
							    <li id="EM00000234" class="">
							        <a href="${pageContext.request.contextPath}/member/myPagePrivacy" id="/com/mpg/CHPC0MPG0105M200">개인정보</a>
							        <!---->
							    </li>
							</ul>
						</dd>
					</dl>	
				</div>	<!-- inr -->
			</div>	<!-- lnb -->
			<div class="contents" id="contents">
				<div class="text_wrap big fix">
					<strong class="tit">개인정보</strong>
				</div>
				<div class="sns_linkage ly_wrap" style="width: 100%;">
				    <div class="inr" style="width: 325px;">
				        <span class="name">${sessionName}</span>
				        <p class="email">${sessionEmail}</p>
				    </div>	<!-- inr -->
				    <div class="inr right" style="width: 685px; padding-left: 100px;">
				        <ul class="btn_wrap">
				            <li>
				                <a href="${pageContext.request.contextPath}/member/modifyMember" class="btn big"><span class="member">회원정보 수정</span></a>
				            </li>
				            <li>
				                <a href="${pageContext.request.contextPath}/member/modifyPassword" class="btn big"><span class="pw">비밀번호 변경</span></a>
				            </li>
				            <li>
				                <a href="${pageContext.request.contextPath}/member/logout" class="btn big"><span class="sns">로그아웃</span></a>
				            </li>
				            <li>
				                <a href="${pageContext.request.contextPath}/member/deleteMember" class="btn big"><span class="out">회원탈퇴</span></a>
				            </li>
				        </ul>
				    </div>	<!-- inr right -->
				</div>	<!-- sns_linkage ly_wrap -->
			</div>	<!-- contents -->
		</div>
	</div>
</body>
<script type="text/javascript"> 

var result = '${result}'; 

if(result == 'update success') {
	alert("수정 완료");
}



</script>
</html>