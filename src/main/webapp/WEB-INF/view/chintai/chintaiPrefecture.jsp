<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/tag/chintai/suumoChintaiHeader.tag"%>
<link rel="stylesheet" href="/css/fr-top.css" media="screen" />
<meta charset="UTF-8">
<title>【SUUMO】${areaName }の賃貸(賃貸マンション・アパート)住宅のお部屋探し物件情報</title>
</head>
<script type="text/javascript">

</script>
<body>
    <div class="ui-section">
        <div class="ui-section-header areamap-header">
            <div class="areamap-header-title">
                <h2 class="areatitle">
                    <span class="ui-icon--loupe5"></span> エリア<span
                        class="areatitle-label">から探す</span>
                </h2>
            </div>
            <dl class="areamap-header-new">
                <dt>今週の北海道の新着物件</dt>
                <dd>
                    <ul class="areamap-header-menu">
                        <li class="areamap-header-menu-value"><span>43,732</span>
                            件</li>
                        <li><a
                            href="/chintai/__JJ_FR301FC001_arz1010z2bsz1040z2tcz10401303z2tcz10401304.html">新着物件を見る</a></li>
                    </ul>
                </dd>
                <!-- JJ901FI3131 Start -->
                <dd class="areamap-header-past">
                    <a
                        href="/chintai/hokkaido_/ek_19610/?cb=0.0&amp;cn=9999999&amp;ct=9999999&amp;et=9999999&amp;fmlg=r002&amp;mb=0&amp;mt=9999999&amp;rn=4050&amp;smk=r01"
                        class="ui-btn ui-btn--base areamap-header-btn1">前回の条件で検索する<br>
                        <span class="areamap-header-label1">北海道 |
                            地下鉄東西線 | …</span></a>
                </dd>
                <!-- JJ901FI3131 End -->
            </dl>
        </div>
        <div class="ui-section-body">
            <div class="areamap">
                <div class="areamap-container">
                    <div class="areamap-map">
                        <div class="areamap-field">
                            <c:choose>
                                <c:when test="${area eq 'hokkaido'}">
                                    <jsp:include
                                        page="/WEB-INF/view/top/FR_040_020_CL_02.jsp"></jsp:include>
                                </c:when>
                                <c:when test="${area eq 'tohoku'}">
                                    <jsp:include
                                        page="/WEB-INF/view/top/FR_040_020_CL_02.jsp"></jsp:include>
                                </c:when>
                                <c:when test="${area eq 'kanto'}">
                                    <jsp:include
                                        page="/WEB-INF/view/top/FR_040_030_CL_02.jsp"></jsp:include>
                                </c:when>
                                <c:when test="${area eq 'koshinetsu'}">
                                    <jsp:include
                                        page="/WEB-INF/view/top/FR_040_040_CL_02.jsp"></jsp:include>
                                </c:when>
                                <c:when test="${area eq 'tokai'}">
                                    <jsp:include
                                        page="/WEB-INF/view/top/FR_040_050_CL_02.jsp"></jsp:include>
                                </c:when>
                                <c:when test="${area eq 'kansai'}">
                                    <jsp:include
                                        page="/WEB-INF/view/top/FR_040_060_CL_02.jsp"></jsp:include>
                                </c:when>
                                <c:when test="${area eq 'shikoku'}">
                                    <jsp:include
                                        page="/WEB-INF/view/top/FR_040_070_CL_02.jsp"></jsp:include>
                                </c:when>
                                <c:when test="${area eq 'chugoku'}">
                                    <jsp:include
                                        page="/WEB-INF/view/top/FR_040_080_CL_02.jsp"></jsp:include>
                                </c:when>
                                <c:when test="${area eq 'kyushu'}">
                                    <jsp:include
                                        page="/WEB-INF/view/top/FR_040_090_CL_02.jsp"></jsp:include>
                                </c:when>
                            </c:choose>
                        </div>
                    </div>
                    <div class="areamap-nav">
                        <div class="areamenu_group">
                            <!-- ↓===================================================================================================================↓ -->
                            <!-- ↓/top/FR_040_010_CL_03.html↓ -->
                            <div class="areamenu areamenu-strong">
                                <ul>
                                    <li><a
                                        href="/jj/chintai/kensaku/FR301FB005/?ar=010&amp;bs=040"
                                        class="btn_topsearch01">通勤・通学時間から探す</a></li>
                                    <li><a
                                        href="/chintai/soba/hokkaido/"
                                        class="btn_topsearch02">家賃相場から探す</a></li>
                                    <li><a
                                        href="/chintai/kaisha/hokkaido/"
                                        class="btn_topsearch03">不動産会社を探す</a></li>
                                </ul>
                            </div>
                            <!-- ↑/top/FR_040_010_CL_03.html↑ -->
                            <!-- ↑===================================================================================================================↑ -->
                            <div class="areamenu">
                                <ul>
                                    <!-- ↓===================================================================================================================↓ -->
                                    <!-- ↓/top/FR_040_010_CL_04.html↓ -->
                                    <li><a
                                        href="//gakusei.suumo.jp/chintai/hokkaido/"
                                        target="_blank"
                                        class="btn_topsearch04">学生向け物件</a></li>
                                    <li><a
                                        href="//bridal.suumo.jp/chintai/hokkaido/"
                                        target="_blank"
                                        class="btn_topsearch05">新婚カップル向け物件</a></li>
                                    <!-- ↑/top/FR_040_010_CL_04.html↑ -->
                                    <!-- ↑===================================================================================================================↑ -->
                                    <!-- ↓===================================================================================================================↓ -->
                                    <!-- ↓/top/FR_040_010_CL_05.html↓ -->
                                    <li><a
                                        href="/jj/chintai/top/FR301FA050/?ar=010&amp;bs=040"
                                        class="btn_topsearch06">新築物件</a></li>
                                    <!-- ↑/top/FR_040_010_CL_05.html↑ -->
                                    <!-- ↑===================================================================================================================↑ -->
                                    <!-- ↓===================================================================================================================↓ -->
                                    <!-- ↓/top/FR_040_010_CL_06.html↓ -->
                                    <li><a
                                        href="/tokushu/tenkin/chintai/hokkaido/"
                                        class="btn_topsearch07">転勤特集</a></li>
                                    <!-- ↑/top/FR_040_010_CL_06.html↑ -->
                                    <!-- ↑===================================================================================================================↑ -->
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ↓===================================================================================================================↓ -->
                <!-- ↓/top/FR_040_010_CL_07.html↓ -->
                <div class="searchassist">
                    <div class="searchassist-inner">
                        <div class="searchassist-title">
                            <span><span
                                class="searchassist-title_emphasis">地図</span><br>から探す</span>
                        </div>
                        <div class="searchassist-body">
                            <ul class="searchassist-list">
                                <li><a
                                    href="/map/chintai/hokkaido_/"
                                    class="ui-btn ui-btn--base ui-btn--small"
                                    rel="nofollow">北海道</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="searchassist searchassist--keywordsearch"
                    id="js-kwdSearch">
                    <form action="/jj/chintai/ichiran/FR301FC011/"
                        method="get"
                        name="bukken_ichiran_JJ010FJ001ActionForm"
                        id="bukken_ichiran_JJ010FJ001ActionForm">
                        <input type="hidden" name="ar" value="010">
                        <input type="hidden" name="bs" value="040">
                        <dl>
                            <dt>
                                <span class="ui-icon--loupe7"></span><span><span
                                    class="searchassist--keywordsearch-strong">キーワード</span><br>から探す</span>
                            </dt>
                            <dd>
                                <input type="text" name="fw"
                                    placeholder="地名、駅名、物件名など"
                                    id="FORM_000"
                                    class="js_focus_ballon_trigger">
                                <a href="javascript:void(0);"
                                    id="js-keySearch"
                                    class="ui-btn ui-btn--small ui-btn--search sortbox-parts">検索する</a>
                            </dd>
                            <div
                                class="searchassist-balloon dn js_focus_ballon_target">
                                <div class="searchassist-balloon-inner">
                                    <div
                                        class="searchassist-balloon-object">
                                        <img
                                            src="/img/sprite/inc_search_balloon.png"
                                            width="29" height="10"
                                            alt="">
                                    </div>
                                    <div
                                        class="searchassist-balloon-title">入力例</div>
                                    <div
                                        class="searchassist-balloon-body">
                                        <ul class="ui-list--hz">
                                            <li><a
                                                href="/chintai/keyword/%e3%83%87%e3%82%b6%e3%82%a4%e3%83%8a%e3%83%bc%e3%82%ba/hokkaido/">デザイナーズ</a></li>
                                            <li><a
                                                href="/chintai/keyword/%e3%83%9a%e3%83%83%e3%83%88%e7%9b%b8%e8%ab%87/hokkaido/">ペット相談</a></li>
                                            <li><a
                                                href="/chintai/keyword/%e6%96%b0%e7%af%89/hokkaido/">新築</a></li>
                                            <li><a
                                                href="/chintai/keyword/%e3%83%90%e3%82%a4%e3%82%af/hokkaido/">バイク</a></li>
                                            <li><a
                                                href="/chintai/keyword/%e9%a7%90%e8%bb%8a%e5%a0%b4/hokkaido/">駐車場</a></li>
                                            <li><a
                                                href="/chintai/keyword/IH/hokkaido/">IH</a></li>
                                            <li><a
                                                href="/chintai/keyword/%e3%83%a1%e3%82%be%e3%83%8d%e3%83%83%e3%83%88/hokkaido/">メゾネット</a></li>
                                            <li><a
                                                href="/chintai/keyword/%e5%88%86%e8%ad%b2%e8%b3%83%e8%b2%b8/hokkaido/">分譲賃貸</a></li>
                                            <li><a
                                                href="/chintai/keyword/%e3%83%aa%e3%83%95%e3%82%a9%e3%83%bc%e3%83%a0%e6%b8%88/hokkaido/">リフォーム済</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </dl>
                    </form>
                </div>
                <!-- ↑/top/FR_040_010_CL_07.html↑ -->
                <!-- ↑===================================================================================================================↑ -->
            </div>
        </div>
    </div>
    <%--     <div class="areamap-field-tohoku">
        <c:forEach var="prefecture"
            items="${prefectureList}">
            <dl class="areabox areabox--aomori">
                <dt class="areabox-title">
                    <a href="/chintai/${prefecture.prefecture }/">${prefecture.prefectureName }</a>
                </dt>
                <dd>
                    <ul class="ui-list--hz">
                        <li><a
                            href="/chintai/${prefecture.prefecture }/ensen/" rel="ra=test"
                            class="areabox-link">
                                <div class="areabox-txt">沿線</div>
                        </a></li>
                        <li><a
                            href="/chintai/${prefecture.prefecture }/city/"
                            class="areabox-link">
                                <div class="areabox-txt">エリア</div>
                        </a></li>
                    </ul>
                </dd>
            </dl>
        </c:forEach>
    </div> --%>
</body>
</html>