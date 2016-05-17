<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<es:contentHeader/>
<div data-table="table" class="panel">

    <ul class="nav nav-tabs">
        <li ${empty param['search.show_eq'] ? 'class="active"' : ''}>
            <a href="${ctx}/showcase/sample">
                <i class="icon-table"></i>
                所有助学金列表
            </a>
        </li>
    </ul>

    <es:showMessage/>

    <div class="row-fluid tool ui-toolbar">
        <div class="span4">
            <div class="btn-group">

                <shiro:hasPermission name="fellowship:sample:audit">
                    <div class="btn-group">
                        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="icon-pencil"></i>
                            审核
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a class="btn btn-link status-success">
                                    <i class="icon-pencil"></i>
                                    通过
                                </a>
                            </li>
                            <li>
                                <a class="btn btn-link status-fail">
                                    <i class="icon-pencil"></i>
                                    驳回
                                </a>
                            </li>
                        </ul>
                    </div>
                </shiro:hasPermission>
            </div>
        </div>
        <div class="span8">
            <%@include file="searchForm.jsp"%>
        </div>
    </div>
    <%@include file="listTable.jsp"%>

</div>

<es:contentFooter/>
<script type="text/javascript">
    $(function() {
        $(".status-success,.status-fail").click(function() {

            var checkbox = $.table.getAllSelectedCheckbox($(".table"));
            if(checkbox.size() == 0) {
                return;
            }
            var isAuditSuccess = $(this).is(".status-success");
            var title = isAuditSuccess ? "审核通过" : "驳回";
            var url = isAuditSuccess ?
            "${ctx}/fellowship/sample/audit/status/1?" + checkbox.serialize()
                    :
            "${ctx}/fellowship/sample/audit/status/2?" + checkbox.serialize();
            $.app.confirm({
                title : title,
                ok : function() {
                    var table = $("#table");
                    $.table.reloadTable(table, url , $.table.tableURL(table));
                }
            });
        });
    });
</script>