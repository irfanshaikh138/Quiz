var mysql = require('mysql');

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    database: "quiz_db"
});

con.connect(function (err) {
    if (err) throw err;
    console.log("Connected!");
});

let insertStatement = (data, callback) => {
    var sql = `INSERT INTO userInfo values(null, '${data.username}','${data.password}')`;
    con.query(sql, function (err, result) {
        if (err) throw err;
        callback(result);
        console.log("data added");
    });
};

let insertResult = (data, callback) => {
    var sql = `INSERT INTO userInfo values(null, '${data.username}','${data.password}')`;
    con.query(sql, function (err, result) {
        if (err) throw err;
        callback(result);
        console.log("data added");
    });
};

let selectStatement = (username, cb) => {
    var sql = `select password from userInfo where username='${username}'`;
    con.query(sql, function (err, result) {
        if (err) throw err;
        cb(result);
    });
};

let fetchQuestion = (subject, Qid, callback) => {
    let sql = `select questions,a,b,c,d,ans from questionBank where Subject = '${subject}' and id in (${Qid})`;
    console.log(sql);
    con.query(sql, function (err, result) {
        if (err) throw err;
        callback(result);
    });
};


module.exports = { insertStatement, selectStatement , fetchQuestion };

