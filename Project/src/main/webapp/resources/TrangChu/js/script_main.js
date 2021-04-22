let lsdotuoi = {"adult": "Người lớn", "children11": "Trẻ em", "children": "Trẻ nhỏ", "small_children": "Em bé"}

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

function htmlDSKH(stt, dotuoi) {
    var html =
        '   <div class="cus-num">Khách hàng ' + (stt +1)+ '</div>'+
    '   <div class="frame-cus">'+
    '   <div class="form-horizontal">'+
    '       <div class="row mg-bot10">'+
    '           <div class="col-lg-3 col-md-8 col-sm-6 col-xs-12 mg-bot10">'+
    '               <label class="mg-bot5">Họ tên (<span'+
    '                   class="star">*</span>)</label>'+
    '               <div>'+
    '                   <input class="form-control"'+
    '                          required="" type="text" value="">'+
    '               </div>'+
    '           </div>'+
    '           <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12 mg-bot10">'+
    '               <label class="mg-bot5">Giới tính</label>'+
    '               <div>'+
    '                   <select class="form-control" id="gender' + stt + '">'+
    '                       <option value="Nữ">Nữ</option>'+
    '                       <option value="Name">Nam</option>'+
    '                   </select>'+
    '               </div>'+
    '           </div>'+
    '           <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 mg-bot10">'+
    '               <label class="mg-bot5">Ngày sinh (<span'+
    '                   class="star">*</span>)</label>'+
    '               <div>'+
    '                   <input type="date" class="form-control" id = "ngaysinh' + stt + '" >'+
    '               </div>'+
    '           </div>'+
    '           <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12 mg-bot10">'+
    '               <label class="mg-bot5">Độ tuổi</label>'+
    '               <div>'+
    '                   <select class="form-control" id="personkind' + stt + '">'+
    '                       <option value="' + dotuoi + '">' + lsdotuoi[dotuoi] + '</option>'+
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
    '                              id="spanprice' + stt + '">2,690,000 đ</span>'+
    '               <input class="form-control" disabled="disabled" id="price' + stt + '"'+
    '                       type="hidden" value="2690000 đ">'+
    '           </div>'+
    '       </div>'+
    '   </div>'+
    '</div>'

    return html
}

function addDanhSachKhachHang(sl) {
    $(".list").empty();
    for (var i = 0; i < parseInt($(sl).val()); i++) {
        $(".list").append(htmlDSKH(i, sl.getAttribute("id")))
    }
}
