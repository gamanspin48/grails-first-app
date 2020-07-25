package com.teguh.firstapp

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class MahasiswaService {
    def save(GrailsParameterMap params){
        Mahasiswa mahasiswa = new Mahasiswa(params)
        def response = AppUtil.saveResponse(false,mahasiswa)
        if (mahasiswa.validate()){
            mahasiswa.save()
            if (!mahasiswa.hasErrors()){
                response.isSuccess = true
            }
        }

        return response
    }
    def update(Mahasiswa mahasiswa, GrailsParameterMap params){
        mahasiswa.properties = params
        def response = AppUtil.saveResponse(false,Mahasiswa)
        if (mahasiswa.validate()){
            mahasiswa.save(flush: true)
            if (!mahasiswa.hasErrors()){
                response.isSuccess = true
            }
        }

        return response
    }

    def getById(Serializable id){
        return Mahasiswa.get(id)
    }

    def list(GrailsParameterMap params){
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<Mahasiswa> mahasiswaList = Mahasiswa.createCriteria().list(params){
            if (params?.colName && params?.colValue){
                like(params.colName,"%"+params.colValue+"%")
            }
            if(!params.sort){
                order("id", "desc")
            }
        }
        return [list: mahasiswaList, count: Mahasiswa.count()]
    }

    def delete(Mahasiswa mahasiswa){
        try {
            mahasiswa.delete(flush:true)
        }catch(Exception e){
            println(e.getMessage())
            return false
        }
        return true
    }
}
