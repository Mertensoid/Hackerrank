


func timeConversion(s: String) -> String {

    var hours: String = ""
    if s.contains("P") {
        var hoursInt: Int = 0
        hoursInt = Int(String(s.dropLast(8)))! + 12
        if hoursInt == 24 {
            hours = "12" + s.dropLast(2).dropFirst(2)
        } else {
            hours = String(hoursInt) + s.dropLast(2).dropFirst(2)
        }
        return hours
    } else {
        var hoursInt: Int = 0
        hoursInt = Int(String(s.dropLast(8)))!
        switch hoursInt {
        case 12:
            hours = "00" + s.dropLast(2).dropFirst(2)
        case 1...9:
            hours = "0" + String(hoursInt) + s.dropLast(2).dropFirst(2)
        default:
            hours = String(hoursInt) + s.dropLast(2).dropFirst(2)
        }
        return hours
    }
}

print(timeConversion(s: "12:15:12PM"))
