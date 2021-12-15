layui.use(['layer', 'laypage', 'laymock', 'layfilter'], function () {
    var laypage = layui.laypage
    var layer = layui.laypage
    var laymock = layui.laymock
        , layfilter = layui.layfilter


    var dataSource

    layfilter.render({
        elem: '#layfilter',
        itemWidth: [100],
        height: 200,
        url: `${api}/items/filter`,
        dataSource: dataSource,
    });

    $('#getvalBtn').click(function () {
        layfilter.getValue(function (data) {
            page.selectedItem = JSON.stringify(data)
            // page.selectedItem=data
            page.loadPage()

            console.log(data);
        })
    });

    layfilter.on('click(layfilter)', function (obj) {
        console.log(obj);
    })

    var page = new Pager(`${api}/items/gets`, "page", function (res) {
        var $items = $("#items")
        $items.empty()
        $.each(res.data.items, function (index, val) {
            $items.append(insertItem(val));
        })
        if (res.code !== 0) {
            layer.msg(res.msg);
        }
    })
    page.keyword = $("#search").val()
    page.loadPage()


    // var curPage=1
    // loadPage()

    // function loadPage(){
    //     $("#items").empty();
    //     getItems(curPage);
    // }

    // function getItems() {
    //     var pageInfo = {'curr': curPage, 'keyword': keyword,'selectedItem':selectedItem}
    //
    //     $.ajax({
    //         type: 'POST',
    //         url: `${api}/items/gets`,
    //         dataType: 'json',
    //         async: true,
    //         data: pageInfo,
    //         success:  (res)=> {
    //             // console.log(data);
    //             $.each(res.data.items, function (index, val) {
    //                 $("#items").append(insertItem(val));
    //             })
    //             if (res.code !== 0) {
    //                 layer.msg(res.msg);
    //             }
    //
    //             //执行一个laypage实例
    //             laypage.render({
    //                 elem: 'page' //注意，这里的 test1 是 ID，不用加 # 号
    //                 , count: res.data.count //数据总数，从服务端得到
    //                 , curr: curPage
    //                 // ,limit: res.data.pageinfo.limit
    //                 , jump: function (obj, first) {
    //                     // console.log(obj.curr)
    //                     // console.log(obj.limit)
    //                     if (!first) {
    //                         curPage=obj.curr
    //                     }
    //                 }
    //             });
    //         }
    //
    //
    //     });
    // }


    function insertItem(data) {

        if (data.user.avatar !== "") {
            data.user.avatar = `src="/api/image/${data.user.avatar}"`
        } else {
            data.user.avatar = `src="/img/default.png"`
        }

        return `
<a href="detail/${data.id}" class="goodsitem">
    <div class="goods">
        <div class="item">
        <div class="imgbox"><img src="${upload}/${data.pic1}" alt="商品" class="goodstu"></div>
             
            <p class="info">${data.name}</p>
            <p class="item-price"><span>包邮</span>￥${data.price}</p>
            <div class="user"> 
                <img ${data.user.avatar} alt="头像" class="touxiang"> 
                <p class="username">${data.user.username}</p>
            </div>            
        </div>
    </div>
</a>`

    }
})