// ------------api在token拦截器文件中
// 设置全局AJAX配置
$.ajaxSetup({
    beforeSend: function(xhr) {
        // 在发送请求前设置请求头信息
        xhr.setRequestHeader('Authorization', token);
    },
    error: function(xhr, status, error) {
        if (xhr.status === 401) {
            // 如果状态码为401，则重定向到登录页面
            window.location.href = "login.html";
        }
    }
});
// 封装一个方法1秒后刷新页面
function time() {
    window.setTimeout(function() { parent.layui.admin.refreshThis() }, 1000)
}
// 封装一个方法，执行成功后弹出
function success(message) {
    layui.use(['toast'], function() {
        layui.toast.success({
            title: '成功',
            message: message,
            position: 'topCenter'
        });
    })
}
// 封装一个方法失败后弹出
function error(message) {
    layui.use(['toast'], function() {
        var toast = layui.toast;
        toast.error({
            title: '失败',
            message: message,
            position: 'topCenter'
        });
    })
}
// 修改用户信息
function edituser(data) {
    // 获取dom
    let userId = $('#userIded').val()
    let userName = $('#usernameed').val()
    let passWord = $('#passworded').val()
    let phone = $('#phoneed').val()
    let idCard = $('#idCarded').val()
    let driverLicense = $('#driverLicenseed').val()
    $.ajax({
        type: 'post',
        url: `${api}/api/upuserinfo`,
        data: {
            userId,
            userName,
            passWord,
            phone,
            idCard,
            driverLicense
        },
        success: function(res) {
            if (res.status == 200) {
                success(res.message)
                time()
            } else {
                error(res.message)
            }

        },
        error: function(error) {
            error(error.message)
        }
    })
}
// 新增用户
function adduser() {
    let userName = $('#userNames').val();
    let phone = $('#phones').val();
    let passWord = $('#passWords').val();
    let idCard = $('#idCards').val();
    let driverLicense = $('#driverLicenses').val();
    console.log(userName, phone, passWord, idCard, driverLicense)
    $.ajax({
        type: 'post',
        url: `${api}/api/add_user`,
        contentType: 'application/json', // 设置请求的内容类型为 JSON
        data: JSON.stringify({
            userName: userName,
            phone: phone,
            passWord: passWord,
            idCard: idCard,
            driverLicense: driverLicense
        }),
        success: function(res) {
            if (res.status == 200) {
                success(res.message)
                time()
            } else {
                error(res.message)
            }
        },
        error: function(xhr, status, error) {
            error(error.message)
        }
    });
}


// 新增车辆
function addcar() {
    // 车辆型号
    let carModel = $('#carModels').val()
        // 车辆颜色
    let carColour = $('#carColours').val()
        // 车辆照片
    let carPhoto = $('#carPhotos').val()
        // 车简介
    let carContent = $('#carContents').val()
        //车牌号
    let carLicense = $('#carLicenses').val()
        // 车押金
    let carSecurityDeposit = $('#carSecurityDeposits').val()
        // 车日租金
    let carDayMoney = $('#carDayMoneys').val()
        // 车时租金
    let carHoursMoney = $('#carHoursMoneys').val()
        // 车辆状态
    let carStatus = $('#carStatuss').val()
        //停车场id
    let parking_id = $('#parking_ids').val()
        // 能源类型
    let energy = $('#energys').val()
        // 电量
    let emass = $('#emasss').val()
        // 油量
    let omass = $('#omasss').val()
        // 续航
    let km = $('#kms').val()
        // 品牌
    let brand_id = $('#brand_ids').val()
    $.ajax({
        type: 'post',
        url: `${api}/api/AddCar`,
        contentType: 'application/json', // 设置请求的内容类型为 JSON
        data: JSON.stringify({
            carModel,
            carColour,
            carLicense,
            carPhoto,
            carContent,
            carSecurityDeposit,
            carDayMoney,
            carHoursMoney,
            carStatus,
            parking_id,
            energy,
            emass,
            omass,
            km,
            brand_id
        }),
        success: function(res) {
            if (res.status == 200) {
                success(res.message)
                time()
            } else {
                error(res.message)
            }
        },
        error: function(error) {
            error(error.message)
        }
    })
}
// 修改车辆
function editcar() {
    // 车辆id
    let carId = $('#carIded').val()
        // 车辆型号
    let carModel = $('#carModeled').val()
        // 车辆颜色
    let carColour = $('#carColoured').val()
        //车牌号
    let carLicense = $('#carLicenseed').val()
        // 车辆照片
    let carPhoto = $('#carPhotoed').val()
        // 车简介
    let carContent = $('#carContented').val()
        // 车押金
    let carSecurityDeposit = $('#carSecurityDeposited').val()
        // 车日租金
    let carDayMoney = $('#carDayMoneyed').val()
        // 车时租金
    let carHoursMoney = $('#carHoursMoneyed').val()
        // 车辆状态
    let carStatus = $('#carStatused').val()
        //停车场id
    let parking_id = $('#parking_ided').val()
        // 能源类型
    let energy = $('#energyed').val()
        // 电量
    let emass = $('#emassed').val()
        // 油量
    let omass = $('#omassed').val()
        // 续航
    let km = $('#kmed').val()
        // 品牌
    let brand_id = $('#brand_ided').val()
    $.ajax({
        type: 'post',
        url: `${api}/api/upcarinfo`,
        contentType: 'application/json', // 设置请求的内容类型为 JSON
        data: JSON.stringify({
            carId,
            carModel,
            carColour,
            carLicense,
            carPhoto,
            carContent,
            carSecurityDeposit,
            carDayMoney,
            carHoursMoney,
            carStatus,
            parking_id,
            energy,
            emass,
            omass,
            km,
            brand_id
        }),
        success: function(res) {

            if (res.status == 200) {
                success(res.message)
                time()
            } else {
                error(res.message)
            }
        },
        error: function(error) {
            error(error.message)
        }
    })
}
//新增维修信息
function addrepair() {
    // 车辆id
    let carId = $('#carIds').val()
        //维修价格
    let repairMoney = $('#repairMoneys').val()
        //维修原因
    let repairReason = $('#repairReasons').val()
        //车辆状态
    let repairStatus = 0
    $.ajax({
        type: 'post',
        url: `${api}/api/AddRepair`,
        contentType: 'application/json', // 设置请求的内容类型为 JSON
        data: JSON.stringify({
            carId,
            repairMoney,
            repairReason,
            repairStatus,
        }),
        success: function(res) {

            if (res.status == 200) {
                success(res.message)
                time()
            } else {
                error(res.message)
            }
        },
        error: function(error) {
            error(error.message)
        }
    })
}
//修改维修
function editrepair() {
    // 维修id
    let repairId = $('#repairIded').val()
        // 车辆id
    let carId = $('#carIded').val()
        // 车辆型号
    let carModel = $('#carModeled').val()
        //车牌号
    let carLicense = $('#carLicenseed').val()
        //维修价格
    let repairMoney = $('#repairMoneyed').val()
        //维修原因
    let repairReason = $('#repairReasoned').val()
        //车辆状态
    let repairStatus = $('#repairStatused').val()
    $.ajax({
        type: 'post',
        url: `${api}/api/uprepair`,
        contentType: 'application/json', // 设置请求的内容类型为 JSON
        data: JSON.stringify({
            repairId,
            carId,
            carModel,
            carLicense,
            repairMoney,
            repairReason,
            repairStatus,
        }),
        success: function(res) {

            if (res.status == 200) {
                success(res.message)
                time()
            } else {
                error(res.message)
            }
        },
        error: function(error) {
            error(error.message)
        }
    })
}
//修改维修
// function editrepair() {
//     // 维修id
//     let carId = $('#carIded').val()
//         // 车辆型号
//     let carModel = $('#carModeled').val()
//         // 车辆颜色
//     let carColour = $('#carColoured').val()
//         //车牌号
//     let carLicense = $('#carLicenseed').val()
//         //维修价格
//     let repairMoney = $('#repairMoneyed').val()
//         //维修原因
//     let repairReason = $('#repairReasoned').val()
//         //车辆状态
//     let repairStatus = $('#repairStatused').val()
//     $.ajax({
//         type: 'post',
//         url: `${api}/api/uprepair`,
//         contentType: 'application/json', // 设置请求的内容类型为 JSON
//         data: JSON.stringify({
//             carId,
//             carModel,
//             carColour,
//             carLicense,
//             repairMoney,
//             repairReason,
//             repairStatus,
//         }),
//         success: function(res) {
//             if (res.status == 200) {
//                 success(res.message)
//                 time()
//             } else {
//                 error(res.message)
//             }
//         },
//         error: function(error) {
//             error(error.message)
//         }
//     })
// }
// ---------------
// 修改订单
function editorder() {
    // 维修id
    let orderId = $('#orderIded').val()
        //订单金额
    let orderMoney = $('#orderMoneyed').val()
        //订单
    let orderStatus = $('#orderStatused').val()
    $.ajax({
        type: 'post',
        url: `${api}/api/uporderinfo`,
        contentType: 'application/json', // 设置请求的内容类型为 JSON
        data: JSON.stringify({
            orderId,
            orderMoney,
            orderStatus
        }),
        success: function(res) {
            if (res.status == 200) {
                success(res.message)
                time()
            } else {
                error(res.message)
            }
        },
        error: function(error) {
            error(error.message)
        }
    })
}
// 新增品牌
function addbrand() {
    // 中文
    let brand_name_ch = $('#brand_name_chs').val()
        // 英文
    let brand_name_en = $('#brand_name_ens').val()
        // logo
    let brand_logo = $('#brand_logos').val()
        // 状态
    let status = $('#statuss').val()
    $.ajax({
        type: 'post',
        url: `${api}/api/AddBrand`,
        contentType: 'application/json', // 设置请求的内容类型为 JSON
        data: JSON.stringify({
            brand_name_ch,
            brand_name_en,
            brand_logo,
            status,
        }),
        success: function(res) {
            if (res.status == 200) {
                success(res.message)
                time()
            } else {
                error(res.message)
            }
        },
        error: function(error) {
            error(error.message)
        }
    })
}
// 修改品牌
function editbrand() {
    let id = $('#ided').val()
        // 中文
    let brand_name_ch = $('#brand_name_ched').val()
        // 英文
    let brand_name_en = $('#brand_name_ened').val()
        // logo
    let brand_logo = $('#brand_logoed').val()
        // 状态
    let status = $('#statused').val()
    $.ajax({
        type: 'post',
        url: `${api}/api/upbrandinfo`,
        contentType: 'application/json', // 设置请求的内容类型为 JSON
        data: JSON.stringify({
            id,
            brand_name_ch,
            brand_name_en,
            brand_logo,
            status
        }),
        success: function(res) {

            if (res.status == 200) {
                success(res.message)
                time()
            } else {
                error(res.message)
            }
        },
        error: function(error) {
            error(error.message)
        }
    })
}

// 新增停车场
function addParking() {
    // 停车场名称
    let parkingName = $('#parkingNames').val()
        // 省市区
    let area = $('#areas').val()
        // 详细地址
    let address = $('#addresss').val()
        // 类型
    let type = $('#types').val()
        // 最大容纳量
    let carsNumber = $('#carsNumbers').val()
        // 坐标
    let coord = $('#coords').val()
        // 状态
    let enable = $('#enables').val()
    $.ajax({
        type: 'post',
        url: `${api}/api/AddParking`,
        contentType: 'application/json', // 设置请求的内容类型为 JSON
        data: JSON.stringify({
            parkingName,
            area,
            address,
            type,
            carsNumber,
            coord,
            enable
        }),
        success: function(res) {
            if (res.status == 200) {
                success(res.message)
                time()
            } else {
                error(res.message)
            }
        },
        error: function(error) {
            error(error.message)
        }
    })
}
// 修改停车场
function editParking() {
    // id
    let id = $('#ided').val()
        // 停车场名称
    let parkingName = $('#parkingNameed').val()
        // 省市区
    let area = $('#areaed').val()
        // 详细地址
    let address = $('#addressed').val()
        // 类型
    let type = $('#typeed').val()
        // 最大容纳量
    let carsNumber = $('#carsNumbered').val()
        // 坐标
    let coord = $('#coorded').val()
        // 状态
    let enable = $('#enableed').val()
    $.ajax({
        type: 'post',
        url: `${api}/api/upparkinginfo`,
        contentType: 'application/json', // 设置请求的内容类型为 JSON
        data: JSON.stringify({
            id,
            parkingName,
            area,
            address,
            type,
            carsNumber,
            coord,
            enable
        }),
        success: function(res) {
            if (res.status == 200) {
                success(res.message)
                time()
            } else {
                error(res.message)
            }
        },
        error: function(error) {
            error(error.message)
        }
    })
}