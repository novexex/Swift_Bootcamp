import Foundation

@main
public struct Day00_06 {
    public static func main() {
        
        let zero_nine = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
        let ten_nineteen = ["ten" ,"eleven", "twelve", "thirteen", "fourteen", "fiveteen", "sixteen", "seventeen", "eighteen", "nineteen"]
        let ten_ninety = ["ten", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety"]
        let hundred = "hundred"
        let thousand = "thousand"
        let million = "million"
        
        print("The program is running. Enter a number or type \"exit\" to stop:")
        let maxRange = -1_000_000...1_000_000
        while let line = readLine() {
            if line.lowercased() == "exit" {
                print("Bye!")
                return
            } else if let num = Int(line) {
                if maxRange.contains(num) {
                    var text = ""
                    var number = abs(num)
                    var numbers = [Int]()
                    
                    if num < 0 {
                        text += "minus "
                    }
                    
                    if number == 0 {
                        numbers.append(number)
                    }
                    
                    while number != 0 {
                        numbers.append(number % 10)
                        number /= 10
                    }
                    
                    numbers.reverse()
                    
                    for i in numbers.enumerated() {
                        switch abs(i.offset - numbers.count)-1 {
                        case 0:
                            if numbers.count > 1 && numbers[i.offset-1] == 1 {
                                continue
                            } else {
                                text += zero_nine[i.element]
                            }
                        case 1:
                            if i.element == 1 {
                                text += ten_nineteen[numbers[i.offset+1]]
                            } else if i.element == 0 {
                                continue
                            } else {
                                text += ten_ninety[i.element-1] + " "
                            }
                        case 2:
                            if i.element == 0 {
                                continue
                            }
                            text += zero_nine[i.element] + " " + hundred + " "
                        case 3:
                            if i.element == 0 {
                                continue
                            } else if numbers.count < 4 && numbers[i.offset-1] == 1 {
                                continue
                            } else {
                                text += zero_nine[i.element] + " " + thousand + " "
                            }
                        case 4:
                            if i.element == 1 {
                                text += ten_nineteen[numbers[i.offset+1]] + " " + thousand + " "
                            } else if i.element == 0 && numbers.count-1 != 4 {
                                text += thousand + " "
                            } else if i.element == 0 {
                                continue
                            } else {
                                text += ten_ninety[i.element-1] + " "
                            }
                        case 5:
                            if i.element == 0 {
                                continue
                            }
                            text += zero_nine[i.element] + " " + hundred + " "
                        case 6:
                            if i.element == 0 {
                                continue
                            } else {
                                text += zero_nine[i.element] + " " + million + " "
                            }
                        default: break
                        }
                    }
                    
                    if numbers.count != 1 {
                        text = text.replacingOccurrences(of: " zero", with: "")
                    }
                    print(text)
                    
                } else {
                    print("The number is out of bounds, try again.\nEnter a number:")
                }
            } else {
                print("Incorrect format, try again.\nEnter a number:")
            }
        }
    }
}
