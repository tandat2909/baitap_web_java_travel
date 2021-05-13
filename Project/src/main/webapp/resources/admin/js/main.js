// var uri = $("#uri").attr("href")

function deleteCustomer(customerId) {
    if (confirm("Bạn chắc chắn xóa không?") == true) {
        fetch(`${uri}/api/customer?cusid=${customerId}`, {
            method: "delete",
            headers: {
                "Content-Type": "application/json"
            }
        }).then(res => {
            if (res.status == 200) {
                $("#" + customerId).remove();
            } else
                alert("Something wrong!!!");
        })
    }
}

function deleteTour(tourId) {
    if (confirm("Bạn chắc chắn xóa không?") == true) {
        fetch(`${uri}/api/tour?tourid=${tourId}`, {
            method: "delete",
            headers: {
                "Content-Type": "application/json"
            }
        }).then(res => {
            if (res.status == 200) {
                $("#" + tourId).remove();
            } else
                alert("Something wrong!!!");
        })
    }
}

function deleteEmployee(employeeId) {
    if (confirm("Bạn chắc chắn xóa không?") == true) {
        fetch(`${uri}/api/employee?employeeId=${employeeId}`, {
            method: "delete",
            headers: {
                "Content-Type": "application/json"
            }
        }).then(res => {
            if (res.status == 200) {
                $("#" + employeeId).remove();
            } else
                alert("Something wrong!!!");
        })
    }
}

function deleteNew(newId) {
    if (confirm("Bạn chắc chắn xóa không?") == true) {
        fetch(`${uri}/api/New?newId=${newId}`, {
            method: "delete",
            headers: {
                "Content-Type": "application/json"
            }
        }).then(res => {
            if (res.status == 200) {
                $("#" + newId).remove();
            } else
                alert("Something wrong!!!");
        })
    }
}

let openLink = (link, option) => {
    window.open(link, option)
}

//hàm trả về một async có kết quả
let getLandMarkbyProviceID = async (provinceId) => {
    let ls
    if (provinceId !== undefined) {
        await fetch(`${uri}/api/landMark?provinceId=${provinceId}`).then(res => res.json()).then(data => {
            ls = data
        })
        return ls

    }
}

let addOptionLandMark = (select) => {
    let provinceid = $(select).val()
    fetch(`${uri}/api/landMark?provinceId=${provinceid}`).then(res => res.json()).then(data => {
        $("#landMark_" + $(select).attr("day")).empty().append("<option selected disabled>Chọn địa danh</option>")
        for (var i = 0; i < data.length; i++) {
            var d = data[i].split(":");
            var opHtml = `<option value="${d[0]}">${d[1]}</option>`
            $("#landMark_" + $(select).attr("day")).append(opHtml);
        }

    })
}


// js add tour

//set time to current
var today = new Date();
var strtoDay = (today.getFullYear() + '-' + ((today.getMonth() + 1) < 10 ? '0' + (today.getMonth() + 1) : (today.getMonth() + 1)) + '-' + (today.getDate() < 10 ? '0' + today.getDate() : today.getDate()))

var getDays = (a, b) => {
    return Math.round((Date.parse(b) - Date.parse(a)) * 1.15740741 * Math.pow(10, -8))
}


$(document).ready(function () {
    var m = $(".duration")
    for (let i = 0; i < m.length; i++) {
        let start = $(m[i]).data("startday");
        let end = $(m[i]).data("endday");
        $(m[i]).text((getDays(start, end) + 1) + " ngày");
        console.log(start, end);
        console.log($(m[i]))
    }
});


var checkInputNgay = (a, b) => {
    return getDays(a, b) >= 0
}
$("#ngaydi").attr('min', strtoDay).val(strtoDay).change(() => {
    let nd = $("#ngaydi")
    let nv = $("#ngayve")
    if ($(nv).val().toString().length === 0 || !checkInputNgay($(nd).val(), $(nv).val())) {
        $(nv).attr("min", $(nd).val()).val($(nd).val())
    }
    if (checkInputNgay($(nd).attr("min"), $(nv).attr("min"))) {
        $(nv).attr("min", $(nd).val())
    }
    addContent()
})

$("#ngayve").attr('min', strtoDay).change(() => {
    let nd = $("#ngaydi").val()
    const nv = $("#ngayve").val()
    if (!checkInputNgay(nd, nv)) {
        console.log(checkInputNgay(nd, nv))
        alert("ngày về phải lớn hơn ngày đi")
        return;
    }
    addContent()
})


let addContent = () => {
    let nd = $("#ngaydi").val()
    const nv = $("#ngayve").val()
    var clone = $("#cttour .row:first-child").clone(true)
    $("#cttour").empty().append(clone);
    for (var i = 2; i <= getDays(nd, nv) + 1; i++) {
        var ct = $("#cttour .row:first-child").clone(true)

        $("#landMark_1", ct).attr("id", "landMark_" + i).attr("day", i)
        $("#provice_1", ct).attr("id", "provice_" + i).attr("day", i)
        $("#content_1", ct).attr("id", "content_" + i).attr("day", i)
        $("#title_1", ct).text("Ngày thứ " + i)
        //console.log(ct.html())
        $("#cttour").append(ct);
    }
}
let summitFormUpdateTour = () => {
    let prices = $("#tourprice td input.pricejs")
    let strPrice = ""


    for (let i = 0; i < prices.length; i++) {
        var d = $(prices[i]).data("id") + ":" + $(prices[i]).val()
        strPrice += d + ";"
    }
    $("#prices").val(strPrice);
    console.log("price: " +strPrice)

    let nd = $("#ngaydis").val()
    let nv = $("#ngayves").val()
    let contents = ""
    for (let i = 1; i <= getDays(nd, nv) + 1; i++) {
        // console.log("bien i: "+ i)
        var landMark = $("#landMark_" + i)

        var content = $("#content_" + i).val().replaceAll('\n', "<br />")
        //console.log(content)
        contents += $(landMark).attr("day") + "<:>" + $(landMark).val() + "<:>" + content + "</end>"
        // console.log(contents)
    }

    // console.log(getDays(nd,nv)+1)
    $("#contentspost").val(contents)
    // console.log($("#contentspost").val())
    console.log(contents)
    //  $("#test").html(contents)
}


let summitFormAddTour = () => {
    let prices = $("#tourprice td input.pricejs")
    let strPrice = ""


    for (let i = 0; i < prices.length; i++) {
        var d = $(prices[i]).data("id") + ":" + $(prices[i]).val()
        strPrice += d + ";"
    }
    $("#prices").val(strPrice);
    //console.log("price: " +strPrice)

    let nd = $("#ngaydi").val()
    let nv = $("#ngayve").val()
    let contents = ""
    for (let i = 1; i <= getDays(nd, nv) + 1; i++) {
        // console.log("bien i: "+ i)
        var landMark = $("#landMark_" + i)

        var content = $("#content_" + i).val().replaceAll('\n', "<br />")
        //console.log(content)
        contents += $(landMark).attr("day") + "<:>" + $(landMark).val() + "<:>" + content + "</end>"
        // console.log(contents)
    }

    // console.log(getDays(nd,nv)+1)
    $("#contentspost").val(contents)
    // console.log($("#contentspost").val())
    console.log(contents)
    //  $("#test").html(contents)
}


$(document).ready(function () {
    $("#aaaa").click(function () {
        var values = $(".ages input");
        var valuep = $("#prices");
        var data = "";
        for (var i = 0; i < values.length; i++) {
            //valuep.value = values[i].value + ":" + $(values[i]).attr("id") + ";"
            data += values[i].value + ":" + $(values[i]).attr("id") + ";"
            // alert(values[i].val() + "&" + values[i].attr("id"))
        }
        $("#prices").val(data);
    });
});
var edit = '';
$(document).ready(function () {
    edit = CKEDITOR.replace('ck');
    // CKEDITOR.instances.ck.updateElement();
    // alert( document.getElementById( 'ck' ).value );
});

let setNameFile = () => {
    $("#imgname").text($("#imgjs").val())
}

let checkSelect = (select) => {
    if ($(select).val() === '') {
        $(select).removeAttr("class").attr("class", "custom-select is-invalid")
        return false
    }
    $(select).removeAttr("class").attr("class", "custom-select is-valid")
    return true
}


