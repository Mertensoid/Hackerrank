

func plusMinus(arr: [Int]) -> Void {
    // Write your code here
    
    var positiveCount: Int = 0
    var negativecount: Int = 0
    var zeroCount: Int = 0
    
    for i in arr {
        if i > 0 {
            positiveCount += 1
        } else if i == 0 {
            zeroCount += 1
        } else {
            negativecount += 1
        }
    }
    
    var posRatio: Float = 0
    var negRatio: Float = 0
    var zeroRatio: Float = 0
    
    posRatio = Float(Int(Float(positiveCount) / Float(arr.count) * 1000000)) / 1000000
    negRatio = Float(Int(Float(negativecount) / Float(arr.count) * 1000000)) / 1000000
    zeroRatio = Float(Int(Float(zeroCount) / Float(arr.count) * 1000000)) / 1000000

    print(posRatio)
    print(negRatio)
    print(zeroRatio)
}
