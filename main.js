var result;
var int;

function fetchQuestion(subjectId) {
    let msg = confirm("Would you like to start a quiz???");
    if (msg == true) {
        subjectId.style.display = 'none';
        let buttonid = document.getElementById("buttonid");
        buttonid.style.display = 'block';
        let queBody = document.getElementById("queBody");
        queBody.style.display = 'block';
        let xhr = new XMLHttpRequest();
        xhr.open('POST', '/subjectId', true);
        xhr.setRequestHeader("Content-Type", "text/plain");
        xhr.onreadystatechange = function () { // Call a function when the state changes.
            if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
                // console.log("got outputtt");
                result = JSON.parse(xhr.response);
                let queBody = document.getElementById("queBody");
                queBody.innerHTML = "";
                for (queNo = 1; queNo <= 10; queNo++) {
                    let que = document.createElement("div");
                    que.id = `q${queNo}`;
                    let a = document.createElement("input");
                    let b = document.createElement("input");
                    let c = document.createElement("input");
                    let d = document.createElement("input");

                    a.type = "radio";
                    a.name = `q${queNo}`;
                    a.value = "a";
                    let label1 = document.createElement("label");
                    label1.appendChild(a);
                    label1.appendChild(document.createTextNode(`${result[queNo - 1].a}`));

                    b.type = "radio";
                    b.name = `q${queNo}`;
                    b.value = "b";
                    let label2 = document.createElement("label");
                    label2.appendChild(b);
                    label2.appendChild(document.createTextNode(`${result[queNo - 1].b}`));

                    c.type = "radio";
                    c.name = `q${queNo}`;
                    c.value = "c";
                    let label3 = document.createElement("label");
                    label3.appendChild(c);
                    label3.appendChild(document.createTextNode(`${result[queNo - 1].c}`));

                    d.type = "radio";
                    d.name = `q${queNo}`;
                    d.value = "d";
                    let label4 = document.createElement("label");
                    label4.appendChild(d);
                    label4.appendChild(document.createTextNode(`${result[queNo - 1].d}`));

                    que.innerText = queNo + ")" + result[queNo - 1].questions;
                    que.appendChild(document.createElement("br"));
                    que.appendChild(label1);
                    que.appendChild(document.createElement("br"));
                    que.appendChild(label2);
                    que.appendChild(document.createElement("br"));
                    que.appendChild(label3);
                    que.appendChild(document.createElement("br"));
                    que.appendChild(label4);
                    que.appendChild(document.createElement("hr"));
                    queBody.appendChild(que);


                }
                let timer = document.getElementById("timer");
                timer.style.display = 'block';
                let clock = 10;
                timer.innerText = clock;
                int = setInterval(() => {
                    if (clock == 0) {
                        alert("Time Up");
                        timer.style.display = 'none';
                        showResults();
                    }
                    timer.innerText = --clock;

                }, 60000);
            }
            let imageid = document.getElementById("imageid");
            imageid.style.display = 'none';
        }
        xhr.send(subjectId.value);
    }
    else {
        subjectId.selectedIndex = 0;
    }

}
function showResults() {
    let count = 0;
    clearInterval(int);
    let timer = document.getElementById("timer");
    timer.style.display = 'none';
    for (i = 1; i <= 10; i++) {
        let res = document.querySelector(`input[name="q${i}"]:checked`);
        if (res == null) { continue; }
        if (result[i - 1].ans == res.value) {
            count++;
        }
    }
    let subjectId = document.getElementById("subject");
    subjectId.style.display = 'block';
    let index = subjectId.selectedIndex;
    subjectId.options[index].disabled = true;
    subjectId.selectedIndex = 0;
    alert("Your Score is:" + count);
    let queBody = document.getElementById("queBody");
    queBody.style.display = 'none';
    let buttonid = document.getElementById("buttonid");
    buttonid.style.display = 'none';
}