//验证用户名，密码正则
var nameReg=/^[0-9a-zA-Z_\u4e00-\u9fa5]{4,20}$/,
    pwdReg=/^\w{6,20}$/,
    uname=$("#uname"),
    pwd=$("#upwd"),
    pwds=$("#upwds");
//当失去焦点时，验证正则，当验证通过时发送ajax请求查看数据库中是否已经有此用户存在
uname.blur(function(){
    var n=uname.val();
    console.log(n);
    if(nameReg.test(n)){
        //发送ajax请求注册用户
        $.ajax({
            type:"GET",
            url:"data/reg.php",
            data:{uname:n},
            success:function(data){
                if(data.code>0){
                    console.log("成功");
                }else{
                    alert("用户名不可用");
                }
            },
            error:function (err) {
                console.log("网络连接错误，请检查");
            }
        });
    }else{
        //验证不通过时
        alert("请输入正确的用户名");
    }
});
//验证密码
pwd.blur(function() {
   var  p=pwd.val();
    console.log(p);
    if(pwdReg.test(p)){
        console.log("成功");
        return true;
    }else{
        console.log("请输入确认密码");
        return false;
    }
});
//确认密码验证
pwds.blur(function(){
    var ps=pwds.val();
    p=pwd.val();
    if(p===ps){
        console.log("密码正确");
        return true;
    }else{
        alert("两次密码不一致");
        return false;
    }
});
//点击注册按钮时验证
$("#reg1 a").click(function (e) {
    e.preventDefault();
    n=uname.val();
    p=pwd.val();
    ps=pwds.val();
    console.log(n,p,ps);
    if(n==""){
        alert("请输入用户名");
    }else if(p==""){
        alert("请输入密码");
    }else if(ps==""){
        alert("确认密码不能为空");
    }else if(p==ps){
        //验证通过发送ajax请求，跳转到登录页
        $.ajax({
            type:"POST",
            url:"data/regs.php",
            data:{uname:n,upwd:p},
            success:function(data){
                if(data.code==1){
                    location.href="05-login.html";
                }
            },
            error:function () {
                alert("网络出错");
            }
        });
    }
    // if(n&&p&&ps){
    //     $.ajax({
    //         type:"POST",
    //         url:"data/regs.php",
    //         data:{uname:n,upwd:p},
    //         success:function(data){
    //             if(data.code==1){
    //                 location.href="05-login.html";
    //             }
    //         },
    //         error:function () {
    //             alert("网络出错");
    //         }
    //     });
    // }else{
    //     alert("用户名和密码及确认密码不能为空");
    // }
});