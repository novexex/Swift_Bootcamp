import Foundation

@main
public struct Day00_05 {
    public static func main() {
        var coordinates: [Double] = []
        while let num = readLine() {
            if let check_num = Double(num) {
                coordinates.append(check_num)
                if coordinates.count == 6 {
                    let d = sqrt(pow(coordinates[3] - coordinates[0], 2) + pow(coordinates[4] - coordinates[1], 2))
                    
                    let r_sum = coordinates[2] + coordinates[5]
                    let r_dif = abs(coordinates[2] - coordinates[5])
                    
                    if d <= r_sum && d > r_dif {
                        let b = pow(coordinates[5], 2) - pow(coordinates[2], 2) + pow(d, 2) / 2*d
                        let a = d-b
                        let h = sqrt(pow(coordinates[5], 2) - pow(b, 2))
                        let x = coordinates[0] + ((coordinates[3] - coordinates[0]) / (d / a))
                        let y = coordinates[1] + ((coordinates[4] - coordinates[1]) / (d / a))
                        let x3 = x - ((y - coordinates[4]) * h) / b
                        let y3 = y + ((x - coordinates[3]) * h) / b
                        let x4 = x + ((y - coordinates[4]) * h) / b
                        let y4 = y - ((x - coordinates[3]) * h) / b
                        
                        print("x1,y1:\(x3),\(y3) x2,y2:\(x4),\(y4)")
                    } else if d <= r_dif {
                        print("One circle is inside another")
                    } else if d > r_sum {
                        print("The circles is not intersect")
                    }
                    break
                }
            } else {
                print("Couldn't parse a number. Please, try again")
            }
        }
    }
}
