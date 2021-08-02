

let productTypeId = 0;
const lowPrice = document.getElementById("seperate");
console.log(Prolist);
for (var a = 0; a < document.getElementsByName("tp").length; a++) {
	let va = 0;
	va = document.getElementsByName("tp")[a].value;
	document.getElementsByName("tp")[a].addEventListener("click", (e) => {
		productTypeId = va;
		console.log(productTypeId);
		let httpRequest = new XMLHttpRequest();
		if (!httpRequest) {
			alert("xml 인스턴스 못만듬");
		}
		let listbox = document.getElementById("listbox");
		
		console.log(va);
		listbox.innerHTML = "";
		httpRequest.onreadystatechange = function() {
			if (httpRequest.readyState === XMLHttpRequest.DONE) {
				if (httpRequest.status === 200) {
					console.log(typeof httpRequest.responseText);
					console.log(httpRequest.responseText);
					Prolist = JSON.parse(httpRequest.responseText);
					console.log(Prolist);
					/*Prolist.sort(sortProduct);
					console.log(Prolist);*/
					for (var i = 0; i < Prolist.length; i++) {
						makeProlist(Prolist[i]);
					}
					
				}
			}
		};

		httpRequest.open("POST", `/prolist/` + va, true);
		httpRequest.send();
	});
}

function makeProlist(Prolist) {
	console.log(listbox);
	listbox.innerHTML += `
      <form method="get" action="/proDesc/${Prolist.productID}">
      <div class="col mb-5">
        <input type="hidden" name="productName"
          value="${Prolist.productName}" /> <input type="hidden"
          name="productPrice" value="${Prolist.productPrice}" />

        <div class="card h-100">
          <!-- Product image-->
          <img class="card-img-top"
            src="/viewimg?fileName=${Prolist.productImage}"
            alt="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" />
          <!-- Product details-->
          <div class="card-body p-4" >
            <div class="text-center"  id="namebox">
               <!-- Product name-->
               <h5 class="fw-bolder" >
                 <a href="/proDesc/${Prolist.productID}" id="pnbox">${Prolist.productName}</a>
               </h5>
               <!-- Product price-->
               ${Prolist.productPrice}
            </div>
          </div>
          <!-- Product actions-->
          <div
            class=" p-4 pt-0  d-flex justify-content-center bg-transparent ">
            <div class="text-inline">
               <button class="btn btn-outline-dark mt-auto" href="#">장바구니</button>
            </div>
            <div class="text-inline offset-1">
               <button class="btn btn-outline-dark mt-auto" type="submit">구매하기</button>
            </div>
          </div>
        </div>
      </div>
   </form>   
   `;
}

lowPrice.addEventListener("click", function(){
	listbox.innerHTML = "";
	Prolist.sort(function(a,b){
	return a.productPrice - b.productPrice;
	});
	for (var i = 0; i< Prolist.length; i++){
		makeProlist(Prolist[i]);}
});





function sortProduct(a,b){
	return a.productPrice - b.productPrice;
};



document.getElementById("highprice").addEventListener("click", function(){
		listbox.innerHTML = "";
	Prolist.sort(function(a, b){
		return b.productPrice - a.productPrice;
	});
	for (var i = 0; i < Prolist.length; i++) {
						makeProlist(Prolist[i]);
					}
		
	});
	
document.getElementById("data").addEventListener("click", function(){
		listbox.innerHTML = "";
	Prolist.sort(function(a, b){
		return Number(new Date(b.productRegdate)) - Number(new Date(a.productRegdate));
	});
	console.log(Prolist);
	for (var i = 0; i < Prolist.length; i++) {
						makeProlist(Prolist[i]);
					}
		
	});