<meta name="layout" content="main"/>
<div class="card">
    <div class="card-header">
        <g:message code="mahasiswa" args="['Create']"/>
    </div>
    <div class="card-body">
        <g:form controller="mahasiswa" action="save">
            <g:render template="form"/>
            <div class="form-action-panel">
                <g:submitButton class="btn btn-primary" name="login" value="${g.message(code: "save")}"/>
                <g:link controller="mahasiswa" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
            </div>
        </g:form>
    </div>
</div>
