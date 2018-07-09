//登录成功时，顶部显示欢迎...
$("#header").load("01-header.html",function(){
	var uname=sessionStorage.getItem("uname");
	$("#a_login").html("欢迎:"+uname);
	console.log(uname);
	$("#a_login").attr("href","javascript:;");
	$("#a_reg").html("退出");
	$("#a_reg").attr("href","05-login.html");
});
$("#footer").load("03-footer.html");
// 轮播下四张图片
(()=>{
	$.get("data/01-index/floors.php")
	.then(data=>{
		var imgs=[...data];
		console.log(data);
		var html="";
		for(var img of imgs){
			html+=
			`<li>
					<a href="javascript:;">
						<img src="${img.img}">
					</a>
				</li>`
		}
		$("ul.middle-img").html(html);
	})
})();
// 一楼 家庭量版
(()=>{
	$.get("data/01-index/floor1.php")
	.then(data=>{
		console.log(data);
		var imgs=[...data];
		//imgs.push(imgs[0]);
		var html="";
		for(var img of imgs){
			html+=
			`<li>
					<div class="pic">
						<a href="${img.href}">
							<img src="${img.pic}" alt="">
						</a>
					</div>
					<div class="s-info">
						<div>${img.title}</div>
						<div class="s-unit">${img.price}/${img.spec}</div>
					</div>
				</li>`
		}
		$("ul.1f").html(html);
	})
})();
//二楼 全球鲜果
(()=>{
    $.get("data/01-index/floor2.php")
        .then(data=>{
            console.log(data);
            var imgs=[...data];
            var html="";
            for(var img of imgs){
                html+=
                    `<li>
					<div class="pic">
						<a href="${img.href}">
							<img src="${img.pic}" alt="">
						</a>
					</div>
					<div class="s-info">
						<div>${img.title}</div>
						<div class="s-unit">${img.price}/${img.spec}</div>
					</div>
				</li>`
            }
            $("ul.2f").html(html);
        })
})();
//三楼 生鲜美食
(()=>{
    $.get("data/01-index/floor3.php")
        .then(data=>{
            console.log(data);
            var imgs=[...data];
            var html="";
            for(var img of imgs){
                html+=
                    `<li>
					<div class="pic">
						<a href="${img.href}">
							<img src="${img.pic}" alt="">
						</a>
					</div>
					<div class="s-info">
						<div>${img.title}</div>
						<div class="s-unit">${img.price}/${img.spec}</div>
					</div>
				</li>`
            }
            $("ul.3f").html(html);
        })
})();
//加载轮播
(()=>{
	var timer;
	const LIWIDTH=$("ul.banner-img").css("width").slice(0,-2);
	var n =0,canMove=true;
	var WAIT=3000,INTERVAL=1000;
	var $bannerimg= $("[data-load=bannerImgs]");
	var $bannerind= $("[data-load=bannerInds]");
	//加载图片和圆点
	$.get("data/01-index/banners.php")
		.then(data=>{
			var banners=[...data];
			banners.push(banners[0]);
			var html="";
			for(var img of banners){
					html+=
					`<li><a href="${img.href}"><img src="${img.img}" alt=""></a></li>`;
			}
			$bannerimg.html(html);
            $bannerimg.children().css("width",LIWIDTH);
            $bannerimg.css("width",LIWIDTH*banners.length);
			var ind = '<li></li>'.repeat(banners.length-1);
			$bannerind.html(ind);
			$bannerind.children().first().addClass('hover');
			return new Promise(resolve=>resolve());
            console.log(1);
		})
		//图片播放
		 .then(()=>{
		 	function move(){
		 		if(canMove){
		 			timer = setTimeout(()=>{
		 				n++;
		 				$bannerimg.animate(
		 						{left:-LIWIDTH*n},
		 						INTERVAL,
		 						()=>{
		 							if(n<$bannerimg.children().length-1){
		 								$bannerind.children(":eq("+n+")")
		 								.addClass("hover")
		 								.siblings()
		 								.removeClass("hover");
		 							}else{
		 								n=0;
		 								$bannerimg.css("left",0);
		 								$bannerind.children().first().addClass("hover")
		 								.siblings().removeClass("hover");
		 							}
		 							move();
		 						}
		 					);
		 			},WAIT);
		 				console.log(123);
		 		}
		 	};
		 	move();
        //鼠标悬停时停止播放
		 	$bannerimg.hover(()=>{
		 		clearTimeout(timer);
		 		timer=null;
		 		canMove=false;
		 	},
		 	()=>{
		 		canMove=true;
		 		move();
		 	});
		 	//点击圆点跳到对应图片
		 	$bannerind.click(e=>{
		 		var $li = $(e.target);
        
                 $li.addClass("hover").siblings().removeClass("hover");
		 		n=$li.index();
		 		$bannerimg.stop(true).animate(
		 			{left:-LIWIDTH*n},
		 			INTERVAL
        
		 		);console.log(-LIWIDTH*n);
			
		 	});
		 })
})();
