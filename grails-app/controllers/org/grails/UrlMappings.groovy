package org.grails

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "mahasiswa", action: "index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
