<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="mahasiswa" args="['Details']"/>
    </div>
    <div class="card-body">
        <g:if test="${mahasiswa}">
            <table class="table">
                <tr>
                    <th class="text-right">NIM</th><td class="text-left">${mahasiswa.nim}</td>
                </tr>
                <tr>
                    <th class="text-right">Nama Depan</th><td class="text-left">${mahasiswa.namaDepan}</td>
                </tr>
                <tr>
                     <th class="text-right">Nama Belakang</th><td class="text-left">${mahasiswa.namaBelakang}</td>
                </tr>
                <tr>
                    <th class="text-right">Email</th><td class="text-left">${mahasiswa.email}</td>
                </tr>
            </table>
        </g:if>
        <div class="form-action-panel">
            <g:link controller="mahasiswa" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
        </div>
    </div>
</div>