/**
 *
 */

document.getElementById("likeitem").addEventListener("click", function (event) {
    event.preventDefault();

    const heartBox = document.getElementById("heartBox");
    const child = heartBox.getElementsByTagName("i");

    let httpRequest;
    if (window.XMLHttpRequest) {
        // 모질라, 사파리, IE7+ ...
        httpRequest = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        // IE 6 이하
        httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
    }
	httpRequest.onreadystatechange = function () {
        if (httpRequest.readyState === XMLHttpRequest.DONE) {
            if (httpRequest.status === 200) {
				console.log("동작완료!");
            }
        }
    };
    if (userId !== null) {
        let heart = child[0]; // 빈하트
        let heartFill = child[1]; // 채워진 하트

        if (heart.className.includes("d-none")) {
            // 좋아요 취소
            heart.className = heart.className.replace("d-none", "");
            heartFill.className += "d-none";
            httpRequest.open("POST", `/product/productLove?pId=${productId}&customerid=${userId}&action=0`, true);
			httpRequest.send();	
        } else {
            // 좋아요!
            heart.className += "d-none";
            heartFill.className = heartFill.className.replace("d-none", "");
            httpRequest.open("POST", `/product/productLove?pId=${productId}&customerid=${userId}&action=1`, true);
			httpRequest.send();
        }
    } else {
        if (confirm("로그인이 필요한 서비스입니다. 로그인 하시겠습니까?")) {
            window.location = `${path}/customer/login`;
        }
    }
    

});
