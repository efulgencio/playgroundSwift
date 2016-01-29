//
//  ClasePlay.swift
//  PlayGroundSwift
//
//  Created by eduardo fulgencio on 29/1/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

import Foundation

class Counter {
    var count = 0
    func increment() {
        ++count
    }
    func incrementBy(amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}