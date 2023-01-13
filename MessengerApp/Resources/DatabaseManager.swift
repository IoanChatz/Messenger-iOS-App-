//
//  DatabaseManager.swift
//  MessengerApp
//
//  Created by IoanChatz on 13/1/23.
//

import Foundation
import FirebaseDatabase

final class DatabaseManager {
    
    static let shared =  DatabaseManager()
    
    private let database = Database.database().reference()
    
    public func test(){
        
        database.child("foo").setValue(["something":true])
        print("tried")
    }
    

}
