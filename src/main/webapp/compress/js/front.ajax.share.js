$(function(){var e=$("#nick").val(),t=$("#staticPrefix").val(),n=parseInt($("#pageSize").val());$(".content").scrollPagination({contentPage:"/front/"+e+"/ajax/share",contentData:{pageSize:n},scrollTarget:$(window),heightOffset:10,beforeLoad:function(){$("#loading").fadeIn()},success:function(r){r.length==0?($(".content").stopScrollPagination(),$("#loading").fadeOut()):(r.length<n&&($(".content").stopScrollPagination(),$("#loading").fadeOut()),$.each(r,function(n,r){var i='<div class="share">';i+='<a href="/front/'+e+"/share/"+r.id+'" target="_blank">',i+='<img style="display: inline;" src="'+t+r.picPath+'" /></a>',i+='<a class="comment" href="/front/'+e+"/share/"+r.id+'" target="_blank">'+r.shareComment+"</a>",i+='<span class="size13">'+r.entryDate+"</span></div>",$(".content").append(i)}))}})})