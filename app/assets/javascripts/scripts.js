$(document).ready(function(){
    $(".copy").zclip({
        path:'ZeroClipboard',
        copy:$('.copy').text(),
        beforeCopy:function(){},
        afterCopy:function(){alert("Текст скопирован")}
    });
});

jQuery(document).ready(function($){
    $('.icon-menu').click(function(event){
        $('.right_menu').toggleClass('active');
    });
});
