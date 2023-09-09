/**
 *
 */
var suumo = suumo || {};
suumo.frSearch = function() {
};
suumo.headerfooter = function() {
};
suumo.headerfooter.goScroll = function(options) {
	var scrollBar = options.scrollTarget || 'body, html';
	var adjustVal = options.adjustVal || 0;
	var scrollTopVal = $(options.targetID).offset().top + adjustVal;
	// ライトボックス内のスクロール対応
	if (options.lightboxFlg) {
		scrollTopVal = $(options.targetID).position().top + $(scrollBar).scrollTop() + adjustVal;
	}
	window.setTimeout(function() {
		$(scrollBar).animate({
			scrollTop: scrollTopVal
		}, 500);
	});
};

$('#js-contents-mainPanel')
	.delegate('#js-gotoEkiBtn', 'click', function() {
		// チェックした沿線の駅を絞込むボタン
		if ($('#js-gotoEkiForm :checkbox[checked]').length === 0) {
			// エラーメッセージを表示
			$('#js-gotoEkiErrorPanel').show();
			// マイバーがエラー表示に重ならないようにスクロール
			var adjustVal = -56;
			if ($('#js-mylist').length === 0) {
				// マイバーが無い場合、マイバー分値を減らす
				adjustVal = -10;
			}
			suumo.headerfooter.goScroll({
				'targetID': '#js-areaSelectPanel',
				'adjustVal': adjustVal
			});
			return false;
		}

		window.location.href = $('#js-gotoEkiForm').attr('action') + '?' + $('#js-gotoEkiForm').serialize();
		return false;
	});