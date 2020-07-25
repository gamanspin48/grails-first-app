<div class="form-group">
    <label><g:message code="nim"/> *</label>
    <g:textField name="nim" class="form-control" value="${mahasiswa?.nim}" placeholder="Please Enter NIM"/>
    <UIHelper:renderErrorMessage fieldName="nim" model="${mahasiswa}" errorMessage="please.enter.nim"/>
</div>

<div class="form-group">
    <label><g:message code="nama.depan"/></label>
    <g:textField name="namaDepan" class="form-control" value="${mahasiswa?.namaDepan}" placeholder="Masukkan Nama Depan"/>
     <UIHelper:renderErrorMessage fieldName="nama depan" model="${mahasiswa}" errorMessage="Salah Email"/>
</div>


<div class="form-group">
    <label>Nama Belakang </label>
    <g:textField name="namaBelakang" class="form-control" value="${mahasiswa?.namaBelakang}" placeholder="Masukkan Nama Belakang"/>
</div>

<div class="form-group">
    <label><g:message code="email.address"/> *</label>
    <g:field type="email" name="email" class="form-control" value="${mahasiswa?.email}" placeholder="Please Enter Email"/>
    <UIHelper:renderErrorMessage fieldName="email" model="${mahasiswa}" errorMessage="Your Email Address is not Valid / Already Exist in System"/>
</div>

