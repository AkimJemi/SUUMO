var cheerio = require("cheerio");
const { table } = require("console");
var request = require("request");
const fs = require("fs");
const Iconv = require("iconv-lite");
const csvList = [];
const content = fs.readFileSync("./suumoMetroUrl.txt");
var url =
  "https://suumo.jp/jj/chintai/kensaku/FR301FB003/?ar=060&bs=040&ra=027";
request(url, function (error, response, html) {
  if (error) {
    throw error;
  }
  var $ = cheerio.load(html);
  const list = $("li input").val();
  console.log(list);
  $("li input").each(function () {
    const value = $(this).val();
  });
});
