@main
public struct Day00_04 {
    public static func main() {
        
        let scales = ["celsis", "celsius", "kelvin", "fahrenheit"]
        
        var winterComfTemp = 20.0...22.0
        var summerComfTemp = 22.0...25.0
        
        let winterComfHum = 30...45
        let summerComfHum = 30...60
        
        while true {
            if let temp_scales = readLine() {
                
                if temp_scales.lowercased() == scales[0] ||
                    temp_scales.lowercased() == scales[1] ||
                    temp_scales.lowercased() == scales[2] ||
                    temp_scales.lowercased() == scales[3] {
                    
                    if let season = readLine() {
                        if season.lowercased() == "w" || season.lowercased() == "s" {
                            if let temperature = readLine(), var t_num = Double(temperature) {
                                if let humidity = readLine(), let h_num = Int(humidity) {
                                    
                                    var scale = "˚C"
                                    
                                    switch temp_scales.lowercased() {
                                    case "kelvin":
                                        scale = "K"
                                        t_num += 273.15
                                        winterComfTemp = 293.15...295.15
                                        summerComfTemp = 295.15...298.15
                                    case "fahrenheit":
                                        scale = "°F"
                                        t_num = (t_num * (9/5)) + 32
                                        winterComfTemp = 68.0...71.6
                                        summerComfTemp = 71.6...77.0
                                    default: break
                                    }
                                    
                                    
                                    print("The temperature is \(t_num) \(scale)")
                                    
                                    if season.lowercased() == "w" {
                                        print("The comfortable temperature is from \(winterComfTemp.lowerBound) to \(winterComfTemp.upperBound) \(scale).")
                                        
                                        if winterComfTemp.contains(t_num) {
                                            print("The temperature is comfortable.")
                                        } else if t_num < winterComfTemp.lowerBound {
                                            print("Please, make it warmer by \(winterComfTemp.lowerBound - t_num) \(scale).")
                                        } else if t_num > winterComfTemp.upperBound {
                                            print("Please, make it colder by \(t_num - winterComfTemp.upperBound) \(scale).")
                                        }
                                        
                                        print("The comfortable humidity is from \(winterComfHum.lowerBound)% to \(winterComfHum.upperBound)%")
                                        
                                        if winterComfHum.contains(h_num) {
                                            print("The humidity is comfortable.")
                                        } else if h_num < winterComfHum.lowerBound {
                                            print("Please, increase humidity by \(winterComfHum.lowerBound - h_num) percents.")
                                        } else if h_num > winterComfHum.upperBound {
                                            print("Please, decrease humidity by \(h_num - winterComfHum.upperBound) percents.")
                                        }
                                    } else {
                                        
                                        print("The comfortable temperature is from \(summerComfTemp.lowerBound) to \(summerComfTemp.upperBound) \(scale).")
                                        
                                        if summerComfTemp.contains(t_num) {
                                            print("The temperature is comfortable.")
                                        } else if t_num < summerComfTemp.lowerBound {
                                            print("Please, make it warmer by \(summerComfTemp.lowerBound - t_num) \(scale).")
                                        } else if t_num > summerComfTemp.upperBound {
                                            print("Please, make it colder by \(t_num - summerComfTemp.upperBound) \(scale).")
                                        }
                                        
                                        
                                        print("The comfortable humidity is from \(summerComfHum.lowerBound)% to \(summerComfHum.upperBound)%")
                                        
                                        if h_num < summerComfHum.lowerBound {
                                            print("Please, increase humidity by \(summerComfHum.lowerBound - h_num) percents.")
                                        } else if h_num > summerComfHum.upperBound {
                                            print("Please, decrease humidity by \(h_num - summerComfHum.upperBound) percents.")
                                        } else {
                                            print("The humidity is comfortable.")
                                        }
                                    }
                                    return
                                }
                            } else {
                                print("Incorrect input. Try Again.")
                                continue
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
