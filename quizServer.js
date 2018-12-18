const http = require('http');
const db = require('./DBConnection');
const fs = require('fs');
function getResponse(response, filename, filetype) {
    response.writeHead(200, { 'content-type': filetype });
    fs.readFile(filename, (err, fileContents) => {
        if (err)
            throw err;

        response.write(fileContents);
        response.end();
    });
}
http.createServer((request, response) => {
    let filename = './login.html';
    let filetype = 'text/html';
    console.log(request.url)
    if (request.url.includes('.html')) {
        filename = `.${request.url}`; //'.'+request.url
    }
    else if (request.url.includes('.css')) {
        filename = `.${request.url}`;
        filetype = `text/css`;
    }
    else if (request.url.includes('.js')) {
        filename = `.${request.url}`;
        filetype = `text/javascript`;
    }

    switch (request.url) {
        case '/valReq': response.writeHead(200, { 'Content-type': 'text/javascript' });
            request.on('data', (data) => {
                let queryData = JSON.parse(data);
                db.selectStatement(queryData.username, (result) => {
                    let res = "Failed";
                    if (result[0] != undefined) {
                        let pass = result[0].password;
                        if (queryData.password.toString() == pass) {
                            res = "success";
                        }
                    }
                    response.write(res);
                    response.end();

                });
            });

            break;

        case '/register':
            console.log("in register case");
            response.writeHead(200, { 'Content-type': 'application/json' });
            request.on('data', (data) => {

                let registerData = JSON.parse(data)
                let resultset = db.insertStatement(registerData, function (result) {
                    response.write("Registration Successful!!!");
                    response.end();
                });

            });
            break;

        case '/subjectId':

            response.writeHead(200, { 'Content-type': 'application/json' });
            request.on('data', (data) => {
                let numberset = "";
                randomNoGen: for (i = 0; i < 10; i++) {
                    while (1) {
                        let temp = Math.floor(Math.random() * 20) + 1;
                        if (data == 'gk') {
                            temp += 20;
                        }
                        if (!(numberset.includes(temp))) {
                            numberset += (temp + ',');
                            break;
                        }
                    }
                }
                numberset = numberset.slice(0, -1);
                db.fetchQuestion(data, numberset, function (result) {
                    let resultset = JSON.stringify(result);
                    response.write(resultset);
                    response.end();
                });

            });
            break;


        default: getResponse(response, filename, filetype);
    }

}).listen(8080);