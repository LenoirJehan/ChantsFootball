//
//  Team.swift
//  ChantsFootball
//
//  Created by Jehan lenoir on 07/12/2023.
//

import Foundation


struct team {
    let id: TeamType
    let name: String
    let info: String
    let founded: String
    var isPlaying: Bool = false
    let manager: Manager
}

