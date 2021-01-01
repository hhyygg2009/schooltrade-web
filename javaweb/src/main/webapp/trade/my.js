function itemoper(oper,id){
    $.ajax({
        type: 'POST',
        url: ''+webroot+'/trade/item',
        dataType: 'json',
        async: true,
        data: {"oper":oper,"id":id},
        success: function (data) {
            console.log(data);
            // console.log(data.data);
            // console.log(data.data[0]);

            if (data.code == 0) {
                layui.use('layer', function () {
                    layui.layer.msg(data.msg);
                })
            }
        }
    })
}

var page
getItemByUserId(1)

function getItemByUserId(page){
    data={"oper":"getbyuserid","curr":page}
    console.log(userid);
    if(userid!=null){
        data.push("userid",userid);
    }
    $.ajax({
        type: 'POST',
        url: ''+webroot+'/trade/items',
        dataType: 'json',
        async: true,
        data: data,
        success: function (resp) {
            console.log(resp);
            $.each(resp.data.items,function (index,val) {
                console.log(val);
                $("#items").append(gethtmlitem(val));

            })
            if (resp.code != 0) {
                layui.use('layer', function () {
                    layui.layer.msg(resp.msg);
                })
            }
            layui.use('laypage', function(){
                var laypage = layui.laypage;
                //执行一个laypage实例
                laypage.render({
                    elem: 'pager' //注意，这里的 test1 是 ID，不用加 # 号
                    ,count: resp.data.count //数据总数，从服务端得到
                    ,curr:page
                    ,jump:function (obj,first) {
                        // console.log(obj.curr)
                        // console.log(obj.limit)
                        if(!first){
                            $("#items").empty();
                            getItemByUserId(obj.curr)
                        }
                    }
                });
            });
        }
    })
}


function gethtmlitem(item) {
    return '\n' +
        '                        <div class="big-goods">\n' +
        '                            <p class="info">信息号：'+item.id+'</p>\n' +
        '                            <div class="goods-info">\n' +
        '                                <div class="goods-left">\n' +
        '                                    <img src="'+upload+'/'+item.pic1+'" alt="">\n' +
        '                                    <ul class="goods-ul">\n' +
        '                                        <li><a href="detail?id='+item.id+'">'+item.name+'</a></li>\n' +
        '                                        <li><p>'+item.category.name+'</p></li>\n' +
        '                                        <li>发布时间:'+new Date(item.createtime).toLocaleString()+'</li>\n' +
        '                                    </ul>\n' +
        '                                </div>\n' +
        '                                <div class="goods-right">\n' +
        '                                    <ul>\n' +
        '                                        <li><a href="" class="c1">'+item.category.name+'</a></li>\n' +
        '                                        <li><a href="" class="c1">'+item.state.name+'</a></li>\n' +
        '                                    </ul>\n' +
        '                                    <div class="goods-right-link">\n' +
        '                                        <ul>\n' +
        '                                            <li><a href="'+webroot+'/trade/item?oper=del&id='+item.id+'">彻底删除</a></li>\n' +
        '                                            <li><a href="'+webroot+'/trade/release?id='+item.id+'">修改</a></li>\n' +
        '                                            <li><a href="'+webroot+'/trade/item?oper=on&id='+item.id+'">上架/下架</a></li>\n' +
        '                                            <!--                                    <li><a href="">恢复</a></li>-->\n' +
        '                                        </ul>\n' +
        '                                    </div>\n' +
        '                                </div>\n' +
        '\n' +
        '                            </div>\n' +
        '                        </div>'
}