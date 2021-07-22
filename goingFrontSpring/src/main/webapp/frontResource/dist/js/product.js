

for(var a=0; a<document.getElementsByName("tp").length; a++){
	let va = 0;
	va = document.getElementsByName("tp")[a].value;
	document.getElementsByName("tp")[a].addEventListener("click", () => {
    let httpRequest = new XMLHttpRequest();
    if (!httpRequest) {
        alert("xml 인스턴스 못만듬");
    }
    let listbox = document.getElementById("listbox");
   	
    console.log(va);
    listbox.innerHTML="";
    httpRequest.onreadystatechange = function () {
        if (httpRequest.readyState === XMLHttpRequest.DONE) {
            if (httpRequest.status === 200) {
                console.log(typeof httpRequest.responseText);
                console.log(httpRequest.responseText);
                let Prolist = JSON.parse(httpRequest.responseText);
                console.log(Prolist.length);
                for (var i = 0; i < Prolist.length; i++) {
                    makeProlist(Prolist[i]);
                }
            }
        }
    };

    httpRequest.open("POST", `/prolist/`+va, true);
    httpRequest.send();
});
}

function makeProlist(Prolist) {
    console.log(listbox);
    listbox.innerHTML += `
      <form method="get" action="/goingFront/payment.go">
      <div class="col mb-5">
        <input type="hidden" name="productName"
          value="${Prolist.productName}" /> <input type="hidden"
          name="productPrice" value="${Prolist.productPrice}" />

        <div class="card h-100">
          <!-- Product image-->
          <img class="card-img-top"
            src="<%=path %>/upload/${Prolist.productImage}"
            alt="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" />
          <!-- Product details-->
          <div class="card-body p-4" >
            <div class="text-center"  id="namebox">
               <!-- Product name-->
               <h5 class="fw-bolder" >
                 <a href="<%=path %>/productInfo.go?pId=${Prolist.productID}" id="pnbox">${Prolist.productName}</a>
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