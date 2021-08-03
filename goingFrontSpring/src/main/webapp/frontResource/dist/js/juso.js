'use strict'

function goPopup(){ 
	var pop = window.open("/customer/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, 
		rnMgtSn, bdMgtSn , detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, 
		mtYn, lnbrMnnm, lnbrSlno, emdNo){ 
	// 2017년 2월 제공항목이 추가되었습니다. 원하시는 항목을 추가하여 사용하시면 됩니다. 
	// document.getElementById("address1").value = roadFullAddr; 
	// document.getElementById("address2").value = addrDetail; 
	// document.getElementById("addresscod1").value = zipNo;
	document.getElementById("address1").setAttribute("value", roadFullAddr); 
	document.getElementById("address2").setAttribute("value", addrDetail);
	document.getElementById("addresscod1").setAttribute("value",zipNo);
	}