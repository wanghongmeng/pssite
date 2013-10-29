<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../base/menu.jsp" />
<style type="text/css">
    #ds-thread #ds-reset .ds-powered-by {
        display: none;
    }
    #ds-thread #ds-reset .ds-comment-body p{
        color:#AAA;
    }
    #ds-thread #ds-reset a.ds-like-thread-button{
        -moz-border-bottom-colors: none;
        -moz-border-left-colors: none;
        -moz-border-right-colors: none;
        -moz-border-top-colors: none;
        background:none;
        text-shadow: none;
        border-color: #CCCCCC #CCCCCC #AAAAAA;
        border-style: solid;
        border-width: 1px;
        margin-right: 15px;
        padding: 4px 8px;
    }
    #ds-thread #ds-reset a.ds-like-thread-button span{
        color:#aaa
    }
    #ds-reset span, #ds-reset strong, #ds-reset label, #ds-reset input{
        color:#aaa;
    }
    #ds-thread #ds-reset .ds-login-buttons p{
        color:#aaa
    }
    #ds-thread #ds-reset .ds-comments{
        background-color: #2D2D2D;
        border-bottom: 1px solid rgba(0, 0, 0, 0.13);
        width: 100%;
    }
    #ds-thread #ds-reset .ds-comments-info{
        display: none;
    }
</style>
<script>
    $(document).ready(function(){
        $(".popp").colorbox({rel:'popp'});
    });
</script>
<ul class="thumbnails">
    <c:forEach items="${photoList}" var="photo">
        <li class="span3" style="width:20%">
            <div class="thumbnail">
                <a class="popp" href="${photo.picPath}" title="${photo.comments}">
                    <img style="width:100%" alt="${photo.comments}" src="${photo.picPath}" onclick="showImage('${photo.picPath}')" />
                </a>
            </div>
        </li>
    </c:forEach>
</ul>
<div class="ds-thread"></div>
<jsp:include page="../base/footer.jsp" />