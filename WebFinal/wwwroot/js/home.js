var totalPage = 1;
var lst = null;
function selectPosition(ctl) {
    let lop = $(ctl).val();
    
    if (lop != "0" && lop != undefined && lop != null) {
        getEmployees(lop, 1);
        $("#tblResult").show(500);
    } else {
        $("#tblResult").hide(500);
    }
}

function getEmployees(p) {
    console.log(p);
    $.ajax({
        type: "POST",
        url: "/Home/get_employees",
        data: { 'Page': p, 'Size': 5 },
        async: false,
        success: function (res) {
            if (res.success) {
                let data = res.data;

                if (data.data != null && data.data != undefined) {
                    let stt = (p - 1) * 5 + 1;
                    let data1 = [];
                    for (var i = 0; i < data.data.length; i++) {
                        let item = data.data[i];
                        item.STT = stt;
                        data1.push(item);
                        stt++;
                    }
                    lst = data1;
                    $("#tblEmployees tbody").html("");
                    $("#employeesTemplate").tmpl(data1).appendTo("#tblEmployees tbody");
                }

                totalPage = data.totalPage;
                $("#curPage").text(p);

            } else {
                alert(res.message);
            }
        },
        failure: function (res) {

        },
        error: function (res) {

        }
    });
}

function goPrev() {
    var curPage = parseInt($("#curPage").text());
    if (curPage == 1) {
        alert("This is first page");
    } else {
        var p = curPage - 1;
        

        getEmployees(p)
    }
}
function goNext() {
    var curPage = parseInt($("#curPage").text());
    if (curPage == totalPage) {
        alert("This is last page");
    } else {
        var p = curPage + 1;
        
        getEmployees(p)
    }
}
function openEmployeesModal(empid) {
    $("#btnSave").show();
    $("#btnInsert").hide();
    console.log(lst)
    console.log(empid)
    if (lst != null && empid != null) {     
        var item = $.grep(lst, function (obj) {
            return obj.empId == empid;
        })[0];
        console.log(item)
        $("#txtEmpId").val(item.empId);
        $("#txtEmpName").val(item.name);
        $("#txtPhone").val(item.phone);
        $("#txtDOB").val(item.dob);
        $("#selPos").val(item.positionId);
        $("#txtCon").val(item.contractId);
        $("#txtConDes").val(item.contractDescription);
    }
}
function showEmployees() {
    getEmployees(1);
}

function addNewEmployee() {
    $("#btnSave").hide();
    $("#btnInsert").show();

    if (lst  != null) {
        const ids = lst.map(obj => {
            return obj.empId;
        });

        const max = Math.max(...ids);
        $("#txtEmpId").val(max + 1);
        $("#txtEmpName").val("");
        $("#txtPhone").val("");
        $("#txtDOB").val("");
        $("#selPos").val($("#selPos").val());
        $("#txtCon").val("");
        $("#txtConDes").val("");
    }
}





function saveEmp() {
    var item = {
        empId: $("#txtEmpId").val(),
        name: $("#txtEmpName").val(),
        phone: $("#txtPhone").val(),
        contractId: $("#txtCon").val(),
        dob: $("#txtDOB").val(),
        positionId: $("#selPos").val(),
        contractDescription: $("#txtConDes").val()
    };
    console.log(item);
    $.ajax({
        type: "POST",
        url: "/Home/update_emp",
        data: { 'Employee': item },
        async: false,
        success: function (res) {
            if (res.success) {
                alert("Update Success !!!");
                let c = res.data;
                var i = 0
                for (i = 0; i < lst.length; i++) {
                    if (lst[i].id == c.id) {
                        c.STT = lst[i].STT;
                        break;
                    }
                }
                lst[i] = c;
                $("#tblResult tbody").html("");
                $("#courseTemplate").tmpl(lst).appendTo("#tblResult tbody");
            } else {
                alert(res.message);
            }
        },
        failure: function (res) {

        },
        error: function (res) {

        }
    });
}


function insertEmp() {
    var item = {
        empId: $("#txtEmpId").val(),
        name: $("#txtEmpName").val(),
        phone: $("#txtPhone").val(),
        contractId: $("#txtCon").val(),
        dob: $("#txtDOB").val(),
        positionId: $("#selPos").val()
        
    };
    c = $("#txtConDes").val()
    console.log(item)
    $.ajax({
        type: "POST",
        url: "/Home/insert_emp",
        data: { 'Employee': item, 'ConD':  c},
        async: false,
        success: function (res) {
            if (res.success) {
                alert("Insert Success !!!");
                let c = res.data;
                
                getEmployees(grp, 1);
            } else {
                alert(res.message);
            }
        },
        failure: function (res) {

        },
        error: function (res) {

        }
    });
}

