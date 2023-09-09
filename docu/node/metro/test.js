var suumo = suumo || {};

/**
 * [headerfooter suumoのヘッダーフッター用となるオブジェクト]
 *
 * @constructor
 */
suumo.headerfooter = function () {
  console.log("test");
};
suumo.headerfooter.dispBox = function (options) {
  console.log("ee");
};

suumo.headerfooter();

suumo.headerfooter.dispBox();
