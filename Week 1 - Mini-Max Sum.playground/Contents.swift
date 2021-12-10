
func miniMaxSum(arr: [Int]) -> Void {
    // Write your code here
    var newArr: [Int] = []
    newArr = arr.sorted()
    var minSum: Int64 = 0
    var maxSum: Int64 = 0
    for i in 0...3 {
        minSum += Int64(newArr[i])
        maxSum += Int64(newArr[i+1])
    }
    
    print("\(minSum) \(maxSum)")
}
