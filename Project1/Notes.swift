//
//  Notes.swift
//  Project1 Watch App
//
//  Created by Kevin Gomez on 27/01/2024.
//

import Foundation


struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
