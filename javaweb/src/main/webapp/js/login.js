function login() {
    $.ajax({
        type:'POST',
        url:'loginaction',
        dataType:'json',
        async:true,
        success:function (data) {
            console.log(data)

        }

    })
}