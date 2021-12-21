//
//  main.swift
//  FixedLengthQueries
//
//  Created by slava bily on 21.12.2021.
//

import Foundation

func solve(arr: [Int], queries: [Int]) -> [Int] {
    for q in queries {
        for i in 0..<arr.count - 1 {
            var subArr = [Int]()
            for j in 0..<q {
                subArr.append(arr[i + j])
            }
            print(subArr)
        }
    }
    
    
    
    return [0]
}

print(solve(arr: [2,3,4,5,6], queries: [2,3]))

