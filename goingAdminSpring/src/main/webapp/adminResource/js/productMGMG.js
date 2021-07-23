/**
 *
 */
let base = 11;
window.addEventListener("scroll", scrollEvent);

function scrollEvent() {
    const scrollable = document.documentElement.scrollHeight - window.innerHeight;
    const scrolled = Math.ceil(window.scrollY);

    if (scrolled == scrollable) {
        let httpRequest = new XMLHttpRequest();
        let prolist = 0;
        const getMoreTag = document.getElementById("productBody");
        httpRequest.onreadystatechange = function () {
            if (httpRequest.readyState === XMLHttpRequest.DONE) {
                if (httpRequest.status === 201) {
                    prolist = JSON.parse(httpRequest.responseText);
                    if (prolist.length === 0) {
                        window.removeEventListener("scroll", scrollEvent);
                    }
                    for (let i = 0; i < prolist.length; i++) {
                        makeproduct(getMoreTag, prolist[i]);
                    }
                }
            }
        };

        httpRequest.open("POST", `/manage/getMore?rownum=` + base, true);
        httpRequest.send();
        base += 10;
    }
}

document.getElementById("testButton").addEventListener("click", () => {
    let httpRequest = new XMLHttpRequest();
    let prolist = 0;
    const getMoreTag = document.getElementById("testBody");
    httpRequest.onreadystatechange = function () {
        console.log("httpRequest.readyState" + httpRequest.readyState);
        if (httpRequest.readyState === XMLHttpRequest.DONE) {
            console.log("httpRequest.status" + httpRequest.status);
            if (httpRequest.status === 201) {
                console.log(typeof httpRequest.responseText);
                console.log(httpRequest.responseText);
                prolist = JSON.parse(httpRequest.responseText);
                console.log(prolist);
                console.log(prolist.length);
                for (let i = 0; i < prolist.length; i++) {
                    makeproduct(getMoreTag, prolist[i]);
                }
            }
        }
    };

    httpRequest.open("POST", `/manage/getMore?rownum=` + base, true);
    httpRequest.send();
});

function makeproduct(tag, product) {
    let innerStr = "";
    innerStr += `<tr>
	<td>${product.productTypeVO.productType}</td>
	<td style="max-width:10rem">${product.productName}</td>
	<td>${product.productPrice}</td>
	<td><a href="javascript:void(window.open('/manage/viewimg?fileName=${product.productImage}','win0','width=800,height=768,status=no,toolbar=no,scrollbars=no'))">상품확인</a></td>
	<td><a href="javascript:void(window.open('/manage/viewimg?fileName=${product.productDesc}','win0','width=800,height=768,status=no,toolbar=no,scrollbars=no'))">상품확인</a></td>
	<td>${product.productPlaytime}분</td>
	<td>${product.productAgeLimit}세</td>
	<td>${product.productLove}</td>
	<td>${product.productSellStart}<br>~${product.productSellEnd}</td>
	<td>${product.productPeriods}<br>~${product.productPeriode}</td>
	<td>${product.productRegdate}</td>`;

    if (`${product.productSellYN}` === "1") {
        innerStr += `<td>노출</td>`;
    } else {
        innerStr += `<td>비노출</td>`;
    }
    innerStr += `
		<td><a href="<%=path %>/manage/modifyForm?productID=${product.productID}" class="btn btn-sm btn-primary shadow-sm">수정</a></td>
	</tr>`;

    tag.innerHTML += innerStr;
}
