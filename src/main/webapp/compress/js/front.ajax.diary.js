$(function(){var e=$("#nick").val(),t=$("#staticPrefix").val(),n=parseInt($("#pageSize").val());$(".content").scrollPagination({contentPage:"/front/"+e+"/ajax/diary",contentData:{pageSize:n},scrollTarget:$(window),heightOffset:10,beforeLoad:function(){$("#loading").fadeIn()},success:function(e){e.length==0?($(".content").stopScrollPagination(),$("#loading").fadeOut()):(e.length<n&&($(".content").stopScrollPagination(),$("#loading").fadeOut()),$.each(e,function(e,n){var r=$("<div />").attr("class","diary").appendTo($(".content")),i=$("<h5 />").html(n.entryDate).appendTo($(r)),s=$("<div />").attr("class","hr").appendTo($(r)),o=$("<p />").attr("class","size14").html(n.content).appendTo($(r)),u=$("<a />").attr("class","combtn").attr("href","javascript:void(0)").html("回复").bind("click",function(){front.showReply("comDiv"+n.id)}).appendTo($(o));if(n.picPath!=null&&n.picPath!="")var a=$("<a />").attr("class","popp").attr("href",t+n.picPath).attr("title",n.content).appendTo($(r)),f=$("<img />").attr("src",t+n.picPath).appendTo($(a));var l=$("<div />").attr("id","comDiv"+n.id).appendTo($(r)),c=$("<div />").attr("class","ds-thread").attr("data-thread-key","diary"+n.id).appendTo($(l))}),$(".popp").colorbox({rel:"popp"}))}})})