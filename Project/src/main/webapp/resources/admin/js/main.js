var uri = $("#uri").attr("href")

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

let openLink= (link,option)=>{
    window.open(link,option)
}

$(document).ready(function(){
$("#aaaa").click(function(){
    var values = $(".ages input");
    var valuep = $("#prices");
    var data = "";
    for(var i = 0; i < values.length; i ++)
    {
        //valuep.value = values[i].value + ":" + $(values[i]).attr("id") + ";"
        data += values[i].value + ":" + $(values[i]).attr("id") + ";"
        // alert(values[i].val() + "&" + values[i].attr("id"))
    }
    $("#prices").val(data);
    });
});
var edit ='';
$(document).ready(function(){
    edit = CKEDITOR.replace('ck');
    // CKEDITOR.instances.ck.updateElement();
    // alert( document.getElementById( 'ck' ).value );
});

let setNameFile = ()=>{

        $("#imgname").text($("#imgjs").val())

}

