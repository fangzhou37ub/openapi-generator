//
// Order.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Order: JSONEncodable {

    public enum Status: String { 
        case Placed = "placed"
        case Approved = "approved"
        case Delivered = "delivered"
    }
    
    public var id: Int64?
    public var petId: Int64?
    public var quantity: Int32?
    public var shipDate: NSDate?
    /** Order Status */
    public var status: Status?
    public var complete: Bool?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["petId"] = self.petId?.encodeToJSON()
        nillableDictionary["quantity"] = self.quantity?.encodeToJSON()
        nillableDictionary["shipDate"] = self.shipDate?.encodeToJSON()
        nillableDictionary["status"] = self.status?.rawValue
        nillableDictionary["complete"] = self.complete
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
