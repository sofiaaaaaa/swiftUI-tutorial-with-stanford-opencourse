//
//  Array+Identifiable.swift
//  MatchingGame
//
//  Created by punky on 2021/02/21.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndexdex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        // TODO
        return nil
    }
}

