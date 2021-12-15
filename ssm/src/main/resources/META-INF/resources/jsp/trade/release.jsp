<%--
  Created by IntelliJ IDEA.
  User: hhyygg2009
  Date: 2020/12/21
  Time: 20:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>二手平台</title>
</head>


<body layadmin-themealias="default" class="layui-layout-body">
<div class="layui-layout ">
    <%@ include file="../public/header.jsp" %>
    <div class="layui-main">
        <form method="post" class="layui-form layui-form-pane" style="margin-left: 30px;">
            <fieldset class="layui-elem-field layui-field-title">
                <legend>发布新物品</legend>
                <input name="id" value="${item.id}" hidden>
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
                            <select name="categoryId" lay-search="" lay-verify="required">
                                <c:forEach items="${category}" var="category">
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
                        <c:forEach items="${condition}" var="condition">
                            <input name="conditionsId" title="${condition.name}" type="radio"
                                   <c:if test="${condition.id == item.conditionsId}">checked='true'</c:if>
                                   value="${condition.id}">
                        </c:forEach>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline" style="z-index: 9;margin-top: 20px ;width: 800px;">
                        <textarea id="container" lay-verify="textarea" name="info">${item.info}</textarea>
                    </div>
                </div>


                <div class="layui-upload">
                    <button class="layui-btn" id="test2" type="button">图片上传(可多张)</button>
                    <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px;max-width: 770px;">
                        <span>预览图：</span>
                        <div class="layui-upload-list" id="demo2"></div>
                    </blockquote>
                </div>


                <div class="layui-form-item">
                    <label class="layui-form-label">价格(￥)</label>
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

<style>
    .layui-upload-img {
        height: 50px;
        width: 50px;
        padding-right: 50px
    }
</style>

<script src="/js/trade/release.js"></script>
<script>
    <c:if test="${not empty item.pic1}">addpic('${item.pic1}')
    </c:if>
    <c:if test="${not empty item.pic2}">addpic('${item.pic2}')
    </c:if>
    <c:if test="${not empty item.pic3}">addpic('${item.pic3}')
    </c:if>
</script>


