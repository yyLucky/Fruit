//功能：用户登录
//为按钮绑定单机事件
console.log(111);
$("#d1 a").click(function (e) {
    console.log(111);
    e.preventDefault();
    //获取用户名密码
    var n=$("#uname").val();
    var p=$("#upwd").val();
    //正则验证
    var unameReg=/^[a-zA-Z0-9]{3,8}$/;
    var upwdReg=/^[a-zA-Z0-9]{3,8}$/;
    if(!unameReg.test(n)){
        alert("用户名格式不正确，字母或数字3~8");
        return;
    }
    if(!upwdReg.test(p)){
        alert("密码格式不正确，字母或数字3~8");
        return;
    }
    //发送ajax请求
    $.ajax({
        type:"GET",
        url:"data/login/login.php",
        data:{uname:n,upwd:p},
        success:function (data) {
            //alert(data.code+":"+data.msg);
            console.log(data);
            if(data.code>0){
                sessionStorage.setItem("uname",n);
                //sessionStorage.setItem({"uname":n,"uid":data.uid});
                //sessionStorage.setItem("uid",data.uid);
                // 登录成功跳转首页
                location.href="01-index.html";

            }else{
                alert("用户名和密码不正确");
            }
        },
        error:function (data) {
            alert("您的网络出现故障，请检查");
        }
    });
});


