<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf" %>
<es:contentHeader/>
<div>

    <ul class="nav nav-tabs">

        <li class="active">
            <a>
                <i class="icon-level-down"></i>
                导入${type.info}
            </a>
        </li>
        <li>
            <a href="<es:BackURL/>" class="btn btn-link">
                <i class="icon-reply"></i>
                返回
            </a>
        </li>
    </ul>

    <form:form id="editForm" method="post" commandName="m" cssClass="form-horizontal" enctype="multipart/form-data">

        <es:showMessage/>

        <div class="control-group">
            <label for="file" class="control-label">格式</label>

            <div class="controls">
                        一行一条，每个单元格一个，如：<br/>
                        第一行是标题 ： 学号,姓名,性别(male,female),生日(yyyy-MM-dd),班级<br/>
                        从第二行开始是内容 ： 20120102,肖桂芹,female,1990-12-12,计算机卓越1班<br/>
                注意：如果学号冲突 覆盖内容，否则新增。<br/>
            </div>
        </div>

        <div class="control-group">
            <label for="file" class="control-label">文件</label>

            <div class="controls">
                <input id="file" type="file" name="file" class="custom-file-input"/>
            </div>
        </div>

        <div class="control-group">
            <div class="controls">
                <button type="submit" class="btn btn-primary">
                    <i class="icon-level-down"></i>
                    导入
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