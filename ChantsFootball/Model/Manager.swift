//
//  Manager.swift
//  ChantsFootball
//
//  Created by Jehan lenoir on 07/12/2023.
//

import Foundation


enum Jobtype {
    case manager
    case headCoach
}

struct Manager {
    let name: String
    let job: Jobtype
}
