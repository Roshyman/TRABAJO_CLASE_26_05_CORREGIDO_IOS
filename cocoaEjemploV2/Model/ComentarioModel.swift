//
//  ComentarioModel.swift
//  cocoaEjemploV2
//
//  Created by Ronald Murillo Solano on 1/6/18.
//  Copyright © 2018 Ronald Murillo Solano. All rights reserved.
//

import Foundation
class ComentarioModel{
    var name : String
    var email : String
    var id : Int
    var postId : Int
    var body : String
    
    //init es el constructor
    init(pName: String , pEmail: String , pId: Int , pPostId: Int , pBody: String) {
        name = pName
        email = pEmail
        id = pId
        postId = pPostId
        body = pBody
    }
    
    
}
