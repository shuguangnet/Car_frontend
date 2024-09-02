// 登录api接口
var api = "http://127.0.0.1:8888"
    //登录方法
function login() {
    // ajax请求
    $.ajax({
        url: `${api}/api/admin_login`,
        type: 'post',
        data: {
            AdminUser: $('#AdminUser').val(),
            AdminPassWord: $('#AdminPassWord').val(),
        },
        success: function(res) {
            if (res.status == 200) {
                // 将token存入licalstorage中

                localStorage.setItem('token', res.token)
                layui.use(['form', 'button', 'popup'], function() {
                    var button = layui.button;
                    var popup = layui.popup;
                    // / 动画
                    button.load({
                        elem: '.login',
                        time: 1500,
                        done: function() {
                            popup.success("登录成功", function() {
                                location.href = "index.html"
                            });
                        }
                    })
                    return false;
                });
            } else {
                alert("登录失败，请稍后重试")
            }

        },
        error: function(error) {
            // alert(error.message)
            console.log(error)
        }
    })
}