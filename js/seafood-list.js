//加载商品表
// (()=>{
//     $.get("data/list/seafood.php")
//         .then(data=> {
//             var imgs = [...data];
//             var html="";
//             for(var img of imgs){
//                 html+=
//                     `<li class="lis">
// 				<div class="warp">
// 					<a href="${img.href}">
// 						<img src="${img.img}">
// 					</a>
// 				</div>
// 				<div class="s-info">
// 					<span>${img.title}</span>
// 					<span>${img.price}</span>
// 				</div>
// 				<div class="s-kg">
// 					<span>${img.spec}</span>
// 				</div>
// 			</li>`
//             }
//             $("#list1").html(html);
//         })
// })();

//加载商品和搜索功能
(()=>{
    var href =location.search;
    var kw=href.slice(1);
    console.log(kw);
    $.ajax({
        data:kw,
        url:"data/list/seafood.php",
        type:"GET",
        success:function(data){
            console.log(data);
            var imgs = [...data];
            var html="";
            for(var img of imgs){
                html+=
                    `<li class="lis">
				<div class="warp">
					<a href="${img.href}">
						<img src="${img.img}">
					</a>
				</div>
				<div class="s-info">
					<span>${img.title}</span>
					<span>${img.price}</span>
				</div>
				<div class="s-kg">
					<span>${img.spec}</span>
				</div>
			</li>`
            }
            $("#list1").html(html);
        },
        error:function(){
            alert("网络出错，请检查");
        }
    })
})();
//点击价格从低到高排序
$("#a2").click(function(e) {
    console.log(99);
    $("#a2").children().addClass("activeColor").parent().siblings().children().removeClass("activeColor");
    e.preventDefault();
    $.ajax({
        type:"GET",
        url:"data/list/seafood_order.php",
        data:{num:1},
        success:function(data){
            console.log(data);
            var imgs = [...data];
            var html="";
            console.log(imgs);
            for(var img of imgs){
                html+=
                    `<li class="lis">
            <div class="warp">
                <a href="${img.href}">
                    <img src="${img.img}">
                </a>
            </div>
            <div class="s-info">
                <span>${img.title}</span>
                <span>${img.price}</span>
            </div>
            <div class="s-kg">
                <span>${img.spec}</span>
            </div>
        </li>`;
            }
            $("#list1").html(html);

        },
        error:function(){
            alert("网络错误，请检查！");
        }
    });
});
//点击价格从高到底排序
$("#a3").click(function(e) {
    console.log(99);
    e.preventDefault();
    $("#a3").children().addClass("activeColor").parent().siblings().children().removeClass("activeColor");
    $.ajax({
        type:"GET",
        url:"data/list/seafood_order.php",
        data:{num:2},
        success:function(data){
            console.log(data);
            var imgs = [...data];
            var html="";
            console.log(imgs);
            for(var img of imgs){
                html+=
                    `<li class="lis">
            <div class="warp">
                <a href="${img.href}">
                    <img src="${img.img}">
                </a>
            </div>
            <div class="s-info">
                <span>${img.title}</span>
                <span>${img.price}</span>
            </div>
            <div class="s-kg">
                <span>${img.spec}</span>
            </div>
        </li>`;
            }
            $("#list1").html(html);

        },
        error:function(){
            alert("网络错误，请检查！");
        }
    });
});
//搜索框功能
$("#header").on('click','#a1',function(e){
	e.preventDefault();
	var val=$("#txtSearch").val();
	console.log(val);
	if(val.trim()==""){
		alert("没有您要搜索的商品");
	}else{
		$.ajax({
			type:"POST",
			url:"data/search.php",
			data:{kw:val},
			success:function(data){
				location.href="10_seafood_list.html?kw="+val.trim();
			},
			error:function(){
				alert("网络错误，请检查!");
			}
		});
	}
});