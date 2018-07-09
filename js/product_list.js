// 鼠标移动到小图上转换成对应的大图
(()=>{
    var $bIng=$("img.my-big");
    $("img[data-target]").mouseenter(e=>{
        $(e.target).css("opacity",.3);
        $bIng.attr("src",$(e.target).data("target"));
    })
    $("img[data-target]").mouseleave(e=>{
        $(e.target).css("opacity",1);
    })
})();
//鼠标滚动一定高度，产品简介固定在顶部

$(window).scroll(()=>{
    console.log(222);
    if($("body").scrollTop()>=850)
        $(".p-intr").addClass("fixed-nav");
    else
        $(".p-intr").removeClass("fixed-nav");
});

// 点击数量的加减
$("#show-list").on("click","#sp1,#sp2",e=>{
    var $span=$(e.target),
        $input=$span.siblings("input");
    var n=parseInt($input.val());
    if($span.html()=="+"){
        n++;
    }else if(n>1){
        n--;
    }
    $input.val(n);

});