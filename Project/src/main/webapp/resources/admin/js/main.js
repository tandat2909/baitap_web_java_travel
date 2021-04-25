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
let openLink= (link,option)=>{
    window.open(link,option)
}
