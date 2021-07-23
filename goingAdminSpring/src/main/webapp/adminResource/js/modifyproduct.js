"use strict";

let productss = productSellStart.split("-");
let productse = productSellEnd.split("-");
let productps = productPeriods.split("-");
let productpe = productPeriode.split("-");

generateYear(document.getElementById("productSellStart1"), productss[0]);
generateMonth(document.getElementById("productSellStart2"), productss[1]);
generateDay(document.getElementById("productSellStart3"), 31, productss[2]);

generateYear(document.getElementById("productSellEnd1"), productse[0]);
generateMonth(document.getElementById("productSellEnd2"), productse[1]);
generateDay(document.getElementById("productSellEnd3"), 31, productse[2]);

generateYear(document.getElementById("productPeriods1"), productps[0]);
generateMonth(document.getElementById("productPeriods2"), productps[1]);
generateDay(document.getElementById("productPeriods3"), 31, productps[2]);

generateYear(document.getElementById("productPeriode1"), productpe[0]);
generateMonth(document.getElementById("productPeriode2"), productpe[1]);
generateDay(document.getElementById("productPeriode3"), 31, productpe[2]);

let pSellYN = document.getElementById("productSellYN");
for (let i = 0; i < pSellYN.childNodes.length; i++) {
    if (pSellYN.childNodes[i].value === productSellYN) {
        pSellYN.childNodes[i].setAttribute("checked", "checked");
    }
}
