
func splitString(s: String) -> String {
    var tempString: String = ""
    tempString = s
    tempString = String(tempString.remove(at: tempString.startIndex))
    switch tempString {
    case "M":
        tempString = String(s.dropFirst(2).dropLast(2))
        var newString: String = ""
        for i in tempString {
            if i.isLowercase {
                newString.append(i)
            } else {
                newString.append(" " + i.lowercased())
            }
        }
        return newString
    case "C":
        tempString = String(s.dropFirst(2))
        var newString: String = ""
        for i in tempString {
            if !i.isLowercase && newString.count == 0 {
                newString.append(i.lowercased())
            } else if !i.isLowercase && newString.count != 0 {
                newString.append(" " + i.lowercased())
            } else {
                newString.append(i)
            }
        }
        return newString
    case "V":
        tempString = String(s.dropFirst(2))
        var newString: String = ""
        for i in tempString {
            if !i.isLowercase {
                newString.append(" " + i.lowercased())
            } else {
                newString.append(i)
            }
        }
        return newString
    default:
        return "Input is not valid"
    }
    
}

func combineString(s: String) -> String {
    var tempString: String = ""
    tempString = s
    tempString = String(tempString.remove(at: tempString.startIndex))
    switch tempString {
    case "M":
        var flag: Bool = false
        var newString: String = ""
        tempString = String(s.dropFirst(2))
        for i in tempString {
            if i == " " {
                flag = true
            } else if flag == true {
                newString.append(i.uppercased())
                flag = false
            } else {
                newString.append(i)
            }
        }
        newString.append("()")
        return newString
    case "C":
        var flag: Bool = false
        var newString: String = ""
        tempString = String(s.dropFirst(2))
        
        for i in tempString {
            if newString.isEmpty{
                newString.append(i.uppercased())
            } else if i == " " {
                flag = true
            } else if flag == true {
                newString.append(i.uppercased())
                flag = false
            } else {
                newString.append(i)
            }
        }

        return newString
    case "V":
        var flag: Bool = false
        var newString: String = ""
        tempString = String(s.dropFirst(2))
        for i in tempString {
            if i == " " {
                flag = true
            } else if flag == true {
                newString.append(i.uppercased())
                flag = false
            } else {
                newString.append(i)
            }
        }
        return newString
    default:
        return "Input is not valid"
    }
}

print(splitString(s: "V;newClassVeryGood"))
print(combineString(s: "V;new class very good"))

func someAction(s: String) -> () {
    var mainTempString: String = ""
    mainTempString = s
    mainTempString = String(mainTempString.remove(at: mainTempString.startIndex))
    switch mainTempString {
    case "S":
        print(splitString(s: String(s.dropFirst(2))))
    case "C":
        print(combineString(s: String(s.dropFirst(2))))
    default:
        print("Input is not valid")
    }
}

//someAction(s: "C;M;new class very good")
//someAction(s: "S;M;newClassVeryGood()")


//var inputString: String = readLine()!
//var inputArray: [String.SubSequence] = inputString.split(separator: "\n")
//
//for subSeq in inputArray {
//    someAction(s: String(subSeq))
//    print("\n")
//}
////inputString = inputString.split(separator: "\n")
//print(someAction(s: readLine()!))


while let thing = readLine() {
    someAction(s: thing)
}
