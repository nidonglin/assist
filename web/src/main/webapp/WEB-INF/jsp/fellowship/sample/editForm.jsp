<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<es:contentHeader/>

<div class="panel">
    <ul class="nav nav-tabs">
        <shiro:hasPermission name="scholarship:sample:create">
            <c:if test="${op eq '新增'}">
                <li ${op eq '新增' ? 'class="active"' : ''}>
                    <a href="${ctx}/admin/sys/user/create?BackURL=<es:BackURL/>">
                        <i class="icon-file-alt"></i>
                        新增
                    </a>
                </li>
            </c:if>
        </shiro:hasPermission>
        <li>
            <a href="<es:BackURL/>" class="btn btn-link">
                <i class="icon-reply"></i>
                返回
            </a>
        </li>
    </ul>

    <form:form id="editForm" method="post" commandName="m" cssClass="form-inline form-horizontal form-small">
        <es:showGlobalError commandName="m"/>
        <form:hidden path="id"/>
        <div id="baseinfo">
            <h4 class="hr">奖学金申请</h4>

                <%--<div class="control-group span4">
                    <form:label path="type" cssClass="control-label">申请类型</form:label>
                    <div class="controls inline-radio">
                        <input type="radio" name="type" value="1" checked> 奖学金
                        <input type="radio" name="type" value="2"> 助学金
                    </div>
                </div>
    --%>

            <div class="control-group span4">
                <form:label path="sno" cssClass="control-label">学号</form:label>
                <div class="controls">
                    <form:input path="sno" cssClass="validate[required,custom[email],ajax[ajaxCall]]"
                                placeholder="学号"/>
                </div>
            </div>
            <div class="control-group span4">
                <form:label path="date" cssClass="control-label">创建时间</form:label>
                <div class="controls input-append date">
                    <form:input path="date"
                                data-format="yyyy-MM-dd hh:mm:ss"
                                data-position="bottom-left"
                                placeholder="默认当前时间"/>
                    <span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar"></i></span>
                </div>
            </div>
            <input type="hidden" name="type" value="2">
            <div class="control-group span4">
                <form:label path="level" cssClass="control-label">等级</form:label>
                <div class="controls inline-radio">
                    <input type="radio" name="level" value="1" checked> 一等
                    <input type="radio" name="level" value="2"> 二等
                    <input type="radio" name="level" value="3"> 三等
                </div>
            </div>
            <div class="control-group span8">
                <form:label path="remark" cssClass="control-label">申请理由</form:label>
                <div class="controls inline-radio">
                    <textarea name="remark"></textarea>
                </div>
            </div>
        </div>


        <c:if test="${op eq '新增'}">
            <c:set var="icon" value="icon-file-alt"/>
        </c:if>
        <c:if test="${op eq '修改'}">
            <c:set var="icon" value="icon-edit"/>
        </c:if>
        <c:if test="${op eq '删除'}">
            <c:set var="icon" value="icon-trash"/>
        </c:if>

        <div class="control-group left-group">
            <div>
                <button type="submit" class="btn btn-primary">
                    <i class="${icon}"></i>
                        ${op}
                </button>
                <a href="<es:BackURL/>" class="btn">
                    <i class="icon-reply"></i>
                    返回
                </a>
            </div>
        </div>

    </form:form>
</div>
<es:contentFooter/>
<%@include file="/WEB-INF/jsp/common/import-zTree-css.jspf"%>
<%@include file="/WEB-INF/jsp/common/import-zTree-js.jspf"%>
<%@include file="/WEB-INF/jsp/common/admin/import-sys-js.jspf"%>
<script type="text/javascript">
    $(function () {


    });

</script>