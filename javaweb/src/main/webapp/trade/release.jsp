<%--
  Created by IntelliJ IDEA.
  User: hhyygg2009
  Date: 2020/12/21
  Time: 20:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id=request.getParameter("id");

%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>二手平台</title>
</head>


<body layadmin-themealias="default" class="layui-layout-body">
<div class="layui-layout ">
    <%@ include file="/public/header.jsp" %>
    <div class="layui-main" style="">

        <form method="post" class="layui-form layui-form-pane" style="margin-left: 30px;">
            <fieldset class="layui-elem-field layui-field-title">
                <legend>发布新物品</legend>


                <div class="layui-form-item">
                    <label class="layui-form-label">标题</label>
                    <div class="layui-input-block" style="width: 400px;">
                        <input name="name" class="layui-input" type="text" value="${item.name}"
                               placeholder="请输入标题" autocomplete="off" lay-verify="required">
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">分类</label>
                        <div class="layui-input-inline" style="z-index: 9999;">
                            <select name="category_id" lay-search="" lay-verify="required">
                                <c:forEach items="${categorys}" var="category">
                                    <option
                                            <c:if test="${category.id == item.categoryId}">selected</c:if>
                                            value="${category.id}">${category.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">预估机况</label>
                    <div class="layui-input-block">
                        <c:forEach items="${conditions}" var="condition">
                            <input name="conditions_id" title="${condition.name}" type="radio"
                                   <c:if test="${condition.id == item.conditionsId}">checked='true'</c:if>
                                   value="${condition.id}">
                        </c:forEach>

                        <!--						<input name="conditions_id" title="几乎全新" type="radio" checked="" value="0">/-->
                        <!--						<input name="conditions_id" title="二手" type="radio" value="1">-->

                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label" style="float: none;">描述</label>
                    <div class="layui-inline" style="z-index: 9;margin-top: 20px ;width: 800px;">
                        <!--						&lt;!&ndash; 加载编辑器的容器 &ndash;&gt;-->
                        <!--						<script id="container" name="content" type="text/plain">-->
                        <!--						</script>-->
                        <!--						&lt;!&ndash; 实例化编辑器 &ndash;&gt;-->

                        <textarea id="container" lay-verify="textarea" name="info" style="display: none;">${item.info}</textarea>
                    </div>
                </div>


                <div class="layui-upload">
                    <button class="layui-btn" id="test2" type="button">图片上传(可多张)</button>
                    <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px;max-width: 770px;">
                        预览图：
                        <div class="layui-upload-list" id="demo2"></div>
                    </blockquote>
                </div>



                <div class="layui-form-item">
                    <label class="layui-form-label">价格</label>
                    <div class="layui-input-block">
                        <input name="price" class="layui-input" value="${item.price}"
                               type="text" placeholder="￥" autocomplete="off" lay-verify="price" style="width: 225px;">
                    </div>
                </div>
                <div id="pics"></div>


                <div class="layui-form-item">
                    <button class="layui-btn" lay-filter="release" lay-submit>提交</button>
                </div>


            </fieldset>
        </form>
    </div>
</div>
</body>



</html>

<!--	</body>-->
<style>
    .layui-upload-img{
        height: 50px;width: 50px;padding-right: 50px
    }
</style>

<script>
    picnum=1

    function addpic(pic){
        $('#demo2').append('<img src="'+upload+'/'+pic+'" class="layui-upload-img">')
        $('#pics').append('<input type="text" name="pic'+picnum+'" value="'+pic+'" hidden>');
        picnum++;
    }

    <c:if test="${not empty item.pic1}">addpic('${item.pic1}')</c:if>
    <c:if test="${not empty item.pic2}">addpic('${item.pic2}')</c:if>
    <c:if test="${not empty item.pic3}">addpic('${item.pic3}')</c:if>

    id=null;
    <%if(id!=null){out.print("id="+id+";");}%>

    //select的渲染
    layui.use(['form','layedit'], function() {
        var form = layui.form;
        var layedit = layui.layedit;
        var index=layedit.build('container'); //建立编辑器
        form.verify({
            price: function(value) {
                if (!/^[0-9]+.?[0-9]*$/.test(value))
                    return '格式有误，请填入非负整数';
            },
            textarea: function () {
                return layedit.sync(index);
            }

        })
        form.on('submit(release)', function (data) {
            // console.log(data);

            console.log(data.field);
            data.field.id=id
            insert(JSON.stringify(data.field));
            return false;
        })
    })

    function insert(data){
        $.ajax({
            type: 'POST',
            url: '<%=request.getContextPath()%>/trade/item',
            dataType: 'json',
            async: true,
            data: {"data":data,"oper":"insert"},
            success: function (data) {
                console.log(data);
                if (data.code == 0) {
                    window.location.href = "my";
                } else {
                    layui.use('layer', function () {
                        layui.layer.msg(data.msg);
                    })
                }

            }

        })
    }


    //upload的启用
    layui.use('upload', function() {
        var $ = layui.jquery,
            upload = layui.upload;

        //多图片上传
        var uploadInst =upload.render({
            elem: '#test2',
            url: '<%=request.getContextPath()%>/trade/item/imgupload', //改成您自己的上传接口
            field:'image',
            multiple: true,
            before: function (obj) {
                //预读本地文件示例，不支持ie8
                obj.preview(function (index, file, result) {
                    $('#demo2').append('<img src="' + result + '" alt="' + file.name + '" class="layui-upload-img" style="height: 50px;width: 50px;padding-right: 50px">')
                });
            },
            done: function (res) {
                //如果上传失败
                if (res.code > 0) {
                    return layer.msg('上传失败');
                }
                //上传成功
                // console.log(res);
                // console.log(res.data);

                let pic=res.data.picaddr;
                $('#pics').append('<input type="text" name="pic'+picnum+'" value="'+pic+'" hidden>');
                picnum++;

            }
            , error: function () {
                //演示失败状态，并实现重传
                layui.use('layer', function () {
                    layui.layer.msg(data.msg);
                })

            },
        });
    })
</script>




<!--	<script type="text/javascript">-->
<!--		var ue = UE.getEditor('container');-->
<!--	</script>-->
<!--</html>-->
