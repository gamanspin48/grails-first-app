%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="mahasiswa" args="['List']"/>

        %{--Actions--}%
      <span class="float-right">

        %{--Search Panel --}%
        <div class="btn-group">
            <g:form controller="member" action="index" method="GET">
                <div class="input-group" id="search-area">
                    <g:select name="colName" class="form-control" from="[email: 'Email']" value="${params?.colName}" optionKey="key" optionValue="value"/>
                    <g:textField name="colValue" class="form-control" value="${params?.colValue}"/>
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="submit">Search</button>
                    </span>
                </div>
            </g:form>
        </div>
         %{--Create and Reload Panel--}%
        <div class="btn-group">
            <g:link controller="mahasiswa" action="create" class="btn btn-success"><g:message code="create"/></g:link>
            <g:link controller="mahasiswa" action="index" class="btn btn-primary"><g:message code="reload"/></g:link>
        </div>
        </span>
    </div>

    %{--Table Panel--}%
    <div class="card-body">
        <table class="table table-bordered">
            <thead class="thead-dark">
            <tr>
                <g:sortableColumn property="nim" title="${g.message(code: "nim")}"/>
                <g:sortableColumn property="namaDepan" title="${g.message(code: "nama.depan")}"/>
                <g:sortableColumn property="email" title="${g.message(code: "email")}"/>
                <th class="action-row"><g:message code="action"/></th>
            </tr>
            </thead>
            <tbody>
                <g:each in="${mahasiswaList}" var="info">
                    <tr>
                        <td>${info?.nim}</td>
                        <td>${info?.namaDepan}</td>
                        <td>${info?.email}</td>
                        %{--Table Actions --}%
                        <td>
                            <div class="btn-group">
                                <g:link controller="mahasiswa" action="details" class="btn btn-secondary" id="${info.id}"><i class="fas fa-eye"></i></g:link>
                                <g:link controller="mahasiswa" action="edit" class="btn btn-secondary" id="${info.id}"><i class="fas fa-edit"></i></g:link>
                                <g:link controller="mahasiswa" action="delete" id="${info.id}" class="btn btn-secondary delete-confirmation"><i class="fas fa-trash"></i></g:link>
                            </div>
                        </td>
                    </tr>
                </g:each>
            </tbody>
        </table>
       %{--Pagination Area--}%
        <div class="paginate">
            <g:paginate total="${total ?: 0}" />
        </div>
    </div>
</div>