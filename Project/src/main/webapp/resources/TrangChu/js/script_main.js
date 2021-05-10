let lsdotuoi = {
    "adult": ["Người lớn","f53d20c2-7f20-4fad-bab6-76847d102ef9"],
    "children11": ["Trẻ em","c71fb358-c195-4bc4-9e45-004fd8a5ffd2"],
    "children": ["Trẻ nhỏ","bdee5279-4601-484c-8fce-e8f5781deda3"],
    "small_children": ["Em bé","31c75b0d-ec1c-4c39-9caf-5f2e90e7f492"]}

function getThongTinLienLac() {
    var ho = $("#contact_name").val()
    var ten = $("#ten").val()
    var email = $("#email").val()
    var phonenumber = $("#phone").val()
    var diachi = $("#address").val()
    var note = $("#note").val()
    var soKhach = $("#guests")
    return '{' +
        '"ho":"' + ho + '";' +
        '"ten":"' + ten + '";' +
        '"email":"' + email + '";' +
        '"phonenumber":"' + phonenumber + '";' +
        '"diachi":"' + diachi + '";' +
        '"note":"' + note + '";' +
        '"soKhach":"' + soKhach + '"' +
        '}';
}

function htmlDSKH(stt, dotuoi,price) {
    var html =

        '   <div class="cus-num" id="title_'+(stt+1)+'" data-stt="'+stt+'" >Khách hàng ' + (stt +1)+ '</div>'+
    '   <div class="frame-cus">'+
    '   <div class="form-horizontal">'+
    '       <div class="row mg-bot10">'+
    '           <div class="col-lg-3 col-md-8 col-sm-6 col-xs-12 mg-bot10">'+
    '               <label class="mg-bot5">Họ tên (<span'+
    '                   class="star">*</span>)</label>'+
    '               <div>'+
    '                   <input class="form-control"'+
    '                          required type="text" id="hoten_'+stt+'"  value="">'+
    '               </div>'+
    '           </div>'+
    '           <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12 mg-bot10">'+
    '               <label class="mg-bot5">Giới tính</label>'+
    '               <div>'+
    '                   <select class="form-control" required id="gender_' + stt + '">'+
    '                       <option value="Nữ">Nữ</option>'+
    '                       <option value="Name">Nam</option>'+
    '                   </select>'+
    '               </div>'+
    '           </div>'+
    '           <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 mg-bot10">'+
    '               <label class="mg-bot5">Ngày sinh (<span'+
    '                   class="star">*</span>)</label>'+
    '               <div>'+
    '                   <input type="date" required class="form-control" id = "ngaysinh_' + stt + '" >'+
    '               </div>'+
    '           </div>'+
    '           <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12 mg-bot10">'+
    '               <label class="mg-bot5">Độ tuổi</label>'+
    '               <div>'+
    '                   <select class="form-control" id="personkind_' + stt + '" disabled>'+
    '                       <option selected value="' + lsdotuoi[dotuoi][1] + '">' + lsdotuoi[dotuoi][0] + '</option>'+
    '                   </select>'+
    '               </div>'+
    '           </div>'+
    '           <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12 mg-bot10">'+
    '               <label class="mg-bot5">Phòng đơn</label>'+
    '               <div>'+
    '                   <select class="form-control" id="loaiphuthuphongdon' + stt + '">'+
    '                       <option selected="selected" value="0">Không</option>'+
    '                       <option value="1">Có</option>'+
    '                   </select></div>'+
    '           </div>'+
    '       </div>'+
    '       <div class="row total">'+
    '           <div class="col-md-12 col-sm-12 text-right">'+
    '               Trị giá: <span class="price"'+
    '                              id="spanprice_' + stt + '">'+price+'đ</span>'+
    '               <input class="form-control" disabled="disabled" id="price_' + stt + '"'+
    '                       type="hidden" value="'+price+'">'+
    '           </div>'+
    '       </div>'+
    '   </div>'+
    '</div> '


    return html
}

function addDanhSachKhachHang(sl,ages,price,stt) {

    for (var i = 0; i < parseInt(sl); i++) {
        $(".list").append(htmlDSKH((i+stt), ages,price))
    }
}

$(function () {
    $('[data-toggle="tooltip"]').tooltip()
})

let totalPerson =()=>{return  parseInt($(adult).val()) + parseInt($(children11).val()) + parseInt($(children).val()) + parseInt($(small_children).val())}
let totalPrice = ()=>{
    var adult = parseInt($("#adult"))
    var children11 =   parseInt($("#children11"))
    var children =  parseInt( $("#children"))
    var small_children = parseInt( $("#small_children"))

    var priceAdult = parseFloat($("#f53d20c2-7f20-4fad-bab6-76847d102ef9").data("price"))
    var pricechildren11=parseFloat($("#c71fb358-c195-4bc4-9e45-004fd8a5ffd2").data("price"))
    var pricechildren=parseFloat($("#bdee5279-4601-484c-8fce-e8f5781deda3").data("price"))
    var pricesmall_children=parseFloat($("#31c75b0d-ec1c-4c39-9caf-5f2e90e7f492").data("price"))
    return  adult * priceAdult + children*pricechildren + children11 * pricechildren11 + pricesmall_children * small_children


}
let totalGuests = (input) =>{
    var maxseats = parseInt($("#max-seats").data("seat"))
    var adult = $("#adult")
    var children11 = $("#children11")
    var children = $("#children")
    var small_children = $("#small_children")
    var guests = $("#guests")
    var total = totalPerson()

    var seatConLai = maxseats - total;

    if(seatConLai<0){
        $(adult).val(1)
        $(children11).val(0)
        $(children).val(0)
        $(small_children).val(0)
        $(guests).val(1)
        $(".list").empty();
        addDanhSachKhachHang( $(adult).val(),$(adult).attr("id"))
        alert("Số chỗ còn nhận cho tour này là "+maxseats+". Quý khách cần chọn lại số lượng khách")
    }else {
        $(guests).val(total)
        $(".list").empty();


        addDanhSachKhachHang( $(adult).val(),$(adult).attr("id"),0,0)
        var stt = parseInt($("#title_" + $(adult).val()).data("stt"));
        addDanhSachKhachHang( $(children11).val(),$(children11).attr("id"),0,stt+1)
        stt += parseInt($(children11).val())
        addDanhSachKhachHang( $(children).val(),$(children).attr("id"),0,stt+1)
        stt += parseInt($(children).val())
        addDanhSachKhachHang( $(small_children).val(),$(small_children).attr("id"),0,stt+1)
    }
    if(seatConLai === maxseats) addDanhSachKhachHang( 1,$(adult).attr("id"))


    $("#spanTotalPrice").val(totalPrice())
}



let onsubmitBooking =()=>{
    var dataPerson = ""

    for(var i = 0; i< totalPerson(); i++){
        var hoten = $("#hoten_"+i).val()
        var giotinh = $("#gender_"+i).val()
        var ngaysinh = $("#ngaysinh_"+i).val()
        var ages = $("#personkind_"+i).val()
        dataPerson += hoten+":"+giotinh+":"+ngaysinh+":"+ages+";"
    }

    $("#ticket").val(dataPerson)

    console.log(dataPerson);
}


function addComment (idcomment) {
    $("#"+idcomment).append(
        '<form action="'+uri+'/comment" method="post" id="comment">\n' +
        '            <textarea style="height: 100px; width: 100%;" name="content"></textarea>\n' +
        '            <input type="hidden" name="newsId" value="'+newid+'"/>\n' +
        '            <input type="hidden" name="commentParentId" value="'+idcomment+'"/>\n' +
        '            <button type="submit" class="btn btn-primary btn-style mt-4">Gửi</button>\n' +
        '        </form>');
}
