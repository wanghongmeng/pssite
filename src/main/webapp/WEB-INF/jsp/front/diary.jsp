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
    #ds-thread #ds-reset a.ds-thread-liked{
        background:none;
    }
    #ds-reset span, #ds-reset strong, #ds-reset label, #ds-reset input{
        color:#aaa;
    }
    #ds-thread #ds-reset .ds-login-buttons p{
        color:#aaa
    }

    #ds-thread #ds-reset .ds-comments-info{
        display: none;
    }
    #ds-thread #ds-reset .ds-toolbar{
        display: none;
    }
    #ds-thread #ds-reset .ds-replybox{
        display: none;
    }
    #ds-thread #ds-reset .ds-comments{
        border-bottom: 1px solid rgba(0, 0, 0, 0.13);
        width: 100%;
    }
    #ds-wrapper #ds-reset .ds-dialog-footer span{
        display:none;
    }
    #ds-wrapper #ds-reset .ds-logo{
        visibility: hidden;
    }
</style>
<div class="content">
    <div id=wraper>
        <div id=main>
            <c:forEach items="${personDiaryList}" var="personDiary">
                <article class='article'>
                    <div class='border'>
                        <div class='jarakgrid'>
                            <h6>${personDiary.entryDate}</h6>
                            <div class='hr'></div>
                            <p style="font-size: 14px;">
                                    ${personDiary.content}&nbsp;&nbsp;
                                <a class="combtn" href="javascript:void(0)" onclick="front.showReply('comDiv${personDiary.id}')">回复</a>
                            </p>
                            <c:if test="${personDiary.picPath != null && personDiary.picPath != ''}">
                                <p><img src="${staticPrefix}${personDiary.picPath}" width="300" /></p>
                            </c:if>
                            <div id="comDiv${personDiary.id}">
                                <div class="ds-thread" data-thread-key="diary${personDiary.id}"></div>
                            </div>
                        </div>
                    </div>
                </article>
            </c:forEach>
        </div>
    </div>
</div>
<jsp:include page="../base/footer.jsp" />