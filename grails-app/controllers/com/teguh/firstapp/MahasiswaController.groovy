package com.teguh.firstapp

class MahasiswaController {

    MahasiswaService mahasiswaService
    
    def index(){
        def response = mahasiswaService.list(params)
        [mahasiswaList: response.list, total: response.count]
    }
    def details(Integer id){
        def response = mahasiswaService.getById(id)
        if (!response){
            redirect(controller: "mahasiswa", action: "index")
        }else{
            [mahasiswa: response]
        }
    }
    def create(){
        [mahasiswa: flash.redirectParams]
    }
    def save(){
        def response = mahasiswaService.save(params)
        if(!response.isSuccess){
            flash.redirectParams = response.model
            flash.message = AppUtil.infoMessage(g.message(code: "unable.to.save"), false)
            redirect(controller: "mahasiswa", action: "create")
        }else{
            flash.message = AppUtil.infoMessage(g.message(code: "saved"))
            redirect(controller: "mahasiswa", action: "index")
        }
    }
    def edit(Integer id){
        if (flash.redirectParams){
            [mahasiswa: flash.redirectParams]
        }else{
            def response = mahasiswaService.getById(id)
            if (!response){
                flash.message = AppUtil.infoMessage(g.message(code: "invalid.entity"), false)
                redirect(controller: "mahasiswa", action: "index")
            }else{
                [mahasiswa: response]
            }
        }
    }
    def update() {
        def response = mahasiswaService.getById(params.id)

        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "invalid.entity"), false)
            redirect(controller: "mahasiswa", action: "index")
        }else{
            response = mahasiswaService.update(response, params)

            if (!response.isSuccess){
                flash.redirectParams = response.model
                flash.message = AppUtil.infoMessage(g.message(code: "unable.to.update"), false)
                redirect(controller: "mahasiswa", action: "edit")
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "updated"))
                redirect(controller: "mahasiswa", action: "index")
            }
        }
    }

    def delete(Integer id) {
        def response = mahasiswaService.getById(id)
        if (!response){
            flash.message = AppUtil.infoMessage(g.message(code: "invalid.entity"), false)
            redirect(controller: "mahasiswa", action: "index")
        }else{
            response = mahasiswaService.delete(response)
            if (!response){
                flash.message = AppUtil.infoMessage(g.message(code: "unable.to.delete"), false)
            }else{
                flash.message = AppUtil.infoMessage(g.message(code: "deleted"))
            }
            redirect(controller: "mahasiswa", action: "index")
        }
    }
}
