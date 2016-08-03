//
//  PingPongHandler.swift
//  PingPongServer
//
//  Created by Daniel Burton on 7/6/16.
//  Copyright © 2016 Daniel Burton. All rights reserved.
//

import Foundation
import PerfectLib

public func PerfectServerModuleInit() {
    Routing.Handler.registerGlobally()
    Routing.Routes["GET", ["/", "index.html"]] = { (_:WebResponse) in return IndexHandler() }
    
}

class IndexHandler: RequestHandler {
    
    func handleRequest(request: WebRequest, response: WebResponse) {
        
        response.appendBodyString("Ping Pong")
        response.requestCompletedCallback()
    }
    
}