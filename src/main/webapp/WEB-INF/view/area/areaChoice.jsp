<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/tag/area/suumoAreaHeader.tag"%>
<meta charset="UTF-8">
<title>SUUMO不動産</title>
<style type="text/css">
.areabox {
    display: inline-block;
    height: 100px;
    width: 130px;
}
</style>
</head>
<body>
    <div id="js-areamap_monthly_background"></div>
    <div class="areamap">
        <div class="areamap-map">
            <div class="areamap-map-inner">
                <section class="ui-section--map">
                    <header class="ui-section-header">
                        <h2 class="areatitle">
                            <i class="ui-icon--loupe8"></i>エリア<span
                                class="areatitle-label">から探す</span>
                        </h2>
                    </header>
                    <div class="ui-section-body">
                        <div class="areamap-field">
                            <div id="js-areamap_monthly_background"
                                class="areamap_monthly_background js-areamap_monthly_background--08">
                                <div class="areabox areabox--hokkaido">
                                    <a href="/hokkaido/"
                                        class="areabox-link">
                                        <div class="areabox-title">
                                            <h2>北海道</h2>
                                        </div>
                                        <div class="areabox-list">北海道</div>
                                    </a>
                                </div>
                                <div class="areabox areabox--tohoku">
                                    <a href="/tohoku/"
                                        class="areabox-link">
                                        <div class="areabox-title">
                                            <h2>東北</h2>
                                        </div>
                                        <div class="areabox-list">
                                            青森|岩手|秋田<br>宮城|山形|福島
                                        </div>
                                    </a>
                                </div>
                                <div class="areabox areabox--hokuriku">
                                    <a href="/koshinetsu/"
                                        class="areabox-link">
                                        <div class="areabox-title">
                                            <h2>甲信越・北陸</h2>
                                        </div>
                                        <div class="areabox-list">
                                            山梨|長野|新潟<br>富山|石川|福井
                                        </div>
                                    </a>
                                </div>
                                <div class="areabox areabox--kanto">
                                    <a href="/kanto/"
                                        class="areabox-link">
                                        <div class="areabox-title">
                                            <h2>関東</h2>
                                        </div>
                                        <div class="areabox-list">
                                            東京|神奈川<br>千葉|埼玉|茨城<br>栃木|群馬
                                        </div>
                                    </a>
                                </div>
                                <div class="areabox areabox--tokai">
                                    <a href="/tokai/"
                                        class="areabox-link">
                                        <div class="areabox-title">
                                            <h2>東海</h2>
                                        </div>
                                        <div class="areabox-list">
                                            愛知|静岡<br>岐阜|三重
                                        </div>
                                    </a>
                                </div>
                                <div class="areabox areabox--chugoku">
                                    <a href="/chugoku/"
                                        class="areabox-link">
                                        <div class="areabox-title">
                                            <h2>中国</h2>
                                        </div>
                                        <div class="areabox-list">
                                            岡山|広島<br>鳥取|島根<br>山口
                                        </div>
                                    </a>
                                </div>
                                <div class="areabox areabox--kansai">
                                    <a href="/kansai/"
                                        class="areabox-link">
                                        <div class="areabox-title">
                                            <h2>関西</h2>
                                        </div>
                                        <div class="areabox-list">
                                            大阪|兵庫|京都<br>滋賀|奈良|和歌山
                                        </div>
                                    </a>
                                </div>
                                <div class="areabox areabox--sikoku">
                                    <a href="/shikoku/"
                                        class="areabox-link">
                                        <div class="areabox-title">
                                            <h2>四国</h2>
                                        </div>
                                        <div class="areabox-list">
                                            愛媛|香川<br>高知|徳島
                                        </div>
                                    </a>
                                </div>
                                <div class="areabox areabox--kyushu">
                                    <a href="/kyushu/"
                                        class="areabox-link">
                                        <div class="areabox-title">
                                            <h2>九州・沖縄</h2>
                                        </div>
                                        <div class="areabox-list">
                                            福岡|佐賀|長崎<br>熊本|大分|宮崎<br>鹿児島|沖縄
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</body>
</html>