//
//  Revision.swift
//  GrainyConsole
//
//  Created by Zaid Rahhawi on 3/8/25.
//

import Foundation

public struct Revision: Codable, Identifiable, Equatable, Hashable, Sendable {
    public let id: UUID
    public let number: Int
    public let fileURL: URL
    public let modelID: Model.ID
    
    public init(id: UUID, number: Int, fileURL: URL, modelID: Model.ID) {
        self.id = id
        self.number = number
        self.fileURL = fileURL
        self.modelID = modelID
    }
}

public extension Revision {
    struct Create: Codable, Sendable {
        public let modelID: Model.ID
        public let number: Int
        
        public init(modelID: Model.ID, number: Int) {
            self.modelID = modelID
            self.number = number
        }
    }
    
    struct Update: Codable, Sendable {
        public let number: Int
        
        public init(number: Int) {
            self.number = number
        }
    }
}
