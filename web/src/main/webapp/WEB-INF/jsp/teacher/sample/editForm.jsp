<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<es:contentHeader/>
<div class="panel">

    <ul class="nav nav-tabs">
        <shiro:hasPermission name="teacher:sample:create">
        <c:if test="${op eq '新增'}">
            <li ${op eq '新增' ? 'class="active"' : ''}>
                <a href="${ctx}/teacher/sample/create?BackURL=<es:BackURL/>">
                    <i class="icon-file-alt"></i>
                    新增
                </a>
            </li>
        </c:if>
        </shiro:hasPermission>


        <c:if test="${not empty m.id}">
            <li ${op eq '查看' ? 'class="active"' : ''}>
                <a href="${ctx}/teacher/sample/${m.id}?BackURL=<es:BackURL/>">
                    <i class="icon-eye-open"></i>
                    查看
                </a>
            </li>
            <shiro:hasPermission name="teacher:sample:update">
            <li ${op eq '修改' ? 'class="active"' : ''}>
                <a href="${ctx}/teacher/sample/${m.id}/update?BackURL=<es:BackURL/>">
                    <i class="icon-edit"></i>
                    修改
                </a>
            </li>
            </shiro:hasPermission>

            <shiro:hasPermission name="teacher:sample:delete">
            <li ${op eq '删除' ? 'class="active"' : ''}>
                <a href="${ctx}/teacher/sample/${m.id}/delete?BackURL=<es:BackURL/>">
                    <i class="icon-trash"></i>
                    删除
                </a>
            </li>
            </shiro:hasPermission>
        </c:if>
        <li>
            <a href="<es:BackURL/>" class="btn btn-link">
                <i class="icon-reply"></i>
                返回
            </a>
        </li>
    </ul>

    <form:form id="editForm" method="post" commandName="m" cssClass="form-horizontal">
        <!--上一个地址 如果提交方式是get 需要加上-->
        <%--<es:BackURL hiddenInput="true"/>--%>

            <es:showGlobalError commandName="m"/>

            <form:hidden path="id"/>

            <div class="control-group">
                <form:label path="workno" cssClass="control-label">职工号</form:label>
                <div class="controls">
                        <form:input path="workno" cssClass="validate[required,custom[workno],ajax[ajaxWorknoCall]]" placeholder="职工号必须唯一"/>
                </div>
            </div>

            <div class="control-group">
                <form:label path="name" cssClass="control-label">姓名</form:label>
                <div class="controls">
                    <form:input path="name" cssClass="validate[required]" placeholder="姓名"/>
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

            <div class="control-group">
                <div class="controls">
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
<script type="text/javascript">
    $(function () {
        <c:choose>
            <c:when test="${op eq '删除'}">
                //删除时不验证 并把表单readonly
                $.app.readonlyForm($("#editForm"), false);
            </c:when>
            <c:when test="${op eq '查看'}">
                $.app.readonlyForm($("#editForm"), true);
            </c:when>
            <c:otherwise>
                //自定义ajax验证  ajax[ajaxNameCall] 放到验证规则的最后（放到中间只有当submit时才验证）
                $.validationEngineLanguage.allRules.ajaxWorknoCall= {
                    "url": "${ctx}/teacher/sample/validate",
                    //动态提取的数据。验证时一起发送
                    extraDataDynamic : ['#id'],
                    //验证失败时的消息
                    //"alertText": "* 该名称已被其他人使用",
                    //验证成功时的消息
                    //"alertTextOk": "该名称可以使用",
                    "alertTextLoad": "* 正在验证，请稍等。。。"
                };
                $.validationEngineLanguage.allRules.workno={
                    "regex": /^\w{1,20}$/,
                    "alertText": "* 5到10个字母、数字、下划线"
                };
                var validationEngine = $("#editForm").validationEngine();
                <es:showFieldError commandName="m"/>
            </c:otherwise>
        </c:choose>
    });
</script>