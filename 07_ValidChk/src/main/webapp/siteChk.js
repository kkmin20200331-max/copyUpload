function call() {
    const i1El = document.querySelector("#i1");
    const i2El = document.querySelector("#i2");
    const i3El = document.querySelector("#i3");
    const i4El = document.querySelector("#i4");
    const i5El = document.querySelector("#i5");
    const i6El = document.querySelector("#i6");


    if (isEmpty(i1El) || lessThan(i1El,5)||containKR(i1El)) {
        alert('입력 조건을 확인해주세요!');
        i1El.focus();
        return;
    }
	
	
	if(lessThan(i2El,3)){
		alert('글자 수 오류!');
		i2El.focus();
		return;
	}
	
	if(isEmpty(i3El)|| notContains(i3El,"1234567890QWERTYUIOPASDFGHJKLZXCVBNM")||lessThan(i3El,5)){
		alert('비밀번호를 조건에 맞게 입력하세요!')
		i3El.focus();
		return;
		
	}
	
	if(notEquals(i3El,i4El)){
		alert('비밀번호가 같지 않습니다.')
		i3El.value = "";
		i4El.value = "";
		i3El.focus();
		return;
	}
	
	if(isNotNumber(i5El)||isEmpty(i5El)){
		alert('입력 조건을 확인해주세요!')
		i5El.focus();
		return;
	}
		
	if(isNotType(i6El, "jpg") && isNotType(i6El,"png")){
		alert('파일 형식 오류!')
		i6El.value = "";
		return;
		
	}


    document.querySelector("#myForm").submit();

}