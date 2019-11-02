import Foundation

func maxIncreaseKeepingSkyline(_ grid: [[Int]]) -> Int {
    var result = 0
    // size of the array grid
    let n = grid.count
    
    // instantiate an array of maximum row value and column value
    var max_row = [Int]()
    var max_col = [Int]()
    
    // set value 0 for array of maximum of row value and column value
    for i in 0...n-1 {
        max_row.append(0)
        max_col.append(0)
    }
    
    // now we will have array of maximum of row value and colum value -> The skyline
    for i in 0...n-1 {
        for j in 0...n-1 {
            print("max_row[\(i)] = \(max_row[i])")
            print("grid[i][\(j)] = \(grid[i][j])")
            print("max_col[\(j)] = \(max_col[j])")
            max_row[i] = max(max_row[i], grid[i][j])
            max_col[j] = max(max_col[j], grid[i][j])
            print("max_row[\(i)] after = \(max_row[i])")
            print("max_col[\(j)] after = \(max_col[j])")
            print("==============")
        }
    }
    
    // print out the array of maximum of row value and colum value
    print(max_col)
    print(max_row)
    
    // we sum up the maximum height of the buildings can be increased
    for i in 0...n-1 {
        for j in 0...n-1 {
            result += min(max_row[i], max_col[j]) - grid[i][j]
            let n = min(max_row[i], max_col[j]) - grid[i][j]
        }
    }
    return result
}

let grid : [[Int]] = [[3,0,8,4],[2,4,5,7],[9,2,6,3],[0,3,1,0]]
let result =  maxIncreaseKeepingSkyline(grid)
print(result)
