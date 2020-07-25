package com.teguh.firstapp

class Mahasiswa {

    Integer id
    String nim
    String namaDepan
    String namaBelakang
    String email
    Boolean isActive = true

    Date dateCreated
    Date lastUpdated

    static constraints ={
        nim(blank:false,unique:true,nullable:false)
        namaDepan(blank:false,nullable:false)
        email(email:true,nullable:false,unique:true,blank:false)
        namaBelakang(nullable:true)
    }
}
