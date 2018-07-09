// //搜索框功能
$("#header").on('click','#a1',function(e){
	e.preventDefault();
	var val=$("#txtSearch").val();
	console.log(val);
	if(val.trim()==""){
		alert("没有您要搜索的商品");
	}else{
		$.ajax({
			type:"POST",
			url:"data/list/fruit_list.php",
			data:{kw:val},
			success:function(data){
				location.href="04-list.html?kw="+val.trim();
			},
			error:function(){
				alert("网络错误，请检查!");
			}
		});
	}
})
