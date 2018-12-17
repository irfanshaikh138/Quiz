var result;

function fetchQuestion(subjectId) {
    let xhr = new XMLHttpRequest();
    xhr.open('POST', '/subjectId', true);
    xhr.setRequestHeader("Content-Type", "text/plain");
    xhr.onreadystatechange = function () { // Call a function when the state changes.
        if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
            // console.log("got outputtt");
            result = JSON.parse(xhr.response);
            let queBody = document.getElementById("queBody");

            for (queNo = 1; queNo <= 10; queNo++) {
                let que = document.createElement("div");
                que.id = `q${queNo}`;
                let a = document.createElement("input");
                let b = document.createElement("input");
                let c = document.createElement("input");
                let d = document.createElement("input");

                a.type = "radio";
                a.name = `q${queNo}`;
                a.value = `${result[queNo - 1].a}`;
                let label1=document.createElement("label");
                label1.appendChild(a);
                label1.appendChild(document.createTextNode(`${result[queNo - 1].a}`));

                b.type = "radio";
                b.name = `q${queNo}`;
                b.value = result[queNo - 1].b;
                let label2=document.createElement("label");
                label2.appendChild(b);
                label2.appendChild(document.createTextNode(`${result[queNo - 1].b}`));

                c.type = "radio";
                c.name = `q${queNo}`;
                c.value = result[queNo - 1].c;
                let label3=document.createElement("label");
                label3.appendChild(c);
                label3.appendChild(document.createTextNode(`${result[queNo - 1].c}`));

                d.type = "radio";
                d.name = `q${queNo}`;
                d.value = result[queNo - 1].d;
                let label4=document.createElement("label");
                label4.appendChild(d);
                label4.appendChild(document.createTextNode(`${result[queNo - 1].d}`));

                que.innerText = queNo + ")" + result[queNo - 1].questions;
                que.appendChild(label1);
                que.appendChild(label2);
                que.appendChild(label3);
                que.appendChild(label4);
                que.appendChild(document.createElement("hr"));
                queBody.appendChild(que);

            }
        }
    }
    xhr.send(subjectId.value);

}