function deleteCustomer(customerId) {
    if (confirm("Bạn chắc chắn xóa không?") == true) {
        fetch(`/customers/${customerId}`, {
            method: "delete",
            headers: {
                "Content-Type": "application/json"
            }
        }).then(res => {
            if (res.status == 200) {
                let d = document.getElementById(`cus${customerId}`);
                d.style.display = "none";
            } else
                alert("Something wrong!!!");
        })
    }
}

function updateCustomer() {
    var customerId = $("#editid").val()
    if (confirm("Bạn chắc chắn muốn sửa không?") == true) {
        fetch(`/customers/update/${customerId}`, {
            method: "post",
            headers: {
                "Content-Type": "application/json"
            },
            body: {
                "customerID": $("#editid").val(),
                "firstName": $("#fname").val(),
                "lastName": $("#lname").val(),
                "email": $("#email").val(),
                "birthDay": $("#bday").val(),
                "ccid": $("#ccid").val(),
                "phoneNumber": $("#pnumber").val(),
            }
        }).then(res => {
            if (res.status == 200) {
                let d = document.getElementById(`cus${customerId}`);
                d.style.display = "none";
            } else
                alert("Something wrong!!!");
        })
    }
}


function layDL(id) {
    var a = $("td", $("#cus" + id))
    $("#editid").val(id)
    $("#fname").val(a[1].textContent)
    $("#lname").val(a[2].textContent)
    $("#email").val(a[3].textContent)
    $("#bday").val(a[4].textContent)
    $("#ccid").val(a[5].textContent)
    $("#pnumber").val(a[6].textContent)
}