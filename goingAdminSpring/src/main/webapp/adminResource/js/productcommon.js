"use strict";
const form = document.getElementById("createform");
form.addEventListener("submit", (event) => {
    const typeOption = document.getElementById("productType");
    if (typeOption.options[typeOption.options.selectedIndex].value === "X") {
        alert("상품종류를 선택해주세요");
        event.preventDefault();
    }
});

function generateYear(tag, base = "0") {
    for (let i = 2020; i < 2025; i++) {
        if (i == base) {
            tag.innerHTML += `<option value="${i}" selected>${i}</option>`;
            continue;
        }
        tag.innerHTML += `<option value="${i}">${i}</option>`;
    }
}

function generateMonth(tag, base = "0") {
    for (let i = 1; i <= 12; i++) {
        if (i == base) {
            tag.innerHTML += `<option value="${i}" selected>${i}</option>`;
            continue;
        }
        tag.innerHTML += `<option value="${i}">${i}</option>`;
    }
}

function generateDay(tag, day, base = "0") {
    for (let i = 1; i <= day; i++) {
        if (i == base) {
            tag.innerHTML += `<option value="${i}" selected>${i}</option>`;
            continue;
        }
        tag.innerHTML += `<option value="${i}">${i}</option>`;
    }
}

function dateChange(tag) {
    let temp = tag.getAttribute("id");
    let tagName = temp.substr(0, temp.length - 1);
    let tagYear = document.getElementById(`${tagName}1`);
    let tagMonth = document.getElementById(`${tagName}2`);
    let tagDay = document.getElementById(`${tagName}3`);
    let selectedYear = tagYear.options[tagYear.selectedIndex].value;
    let selectedMonth = tagMonth.options[tagMonth.selectedIndex].value;
    let day;
    let i;
    switch (selectedMonth) {
        case "2":
            if ((selectedYear % 4 === 0 && selectedYear % 100 !== 0) || selectedYear % 400 === 0) {
                day = 29;
            } else {
                day = 28;
            }
            break;
        case "1":
        case "3":
        case "5":
        case "7":
        case "8":
        case "10":
        case "12":
            day = 31;
            break;
        case "4":
        case "6":
        case "9":
        case "10":
            day = 30;
            break;
    }
    tagDay.innerHTML = "";
    for (i = 1; i <= day; i++) {
        tagDay.innerHTML += `<option value="${i}">${i}</option>`;
    }
}

document.getElementById("create_product_submit").addEventListener("focus", (e) => {
    const dateArray = ["productSellStart", "productSellEnd", "productPeriods", "productPeriode"];
    var date;
    for (let i = 0; i < dateArray.length; i++) {
        date = dateArray[i];
        const target = document.getElementById(date);
        console.log(target);
        console.log(date + "1");
        console.log(date + "2");
        console.log(date + "3");
        target.value =
            document.getElementById(date + "1").value +
            "-" +
            document.getElementById(date + "2").value +
            "-" +
            document.getElementById(date + "3").value;
        console.log(target.value);
    }
    e.preventDefault();
    return false;
});
