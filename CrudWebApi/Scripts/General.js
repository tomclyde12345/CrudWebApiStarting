
function CreateTribe() {
    $("#SaveRequest").validate({
        rules: {
            Name: {
                required: true,
            },
        },
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
            },

        },
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
                required: "Please Input a Pssword",
            },
        },
        submitHandler: function () {
            if ($("#createaccount").valid()) {
                var valdata = $("#createaccount").serialize();
                $('#createModal').modal('hide');
                $.ajax({
                    url: '/api/saveaccount/postsaveaccount/',
                    type: "POST",
                    dataType: 'json',
                    contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                    data: valdata,
                });
                setTimeout(function () {
                    toastr.success('Successsfully Added a Account');
                    setTimeout(function () {
                        location.reload();
                    }, 2000)
                }, 1500);
            }
        }
    });
}





