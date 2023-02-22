


function CreateContractor() {
    $("#createcontractor").validate({
        rules: {
            ContractorName: {
                required: true,
            },
            ProjectName: {
                required: true,
            },
            SiteCode: {
                required: true,
            },
            AreaContracted: {
                required: true,
            },
            Penro: {
                required: true,
            },
            Region: {
                required: true,
            },
            Year_Estb: {
                required: true,
            },
            AddressMunicipality: {
                required: true,
            },
            AddressBarangay: {
                required: true,
            },
            LocationMunicipality: {
                required: true,
            },
            LocationBarangay: {
                required: true,
            },
            LocationSitio: {
                required: true,
            },
        },
        errorClass: "validationerror",
        messages: {
            Name: {
                required: "Please Select a fssafas",
            },
        },
        submitHandler: function () {
            if ($("#createcontractor").valid()) {
                var valdata = $("#createcontractor").serialize();
                $('#createcontractorModal').modal('hide');
                $.ajax({
                    url: '/api/savecontractor/postcontractor/',
                    type: "POST",
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: valdata,
                });
                setTimeout(function () {
                    toastr.success('Save Contractor Successfully');
                    setTimeout(function () {
                        location.reload();
                    }, 2000)
                }, 1500);
            }
        }
    });

   
    $('#contractortable').DataTable({

        ajax: {
            url: '/api/contractordatable/getcontractordatable/',
            dataSrc: '',
        },
        columns: [

            {
                data: "year_Estb",
            },
            {
                data: "region",
            },
            {
                data: "penro",
            },
            {
                data: "siteCode",
            },
            {
                data: "contractorName",
            },
            {
                data: "projectName",
            },
            {
                data: "areaContracted",
            },
            {
                data: "addressMunicipality",
            },
            {
                data: "addressBarangay",
            },
            {
                data: "locationMunicipality",
            },
            {
                data: "locationBarangay",
            },
            {
                data: "locationSitio",
            },


        ]
    });




}











function CreateTribe() {
    $("#SaveRequest").validate({
        rules: {
            Name: {
                required: true,
            },
        },
        errorClass: "validationerror",
        messages: {
            Name: {
                required: "Please Select a fssafas",
            },
        },
        submitHandler: function () {
            if ($("#SaveRequest").valid()) {
                var valdata = $("#SaveRequest").serialize();
                $('#createModal').modal('hide');
                $.ajax({
                    url: '/api/savetribe/postsavetribe/',
                    type: "POST",
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: valdata,
                });
                setTimeout(function () {
                    toastr.success('Save Tribe Successfully');
                    setTimeout(function () {
                        location.reload();
                    }, 2000)
                }, 1500);
            }
        }
    });
}


function CreateRole() {
    $("#createrole").validate({
        rules: {
            RoleName: {
                required: true,
            },
        },
        messages: {
            RoleName: {
                required: "Please Input a Role",
            },
        },
        submitHandler: function () {
            if ($("#createrole").valid()) {
                var valdata = $("#createrole").serialize();
                $('#createModal').modal('hide');
                $.ajax({
                    url: '/api/saverole/postsaverole/',
                    type: "POST",
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: valdata,
                });
                setTimeout(function () {
                    toastr.success('Successsfully Added a Role');
                    setTimeout(function () {
                        location.reload();
                    }, 2000)
                }, 1500);
            }
        }
    });
}


function CreateAccount() {


    $.ajax({
        type: 'GET',
        url: '/api/roledata/getroledata',
        success: function (data) {
            $.each(data, function (index, value) {
                $('select[name=roleId]').append('<option value="' + value.id + '">' + value.roleName + '</option>');
            })
        }
    });

    $.ajax({
        type: 'GET',
        url: '/api/roledata/getroledata',
        success: function (data) {
            $.each(data, function (index, value) {
                $('select[name=roleID]').append('<option value="' + value.id + '">' + value.roleName + '</option>');
            })
        }
    });




    $("#createaccount").validate({
        rules: {
            Name: {
                required: true,
            },
            Email: {
                required: true,
            },
            UserName: {
                required: true,
            },
            Password: {
                required: true,
                regex: ("(?=.*?[0-9])(?=.*?[A-Z])(?=.*?[#?!@$%^&*\\-_]).{8,}$")
            },
            roleId: {
                required: true,
               
            },
          

        },
        errorClass: "validationerror",
        messages: {
            Name: {
                required: "Please Input a Name",
            },
            Email: {
                required: "Please Input a Email",
            },
            UserName: {
                required: "Please Input a Username",
            },
            Password: {
                required: "Please Input a Password",
                regex: "At least 1 Uppercase,1 Lowercase,1 Special Character, 1 Numeric Character and Minimum of 8 Characters"
            },
            roleId: {
                required: "Please Select a Role",
            },
         

        },
    });
    $("#createaccount").submit(function (e) {

        e.preventDefault();
        var formData = new FormData(this);
        if ($("#createaccount").valid()) {
            $('#createModal').modal('hide');
            $.ajax({
                type: 'POST',
                url: '/api/residencephoto',
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                success: function (response) {

                    setTimeout(function () {
                        toastr.success("Account Successfully Created");
                        setTimeout(function () {
                            location.reload();
                        }, 2000)
                    }, 1500);
                    $("#createModal").modal('hide');
                },
                error: function (response) {
                    toastr.error("Unable to Delete Dependent in Foreign Key");
                    //alert(result, result.DepartmentId, result.Name);
                }
            });
        }
    })




    //GET DATA ONLY FOR EDIT ACCOUNT GET METHOD
    $('#usertable').on('click', '.edit', function () {
        var id = $(this).attr('data-id');
        var url = '/api/editaccount/geteditaccount/' + id;
        /*    toastr.success(id);*/


        $.ajax({
            type: 'GET',
            url: url,
            success: function (data) {
                $('#editAccountModal').modal('show');
                $('#editaccount').find('input[name="id"]').val(data.id);
                $('#editaccount').find('input[name="name"]').val(data.name);
                $('#editaccount').find('input[name="userName"]').val(data.userName);
                $('#editaccount').find('input[name="email"]').val(data.email);
                $('#editaccount').find('select[name="roleID"]').val(data.roleID);

            }
        })
        /* SHOW DISPLAY OF PHOTO AFTER CREATED */
        $.ajax({
            type: 'GET',
            url: "/api/account/getpics/" + id,
            success: function (data) {
                $("#pic-holder").append("<img style='width:155px;height:155px; border-radius: 92px; overflow:hidden' src='" + data.filePath + "' class='papi-cholo' />");
            }
        });
    });

    $("#editAccountModal").on("hidden.bs.modal", function () {
        // put your default event here
       
       111
        $(".papi-cholo").remove();
    });

    //  //GET DATA ONLY FOR  RESET PASSWORD
    $('#usertable').on('click', '.resetpass', function () {
        var id = $(this).attr('data-id');
        var url = '/api/editaccount/geteditaccount/' + id;
        /*    toastr.success(id);*/
        $.ajax({
            type: 'GET',
            url: url,
            success: function (data) {
                $('#resetpassModal').modal('show');
                $('#resetpassword').find('input[name="id"]').val(data.id);
                $('#resetpassword').find('input[name="userName"]').val(data.userName);
                $('#resetpassword').find('input[name="password"]').val('');
                $('#resetpassword').find('input[name="name"]').val(data.name);
                $('#resetpassword').find('input[name="email"]').val(data.email);
                $('#resetpassword').find('input[name="roleID"]').val(data.roleID);

            }
        })
    });



    //GET DATA CHANGE IMAGE
    $('#usertable').on('click', '.photo', function () {
        var id = $(this).attr('data-id');
        var url = '/api/editaccount/geteditaccount/' + id;

        $.ajax({
            type: 'GET',
            url: url,
            success: function (data) {
                $("#changePhotoModal").modal('show');
                $('#changephoto').find('input[name="AccountId"]').val(data.id);
                $('#changephoto').find('input[name="id"]').val(data.id);
                $('#changephoto').find('input[name="name"]').val(data.name);
                console.log(data.id)

            }
        });

        var url2 = '/api/account/getpics/' + id;

        $.ajax({
            type: 'GET',
            url: url2,
            success: function (data) {
                $('#changephoto').find('input[name="Id"]').val(data.id);
                $("#imageshow").empty();
                $("#imageshow").append("<img style='width:155px;height:155px; border-radius: 92px; overflow:hidden' src='" + data.filePath + "' />");
            }
        });

    });


    //CHANGE PROFILE PICTURE SAVING PHOTO
    $("#changephoto").submit(function (e) {
        e.preventDefault();
        var formData = new FormData(this);
        if ($("#changephoto").valid()) {
            $('#changePhotoModal').modal('hide');
            $.ajax({
                type: 'POST',
                url: '/api/changephoto',
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                success: function (response) {

                    setTimeout(function () {
                        toastr.success("Profile Picture Successfully Change");
                        setTimeout(function () {
                            location.reload();
                        }, 2000)
                    }, 1500);
                    $("#changePhotoModal").modal('hide');
                },
                error: function (response) {
                    toastr.error("Unable to Delete Dependent in Foreign Key");
                    //alert(result, result.DepartmentId, result.Name);
                }

            });
        }
    })
   

    /* SAVING EDIT ACCOUNT POST METHOD*/
    $("#editaccount").validate({
        rules: {
            name: {
                required: true,
            },
            userName: {
                required: true,
            },
            email: {
                required: true,
            },

        },
        errorClass: "tomerror",
        messages: {
            name: {
                required: "Please Enter Your Name",
            },
            userName: {
                required: "Please Enter Your Username",
            },
            email: {
                required: "Please Enter Your Email",
            },

        },
        submitHandler: function () {
            if ($("#editaccount").valid()) {
                var valdata = $("#editaccount").serialize();
                $('#editAccountModal').modal('hide');
                $.ajax({
                    url: '/api/savingeditaccount/postsavingeditaccount/' + id,
                    type: "POST",
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: valdata,
                });
                setTimeout(function () {
                    toastr.success('EDIT SUCCESSFULLY');
                    setTimeout(function () {
                        location.reload();
                    }, 2000)
                }, 1500);
            }
        }
    });



   //Resetpassword saving
    $("#resetpassword").validate({
        rules: {
        
            userName: {
                required: true,
            },
            password: {
                required: true,
                regex: ("(?=.*?[0-9])(?=.*?[A-Z])(?=.*?[#?!@$%^&*\\-_]).{8,}$")
            },
          

        },
        errorClass: "validationerror",
        messages: {
         
            userName: {
                required: "Please Enter Your Username",
            },
            password: {
                required: "Please Input a Password",
                regex: "At least 1 Uppercase,1 Lowercase,1 Special Character, 1 Numeric Character and Minimum of 8 Characters"
            },
          

        },
        submitHandler: function () {
            if ($("#resetpassword").valid()) {
                var valdata = $("#resetpassword").serialize();
                $('#resetpassModal').modal('hide');
                $.ajax({
                    url: '/api/resetpassword/postresetpassword/' + id,
                    type: "POST",
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: valdata,
                });
                setTimeout(function () {
                    toastr.success('RESET PASSWORD SUCCESSFULLY');
                    setTimeout(function () {
                        location.reload();
                    }, 2000)
                }, 1500);
            }
        }
    });




    //SERVERSIDE DATATABLES FOR ACCOUNT DATATABLE LIST
    $("#usertable").DataTable({
        "ajax": {
            "url": "/Account/GetUserDatatable",
            "type": "POST",
            "datatype": "json", dataSrc: "data"
        },

        "processing": "true",
        "serverSide": "true",
        "serverSide": "true",
        "order": [[1, "desc"]],

        "columns": [
            {
                "data": "Id", "name": "Id", "className": "hideThis"
            },
            {
                "data": "Name", "name": "Name",
            },
            {
                "data": "Email", "name": "Email"
            },


            {
                "data": "UserName", "name": "UserName"
            },


            {
                "data": "RoleID", "name": "RoleID"
            },
            {
                "data": null,
                'render': function (data, type, full, meta) {
                    return '<button  class=\'btn btn-success btn-sm  edit \' data-id = ' + data.Id + ' > Edit <span class="fa fa-edit f-20" >  </span></button>'
                        +
                        '<button  class=\'btn btn-danger deleteaccount btn-sm\' data-id = ' + data.Id + ' > Delete<span class="fa fa-trash f-20" >  </span></button>'
                       
                }
            },
            {
                "data": null,
                'render': function (data, type, full, meta) {
                    return '<button  class=\'btn btn-info btn-sm  photo \' data-id = ' + data.Id + ' > Image <span class="fa fa-image f-20" >  </span></button>'

                }
            },
            {
                "data": null,
                'render': function (data, type, full, meta) {
                    return '<button  class=\'btn btn-warning btn-sm  resetpass \' data-id = ' + data.Id + ' > ResetPassword <span class="fa fa-key f-20" >  </span></button>'
                       
                }
            },
        
        ],


        "processing": "true",
        "language": {
            "processing": "processing... please wait"
        },

        "fnInitComplete": function (oSettings, json) {
          
        }


    });

    /// DELETE ACCOUNT  IN ACCOUNT TABLE

    $('#usertable').on('click', '.deleteaccount', function () {
        var id = $(this).attr('data-id');
        var url = '/api/accountdelete/getaccountdelete/' + id;
        $("#DeleteAccountId").val(id);
        $("#deleteAccountModal").modal('show');




    });

    $("#btnAccounteDelete").click(function () {
     
        // for deletion
        var st = $("#DeleteAccountId").val();
        //alert(dept);
        $.ajax({
            type: "DELETE",
            url: "/api/accountdelete/getaccountdelete/" + st,
            success: function (response) {

                setTimeout(function () {
                    toastr.success("Account Successfully Deleted");
                    setTimeout(function () {
                        location.reload();
                    }, 2000)
                }, 1500);
                $("#deleteAccountModal").modal('hide');
            },
            error: function (response) {
                toastr.error("Unable to Delete Dependent in Foreign Key");
                //alert(result, result.DepartmentId, result.Name);
            }
        })



    })








}





