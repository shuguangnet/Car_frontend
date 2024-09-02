var api = "http://127.0.0.1:8888"
var token = window.localStorage.getItem("token");
if (!token) {
    alert("您没有进行登录操作，请重新登录")
    window.location.href = "./login.html"
}

function tuichu() {
    window.localStorage.clear()
    alert("您已经退出登录")

    window.location.href = "./login.html"
}
var token = window.localStorage.getItem('token')