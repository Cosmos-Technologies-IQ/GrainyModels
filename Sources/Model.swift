//
//  CreateModel.swift
//  GrainyAPI
//
//  Created by Zaid Rahhawi on 3/8/25.
//

import Foundation

public struct Model: Codable, Identifiable, Equatable, Hashable, Sendable {
    public let id: UUID
    public let title: String
    public let revisions: [Revision]
    
    public init(id: UUID, title: String, revisions: [Revision]) {
        self.id = id
        self.title = title
        self.revisions = revisions
    }
}

public extension Model {
    struct Create: Codable, Sendable {
        public let title: String
        
        public init(title: String) {
            self.title = title
        }
    }
    
    struct Update: Codable, Sendable {
        public let title: String?
        
        public init(title: String?) {
            self.title = title
        }
    }
}
