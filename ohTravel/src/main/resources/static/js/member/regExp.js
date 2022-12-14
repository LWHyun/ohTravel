// 유효성 검사 (정규식)

function isId(asValue) { // 아이디 체크 , 영문자로 시작하는 영문자 또는 숫자 6~20자 
	var regExp = /^[a-z]+[a-z0-9]{5,19}$/g; // g : 모두 찾는다. g를 빼면 해당하는 문자 1개만 찾음
	return regExp.test(asValue);
}

function isCorrect(asValue) { // 2~4자 한글만 입력 
	var regExp =  /^[가-힣]{2,4}$/; ///[ㄱ-힣]{2,4}$/g;
	return regExp.test(asValue);
}