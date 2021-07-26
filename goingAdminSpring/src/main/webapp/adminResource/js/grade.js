/**
 *
 */
"use strict";

const insertButton = document.getElementById("gradeAjax");
insertButton.addEventListener("click", function (event) {
    const grade = document.getElementById("grade");
    const benefit = document.getElementById("benefits");
    const gradeValue = grade.value;
    const benefitValue = benefit.value;
    if ((benefit.value <= 0.999 && benefit.value >= 0.001) || benefit.value == 0) {
        let httpRequest = new XMLHttpRequest();
        const bodyTag = document.getElementById("gradeBox");
        console.log(bodyTag);
        httpRequest.onreadystatechange = function () {
            if (httpRequest.readyState === XMLHttpRequest.DONE) {
                if (httpRequest.status === 201) {
                    alert("상품추가가 완료되었습니다.");
                    bodyTag.innerHTML += `<tr>
                                <th scope="row">${gradeValue}</th>
                                <td>${benefitValue * 100} %</td>
                            </tr>`;

                    realignment(gradeValue, BenefitValue);
                } else {
                    alert("문제발생!! 관리자문의바람");
                }
            }
        };

        httpRequest.open("POST", `/user/addGradeAjax?grade=${gradeValue}&benefits=${benefitValue}`, true);
        httpRequest.send();
        event.preventDefault();
    } else {
        alert("할인율값은 소수점 세자리까지");
        event.preventDefault();
    }
});
