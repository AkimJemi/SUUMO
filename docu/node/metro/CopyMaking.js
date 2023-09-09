const fs = require("fs");
const Iconv = require("iconv-lite");
var { Pool } = require("pg");
const pool = new Pool({
  host: "localhost",
  database: "suumo",
  user: "postgres",
  password: "1234",
  port: 5432,
});
pool.connect();

var tableName = "transportation_info.metro_sub";
var url = "'C:/work/sts-4.15.3.RELEASE-workspace/Suumo/docu/node/metro/csv/";
var copyFoldPath = "copy/CopyMetro.csv";

const list = [];
fs.readdir("./csv", (err, files) => {
  files.forEach((file) => {
    var prefix =
      "COPY " +
      file.replace("." + file.split(".")[2], "") +
      " FROM " +
      url +
      file +
      "';";
    list.push(prefix);
  });
  const csvStringSjis = Iconv.encode(list.join("\n"), "UTF-8");
  fs.writeFileSync(copyFoldPath, csvStringSjis);
});
function queryExecute(query) {
  //query example
  const query = {
    text: query,
  };
  pool.query(query, (err, res) => {
    if (err) {
      console.log(err.stack);
    } else {
      console.log(res.rows[0]);
    }
  });
}
