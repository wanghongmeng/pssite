<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../base/menu.jsp" />
<script language="javascript" type="text/javascript">
    function dyniframesize(down) {
        var pTar = null;
        if (document.getElementById){
            pTar = document.getElementById(down);
        }
        else{
            eval('pTar = ' + down + ';');
        }
        if (pTar && !window.opera){
//begin resizing iframe
            pTar.style.display="block"
            if (pTar.contentDocument && pTar.contentDocument.body.offsetHeight){
//ns6 syntax
                pTar.height = pTar.contentDocument.body.offsetHeight +20;
                pTar.width = pTar.contentDocument.body.scrollWidth+20;
            }
            else if (pTar.Document && pTar.Document.body.scrollHeight){
//ie5+ syntax
                pTar.height = pTar.Document.body.scrollHeight;
                pTar.width = pTar.Document.body.scrollWidth;
            }
        }
    }
</script>
<iframe src ="http://localhost/wordpress" frameborder="0" marginheight="0" marginwidth="0" frameborder="0" scrolling="auto" id="ifm" name="ifm" onload="javascript:dyniframesize('ifm');" width="100%">
</iframe>
<jsp:include page="../base/footer.jsp" />