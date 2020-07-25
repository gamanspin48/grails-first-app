package com.teguh.firstapp

import org.grails.web.util.WebUtils

class AppUtil {
    static saveResponse(Boolean isSuccess, def model){
        return [isSuccess: isSuccess, model:model]
    }
    static infoMessage(String message, boolean status = true){
        return [info: message, success: status]
    }
}
