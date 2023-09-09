var cheerio = require("cheerio");
const { table } = require("console");
var request = require("request");
const fs = require("fs");
const Iconv = require("iconv-lite");
const tab = "\t";
const db_schema = "transportation_info";
const area_prefecture_list = [];
const railway_csv_list = [];
const metro_csv_list = [];
const railwayUrl = fs.readFileSync("./suumoRailwayUrl.txt");
const railwayList = railwayUrl.toString().split("\r\n");
run();

function run() {
  railwayList.forEach((url) => {
    if (url == "" || !url.includes("http")) {
      return;
    }
    var railway_company_name = null;
    var railway_company_no = "";
    request(url, function (error, response, html) {
      if (error) {
        throw error;
      }
      var $ = cheerio.load(html);
      var area_no = url.split("?ar=")[1].split("&bs=")[0];
      var area_name = $(".logo-field-area").text().replace("版", "");
      var prefecture_no = url.split("&ra=")[1];
      var prefecture_name = $("#js-areatabPanel .is-active").text();
      area_prefecture_list.push(
        area_no + tab + area_name + tab + prefecture_no + tab + prefecture_name
      );
      const railway_no_list = [];
      $("table tbody tr").each(function () {
        railway_company_name = $(this).find(".searchtable-title").text();
        railway_company_no = "";
        $(this)
          .find(".searchitem-list li")
          .each(function () {
            var railway_no = $(this).find("input").val();
            var railway_name = $(this).find("label a").text();
            railway_no_list.push("&rn=" + railway_no);
            railway_csv_list.push(
              addTabMethod([
                prefecture_no,
                railway_company_no,
                railway_company_name,
                railway_no,
                railway_name,
              ])
            );
          });
      });
      csvExport(db_schema, "railway", railway_csv_list.join("\n"));
      url = url.replace("FB003", "FB004") + railway_no_list.join("");
      request(url, function (error, response, html) {
        if (error) {
          throw error;
        }
        var $ = cheerio.load(html);
        $(".searchtable tbody tr").each(function () {
          // var railwayName = $(this).find(".searchtable-title label").text();
          var railway_no = $(this).find(".searchtable-title input").val();
          $(this)
            .find("td .searchitem-list li")
            .each(function () {
              var metro_no = $(this).find("input").val();
              var metro_name = $(this).find("label span:first-child").text();
              metro_csv_list.push(
                [railway_company_no, railway_no, metro_no, metro_name].join(tab)
              );
            });
        });
      });
    });
  });
  setTimeout(() => {
    csvExport(db_schema, "metro", metro_csv_list.join("\n"));
    csvExport(db_schema, "area_prefecture", area_prefecture_list.join("\n"));
    setTimeout(() => {
      var postgresQueryExecute = "./postgresQueryExecute.js";
      require(postgresQueryExecute);
    }, 3000);
  }, 5000);
}

function csvExport(schema, table, csvText) {
  const csvStringSjis = Iconv.encode(csvText, "UTF-8");
  fs.writeFileSync("csv/" + schema + "." + table + ".csv", csvStringSjis);
}
function addTabMethod(array) {
  return array.join(tab);
}
