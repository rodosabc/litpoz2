
$(document).ready(function(){
    $(".copy").zclip({
        path:'ZeroClipboard',
        copy:$('.copy').text(),
        beforeCopy:function(){},
        afterCopy:function(){alert("Текст скопирован")}
    });
});

$(document).on('page:load', function() {
    $(".icon-menu").click(function(t){ $(".right_menu").toggleClass("active")
    })});