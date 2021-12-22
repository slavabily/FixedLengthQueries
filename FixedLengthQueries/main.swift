//
//  main.swift
//  FixedLengthQueries
//
//  Created by slava bily on 21.12.2021.
//

import Foundation

func solve(arr: [Int], queries: [Int]) -> [Int] {
    var resArr = [Int]()
    for q in queries {
        var metaArr = [[Int]]()
        for i in 0..<arr.count - (q - 1) {
            var subArr = [Int]()
            for j in 0..<q {
                subArr.append(arr[i + j])
            }
            metaArr.append(subArr)
        }
        let maxArr = metaArr.map {$0.max()!}
        print(maxArr.min()!)
        resArr.append(maxArr.min()!)
    }
    print(resArr)
    
    return resArr
}

print(solve(arr: [2,3,4,5,6], queries: [2,3]))

