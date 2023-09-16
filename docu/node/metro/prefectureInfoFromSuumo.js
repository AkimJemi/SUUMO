var cheerio = require("cheerio");
const { table } = require("console");
var request = require("request");
const fs = require("fs");
const Iconv = require("iconv-lite");
const tab = "\t";
const db_schema = "transportation_info";
const city_csv_list = [];
const cityUrl = fs.readFileSync("./suumoCityUrl.txt");
const cityList = cityUrl.toString().split("\r\n");
run();

function run() {
  cityList.forEach((url) => {
    if (url == "" || !url.includes("http")) {
      return;
    }
    request(url, function (error, response, html) {
      if (error) {
        throw error;
      }
      var $ = cheerio.load(html);
      var prefecture_no = url.split("&ta=")[1];
      $("table tbody tr").each(function () {
        var prefecture_name = $(this).find(".searchtable-title").text();
        if (prefecture_name.includes(tab)) {
          prefecture_name = $(this).find(".searchtable-title a").text();
        }
        $(this)
          .find(".searchitem-list li")
          .each(function () {
            var city_no = $(this).find("input").val();
            var city_name = $(this).find("label span:first-child").text();
            city_csv_list.push(
              addTabMethod([
                prefecture_no,
                "",
                prefecture_name,
                city_no,
                city_name,
              ])
            );
          });
      });
    });
  });
  setTimeout(() => {
    csvExport(db_schema, "prefecture_city", city_csv_list.join("\n"));
    setTimeout(() => {
      var postgresQueryExecute = "./postgresQueryExecute.js";
      require(postgresQueryExecute);
    }, 5000);
  }, 5000);
}

function csvExport(schema, table, csvText) {
  const csvStringSjis = Iconv.encode(csvText, "UTF-8");
  fs.writeFileSync("csv/" + schema + "." + table + ".csv", csvStringSjis);
}
function addTabMethod(array) {
  return array.join(tab);
}
