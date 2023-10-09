<script type="text/javascript">
var key = new Array();
key['1'] = "/";
key['2'] = "<%=request.getContextPath()%>/${area}/";
key['3'] = "<%=request.getContextPath()%>/chintai/${area}/";

function getKey(keyStroke) {
    if ((event.srcElement.tagName != 'INPUT')
            && (event.srcElement.tagName != 'TEXTAREA')) {
        isNetscape = (document.layers);
        eventChooser = (isNetscape) ? keyStroke.which : event.keyCode;
        which = String.fromCharCode(eventChooser).toLowerCase();
        for ( var i in key)
            if (which == i)
                window.location = key[i];
    }
}
document.onkeypress = getKey;
</script>