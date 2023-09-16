const fs = require("fs");
const Iconv = require("iconv-lite");

var url = "'C:/work/sts-4.15.3.RELEASE-workspace/Suumo/docu/node/metro/csv/";
const list = [];
fs.readdir("./csv", (err, files) => {
  files.forEach((file) => {
    console.log(file);
    if (file == "bk") {
      return;
    }
    var schema_table_name = file.replace("." + file.split(".")[2], "");
    console.log(schema_table_name);
    var truncate = "TRUNCATE " + schema_table_name + ";";
    var query_execute =
      "COPY " + schema_table_name + " FROM " + url + file + "';";
    queryExecute(truncate + query_execute);
  });
});

function queryExecute(query_execute) {
  var { Pool } = require("pg");
  const pool = new Pool({
    host: "localhost",
    database: "suumo",
    user: "postgres",
    password: "1234",
    port: 5432,
  });
  pool.connect((err, client) => {
    const query = {
      text: query_execute,
    };
    pool.query(query, (err, result) => {
      if (err) throw err;
      pool.end();
      process.exit();
    });
  });
}
