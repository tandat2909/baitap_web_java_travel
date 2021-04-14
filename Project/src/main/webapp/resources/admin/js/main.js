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

function updateCustomer(customerId) {
    if (confirm("Bạn chắc chắn muốn sửa không?") == true) {
        fetch(`/api/customers/${customerId}`, {
            method: "update",
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


function layDL() {
    // document.getElementById("fname").value = document.getElementById("fn").value;
    // document.getElementById("lname").value = document.getElementById("ln").value;
    // document.getElementById("email").value = document.getElementById("em").value;
    // document.getElementById("bday").value = document.getElementById("bd").value;
    // document.getElementById("ccid").value = document.getElementById("cc").value;
    // document.getElementById("pnumber").value = document.getElementById("pn").value;


}
