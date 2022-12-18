<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/search/newCss.css">
<style type="text/css">
	input:checked + label {
	    border-color: #0e1c35 !important;
	    color: #0e1c35 !important;
	    z-index: 2 !important;
	}

</style>
</head>
<body>
	<div id="container">
        <div class="inr">
            <div id="contents" class="contents allsearch">
                <!-- contents -->
                <div class="vote_list">
                    <!-- ȣ�� ����Ʈ -->
                    <div class='ly_wrap list_result_wrap'>
                        <div class='inr filter'>
                            <strong class='tit'>����</strong>
                            <div class='js_acc multi filter_wrap'>
                                <div class='inr'>
                                    <a href='#filter-1' class='header active'>���� ����</a>
                                    <div id='filter-1' class='view active' style='display: block;'>
                                        <div class='form_wrap'>
                                            <span class='form_holder text'>
                                                <input type='radio' name="hotel_type" id='kind-0' value="hotel" class='inpt_checkbox hotel_type'>
                                                <label for='kind-0' class='label_checkbox'> ȣ�� </label>
                                            </span>
                                            <span class='form_holder text'>
                                                <input type='radio' name="hotel_type" id='kind-1' value="residence" class='inpt_checkbox hotel_type'>
                                                <label for='kind-1' class='label_checkbox'> �������� </label>
                                            </span>
                                            <span class='form_holder text'>
                                                <input type='radio' name="hotel_type" id='kind-2' value="pension" class='inpt_checkbox hotel_type'>
                                                <label for='kind-2' class='label_checkbox'> ��� </label>
                                            </span>
                                            <span class='form_holder text'>
                                                <input type='radio' name="hotel_type" id='kind-3' value="resort" class='inpt_checkbox hotel_type'>
                                                <label for='kind-3' class='label_checkbox'> ����Ʈ </label>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class='inr'>
                                    <a href='#filter-8' class='header active'>����</a>
                                    <div id='filter-8' class='view active' style='display: block;'>
                                        <div class='form_wrap'>
                                            <span class='form_holder text'>
                                                <input type='radio' name="min_price" id='adtMinAmt-0' value="40000" class='inpt_checkbox min_price'>
                                                <label for='adtMinAmt-0' class='label_checkbox'> 4~8���� </label>
                                            </span>
                                            <span class='form_holder text'>
                                                <input type='radio' name="min_price" id='adtMinAmt-1' value="80000" class='inpt_checkbox min_price'>
                                                <label for='adtMinAmt-1' class='label_checkbox'> 8~12���� </label>
                                            </span>
                                            <span class='form_holder text'>
                                                <input type='radio' name="min_price" id='adtMinAmt-2' value="120000" class='inpt_checkbox min_price'>
                                                <label for='adtMinAmt-2' class='label_checkbox'> 12~16���� </label>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class='inr'>
                                    <a href='#filter-2' class='header active'>���� ����</a>
                                    <div id='filter-2' class='view active' style='display: block;'>
                                        <div class='form_wrap'>
                                            <span class='form_holder text'>
                                                <input type='radio' name="hotel_score" id='score-0' value="3.0" class='inpt_checkbox hotel_score'>
                                                <label for='score-0' class='label_checkbox'> ��ȣ(3+) </label>
                                            </span>
                                            <span class='form_holder text'>
                                                <input type='radio' name="hotel_score" id='score-1' value="3.5" class='inpt_checkbox hotel_score'>
                                                <label for='score-1' class='label_checkbox'> ����(3.5+) </label>
                                            </span>
                                            <span class='form_holder text'>
                                                <input type='radio' name="hotel_score" id='score-2' value="4.0" class='inpt_checkbox hotel_score'>
                                                <label for='score-2' class='label_checkbox'> ���(4+) </label>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class='inr'>
                                    <a href='#filter-3' class='header active'>���� ���</a>
                                    <div id='filter-3' class='view active' style='display: block;'>
                                        <div class='form_wrap'>
                                            <span class='form_holder text'>
                                                <input type='radio' name="hotel_grade" id='class-0' value="3" class='inpt_checkbox hotel_grade'>
                                                <label for='class-0' class='label_checkbox'> 3���� </label>
                                            </span>
                                            <span class='form_holder text'>
                                                <input type='radio' name="hotel_grade" id='class-1' value="4" class='inpt_checkbox hotel_grade'>
                                                <label for='class-1' class='label_checkbox'> 4���� </label>
                                            </span>
                                            <span class='form_holder text'>
                                                <input type='radio' name="hotel_grade" id='class-2' value="5" class='inpt_checkbox hotel_grade'>
                                                <label for='class-2' class='label_checkbox'> 5���� </label>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class='inr'>
                                    <a href='#filter-6' class='header active'>���� �ɼ�</a>
                                    <div id='filter-6' class='view active' style='display: block;'>
                                        <div class='form_wrap'>
                                            <span class='form_holder text'>
                                                <input type='radio' name="hotel_option" id='othFacili-0' value="wifi" class='inpt_checkbox hotel_option'>
                                                <label for='othFacili-0' class='label_checkbox'> wifi </label>
                                            </span>
                                            <span class='form_holder text'>
                                                <input type='radio' name="hotel_option" id='othFacili-1' value="������" class='inpt_checkbox hotel_option'>
                                                <label for='othFacili-1' class='label_checkbox'> ������ </label>
                                            </span>
                                            <span class='form_holder text'>
                                                <input type='radio' name="hotel_option" id='othFacili-2' value="�������" class='inpt_checkbox hotel_option'>
                                                <label for='othFacili-2' class='label_checkbox'> ������� </label>
                                            </span>
                                            <span class='form_holder text'>
                                                <input type='radio' name="hotel_option" id='othFacili-3' value="��������" class='inpt_checkbox hotel_option'>
                                                <label for='othFacili-3' class='label_checkbox'> �������� </label>
                                            </span>
                                            <span class='form_holder text'>
                                                <input type='radio' name="hotel_option" id='othFacili-4' value="����� ���ǽü�" class='inpt_checkbox hotel_option'>
                                                <label for='othFacili-4' class='label_checkbox'> ����� ���ǽü� </label>
                                            </span>
                                            <span class='form_holder text'>
                                                <input type='radio' name="hotel_option" id='othFacili-5' value="�뼭��" class='inpt_checkbox hotel_option'>
                                                <label for='othFacili-5' class='label_checkbox'> �뼭�� </label>
                                            </span>
                                            <span class='form_holder text'>
                                                <input type='radio' name="hotel_option" id='othFacili-6' value="�����ݰ�" class='inpt_checkbox hotel_option'>
                                                <label for='othFacili-6' class='label_checkbox'> �����ݰ� </label>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                        
                        <div class='inr right'>
                        
	                        <div class="prod_list">
	                            <ul class="list htl eps5">
	                                <c:forEach var="searchResult" items="${hotelSearchResult }">
	                                    <li>
	                                        <div>
	                                            <div class="img">
	                                                <div class="group_area">
	                                                </div>
	                                                <img src="${searchResult.h_img_path}" title="" data-src="" alt="">
	                                            </div>
	                                            <div class="txt_info">
	                                                <div class="tit eps2">
	                                                    <strong>${searchResult.hotel_kor}</strong>
	                                                </div>
	                                                <div class="type_1">
	                                                    <span>ȣ��</span> <span>${searchResult.hotel_grade}</span>
	                                                </div>
	                                                <div class="type_2">
	                                                    <span>${searchResult.country_name}</span>
	                                                    <span>${searchResult.city_name} </span>
	                                                </div>
	                                                <div class="rating">
	                                                    <strong>${searchResult.hotel_score}</strong>
	                                                    <span>${searchResult.review_cnt}</span>
	                                                </div>
	                                                <div class="price">
	                                                    <div>
	                                                        <div>
	                                                        	<fmt:formatNumber type="number" maxFractionDigits="3" value="${searchResult.room_min_price}" var="minRoomPrice"/>
	                                                            <strong>${minRoomPrice}</strong>
	                                                            <p>��~</p>
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </li>
	                                </c:forEach>
	                            </ul>
	                        </div>
                    	</div>
                    </div> <!-- vote_list -->
                </div> <!-- contents -->
            </div> <!-- inr -->
        </div>
    </div>
    
    
<form id="hotelSearchForm" action="${pageContext.request.contextPath }/hotel/hotelSearch" method="POST">
	<input type="hidden" name="city_id" value="${hotelDTO.city_id }" class="starting_hidden">
	<input type="hidden" name="calDate" value="${hotelDTO.calDate }" class="calDate">
	<input type="hidden" name="startDate" value="${hotelDTO.startDate }" id="dates_start_check" class="dates_start_check">
	<input type="hidden" name="endDate" value="${hotelDTO.endDate }"  id="dates_start_end" class="dates_start_end">
	
	<input type="hidden" name="hotel_type" value="${hotelDTO.hotel_type }">
	<input type="hidden" name="min_price" value="${hotelDTO.min_price }">
	<input type="hidden" name="hotel_score" value="${hotelDTO.hotel_score }">
	<input type="hidden" name="hotel_grade" value="${hotelDTO.hotel_grade }">
	<input type="hidden" name="hotel_option" value="${hotelDTO.hotel_option }">
	
</form>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script> 
<script type="text/javascript">

$(function () {
	initPage();
})

function initPage() {
	let hotel_type = '${hotelDTO.hotel_type }';
	let min_price = '${hotelDTO.min_price }';
	let hotel_score = '${hotelDTO.hotel_score }';
	let hotel_grade = '${hotelDTO.hotel_grade }';
	let hotel_option = '${hotelDTO.hotel_option }';
	
	$('.inpt_checkbox[name="hotel_type"][value="'+hotel_type+'"]').prop('checked',true)
	$('.inpt_checkbox[name="min_price"][value="'+min_price+'"]').prop('checked',true)
	$('.inpt_checkbox[name="hotel_score"][value="'+hotel_score+'"]').prop('checked',true)
	$('.inpt_checkbox[name="hotel_grade"][value="'+hotel_grade+'"]').prop('checked',true)
	$('.inpt_checkbox[name="hotel_option"][value="'+hotel_option+'"]').prop('checked',true)
}

$('.inpt_checkbox').change(function () {
	let radioName = $(this).attr('name');
	$('#hotelSearchForm [name="'+radioName+'"]').val($(this).val())
	hotelSearchForm.submit();
})

</script>	
</body>
</html>