<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta charset="UTF-8">
<style type="text/css">
.areabox-middle {
    display: flex;
    justify-content: space-around;
    text-align: left;
}

.areabox-middle-box-header {
    padding: 20px 15px;
    width: 50%;
}

.areabox-middle-box-bottom {
    display: grid;
    width: 50%;
    text-align: left;
    grid-template-columns: 1fr 1fr 1fr;
}

.areabox-bottom {
    text-align: center;
}
</style>
<title>【SUUMO】${sessionScope.areaValue }の賃貸(賃貸マンション・アパート)住宅のお部屋探し物件情報</title>
</head>
<body>
    <div>
        <div>
            <h2>東京都 - 沿線を選択</h2>
        </div>
        <div>
            <div class="selectareatitle">
                <span class="fr_search-icon fr_search-icon--checkbox"></span><span
                    class="selectareatitle-b">沿線にチェック</span>をいれてください（複数選択できます）
            </div>
            <form action="">
                <c:forEach items="${transportationInfo}" var="metro">
                    <div class="areabox-middle">
                        <div class="areabox-middle-box-header">
                            <h4>${metro.getKey()}</h4>
                        </div>
                        <div class="areabox-middle-box-bottom">
                            <c:forEach items="${metro.getValue()}"
                                var="subMetro">
                                <div>
                                    <input type="checkbox" name="rn"
                                        value="${subMetro.no}">${subMetro.railway}</div>
                            </c:forEach>
                        </div>
                    </div>
                </c:forEach>
                <div class="areabox-bottom">
                    <a href="javascript:void(0);" title="絞り込む"
                        id="js-gotoEkiBtn" class="ui-btn--more"><span
                        class="ui-btn ui-btn--more-inner squeeze_action_btn squeeze_action_btn--large">チェックした沿線の駅を絞り込む</span></a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>