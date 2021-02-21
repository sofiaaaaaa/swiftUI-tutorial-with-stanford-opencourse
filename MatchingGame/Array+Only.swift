//
//  Array+Only.swift
//  MatchingGame
//
//  Created by punky on 2021/02/21.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
