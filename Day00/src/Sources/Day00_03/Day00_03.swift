@main
public struct Day00_03 {
    public static func main() {
        
        let scales = ["celsis", "celsius", "kelvin", "fahrenheit"]
        
        var winterComfTemp = 20.0...22.0
        var summerComfTemp = 22.0...25.0
        
        while true {
            if let temp_scales = readLine() {
                
                print(temp_scales)
                
                if temp_scales.lowercased() == scales[0] ||
                    temp_scales.lowercased() == scales[1] ||
                    temp_scales.lowercased() == scales[2] ||
                    temp_scales.lowercased() == scales[3] {
                    
                    if let season = readLine() {
                        if season.lowercased() == "w" || season.lowercased() == "s" {
                            if let temperature = readLine() {
                                if var num = Double(temperature) {
                                    
                                    var scale = "˚C"
                                    
                                    switch temp_scales.lowercased() {
                                    case "kelvin":
                                        scale = "K"
                                        num += 273.15
                                        winterComfTemp = 293.15...295.15
                                        summerComfTemp = 295.15...298.15
                                    case "fahrenheit":
                                        scale = "°F"
                                        num = (num * (9/5)) + 32
                                        winterComfTemp = 68.0...71.6
                                        summerComfTemp = 71.6...77.0
                                    default: break
                                    }
                                    
                                    print("The temperature is \(num) \(scale)")
                                    
                                    if season.lowercased() == "w" {
                                        print("The comfortable temperature is from \(winterComfTemp.lowerBound) to \(winterComfTemp.upperBound) \(scale).")
                                        
                                        if winterComfTemp.contains(num) {
                                            print("The temperature is comfortable.")
                                        } else if num < winterComfTemp.lowerBound {
                                            print("Please, make it warmer by \(winterComfTemp.lowerBound - num) \(scale).")
                                        } else if num > winterComfTemp.upperBound {
                                            print("Please, make it colder by \(num - winterComfTemp.upperBound) \(scale).")
                                        }
                                    } else {
                                        print("The comfortable temperature is from \(summerComfTemp.lowerBound) to \(summerComfTemp.upperBound) \(scale).")
                                        
                                        if summerComfTemp.contains(num) {
                                            print("The temperature is comfortable.")
                                        } else if num < summerComfTemp.lowerBound {
                                            print("Please, make it warmer by \(summerComfTemp.lowerBound - num) \(scale).")
                                        } else if num > summerComfTemp.upperBound {
                                            print("Please, make it colder by \(num - summerComfTemp.upperBound) \(scale).")
                                        }
                                    }
                                    return
                                } else {
                                    print("Incorrect input. Try Again.")
                                    continue
                                }
                            }
                        } else {
                            print("Incorrect input. Try Again.")
                            continue
                        }
                    }
                } else {
                    print("Incorrect input. Try Again.")
                    continue
                }
            }
        }
    }
}
