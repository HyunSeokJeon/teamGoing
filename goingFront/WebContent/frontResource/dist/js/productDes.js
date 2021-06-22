/**
 * 
 */
'use strict'


const board = document.getElementById("calenderBoard");
board.addEventListener("click", ()=>{
	const year = document.getElementById("yearlabel");
	const month = document.getElementsByClassName("active-month");
	const day = document.getElementsByClassName("active-date");

	const orderYear = document.getElementById("orderYear");
	const orderMonth = document.getElementById("orderMonth");
	const orderDay = document.getElementById("orderDay");
	
	
	let monthDict = {'Jan': '01',
		'Feb':'02',
		'Mar':'03',
		'Apr':'04',
		'May':'05',
		'Jun':'06',
		'Jul':'07',
		'Aug':'08',
		'Sep':'09',
		'Oct':'10',
		'Nov':'11',
		'Dec':'12',};
	orderYear.value = year.innerHTML;
	orderMonth.value = monthDict[month[0].innerHTML];
	orderDay.value = day[0].innerHTML;
//	console.log(orderYear.value);
//	console.log(orderMonth.value);
//	console.log(orderDay.value);
//	console.log(document.getElementById("productid1"))
//	console.log(document.getElementById("productid1").value)
});