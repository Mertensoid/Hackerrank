
func breakingRecords(scores: [Int]) -> [Int] {
    // Write your code here
    var bestCount: Int = 0
    var worstCount: Int = 0
    var bestScore: Int? = nil
    var worstScore: Int? = nil
    
    for i in scores {
        if bestScore == nil {
            bestScore = i
            worstScore = i
        } else {
            if i > bestScore!{
                bestScore = i
                bestCount += 1
            } else if i < worstScore!{
                worstScore = i
                worstCount += 1
            }
        }
    }
    
    return [bestCount, worstCount]
}
