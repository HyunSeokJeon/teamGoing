/**
 * 
 */

window.addEventListener('scroll', ()=>{
    const scrollable = document.documentElement.scrollHeight - window.innerHeight;
    const scrolled = Math.ceil(window.scrollY);
    if (scrolled == scrollable){
        console.log('max!!');
    }
})

const testJson = {
    "productId":"1",
    "productType":"20",
    "productName":"흠뻑쇼"
};

try{
    var json = JSON.parse({
    "productId":"1",
    "productType":"20",
    "productName":"흠뻑쇼"
});
    console.log(typeof json === 'object');
    // return (typeof json === 'object');
}catch(e){
    console.log("json 아님!");
}

document.getElementById("testButton").addEventListener("click", ()=>{

    let httpRequest = new XMLHttpRequest();
    let prolist = 0;
    const getMoreTag = document.getElementById("getMore");
	httpRequest.onreadystatechange = function () {
        if (httpRequest.readyState === XMLHttpRequest.DONE) {
            if (httpRequest.status === 200) {
				console.log(typeof httpRequest.responseText);
                console.log(httpRequest.responseText);
                prolist = JSON.parse(httpRequest.responseText);
                makeProlist(getMoreTag,prolist);
            }
        }
    };
    

    httpRequest.open("POST", `/goingFront/get.go`, true);
    httpRequest.send();	

});

function makeProlist(tag, Prolist){
    tag.innerHTML += `<form method="get" action="/goingFront/payment.go">
    <div class="col mb-5">
        <input type="hidden" name="productName" value="${Prolist.productName}"/>
        <input type="hidden" name="productPrice" value="${Prolist.productPrice}"/>
        
        <div class="card h-100">
            <!-- Product image-->
            <img class="card-img-top" src="/goingFront/upload/${Prolist.productImage}" alt="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" />
            <!-- Product details-->
            <div class="card-body p-4">
                <div class="text-center">
                    <!-- Product name-->
                    <h5 class="fw-bolder" ><a href="/goingFront/productInfo.go?pId=${Prolist.productID}">${Prolist.productName}</a></h5>
                    <!-- Product price-->
                    ${Prolist.productPrice}
                </div>
            </div>
            <!-- Product actions-->   
            <div class=" p-4 pt-0  d-flex justify-content-center bg-transparent ">
                <div class="text-inline"><button class="btn btn-outline-dark mt-auto" href="#">장바구니</button></div>
                <div class="text-inline offset-1"  ><button class="btn btn-outline-dark mt-auto"  type="submit">구매하기</button></div>
            </div>
        </div>
    </div>
    </form>`
}