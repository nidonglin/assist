<%--
    <div data-table="table">
       <a class='btn-create'>  新增
       <a class='btn-update'>  修改
       <a class='btn-delete'> 删除

       <a class='btn-custom'> 自定义按钮 系统不处理

    异步表格：
    table
        data-async="true"
        data-async-container 设定异步内容加载到的容器
        data-async-callback  设定异步内容加载完成后执行的回调 默认到当前window里边去找同名的函数，自动注入当前table
        data-url 异步加载时使用的url
        data-prefix 指定分页/排序的字段前缀
    search form (class='search-form')
        data-search-table 指定search table的id
        data-change-search 指定是否表单里的输入框 改变时触发查询

        class="btn-search-all" 表示查询所有
    </div>
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<table id="table" class="sort-table table table-bordered table-hover" data-async="true">
    <thead>
    <tr>
        <th style="width: 80px">
            <a class="check-all" href="javascript:;">全选</a>
            |
            <a class="reverse-all" href="javascript:;">反选</a>
        </th>
        <th style="width: 100px" sort="id">学号</th>
        <th style="width: 150px" sort="name">姓名</th>
        <th style="width: 150px" sort="name">班级</th>
        <th style="width: 150px" sort="name">智育成绩</th>
        <th style="width: 150px" sort="name">德育成绩</th>
        <th style="width: 150px" sort="name">综合成绩</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${page.content}" var="m">
        <tr>
            <td class="check"><input type="checkbox" name="ids" value="${m.id}"></td>
            <td>
                <a class="btn btn-link btn-edit" href="${ctx}/student/sample/${m.id}">${m.sno}</a>
            </td>
            <td>${m.name}</td>
            <td>${m.classname}</td>
            <td>${m.ie}</td>
            <td>${m.me}</td>
            <td>${m.obs}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<es:page page="${page}"/>
