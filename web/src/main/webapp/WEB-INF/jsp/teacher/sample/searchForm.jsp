<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<form id="searchForm" class="form-inline search-form" data-change-search="true">

    <esform:label path="search.workno_in">工号</esform:label>
    <esform:input path="search.workno_in" cssClass="input-big" placeholder="多个使用空格分隔"/>
    <%--<input type="text" id="search.id_in" name="search.id_in" value="${param['search.id_in']}"  />--%>
    &nbsp;&nbsp;
    <input type="submit" class="btn " value="查询"/>
    <a class="btn btn-link btn-clear-search">清空</a>
</form>
