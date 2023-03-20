import Foundation

@main
public struct Day00_01 {
    public static func main() {
        var coordinates: [Double] = []
        while let num = readLine() {
            if let check_num = Double(num) {
                coordinates.append(check_num)
                if coordinates.count == 6 {
                    let x = (coordinates[3] - coordinates[0])
                    let y = (coordinates[4] - coordinates[1])
                    let d = sqrt(pow(x, 2) + pow(y, 2))
                    let r_sum = coordinates[2] + coordinates[5]
                    let r_dif = abs(coordinates[2] - coordinates[5])
                    if d <= r_sum && d > r_dif {
                        print("The circles intersect")
                        break
                    } else if d <= r_dif {
                        print("One circle is inside another")
                        break
                    } else if d > r_sum {
                        print("The circles is not intersect")
                        break
                    }
                }
            } else {
                print("Couldn't parse a number. Please, try again")
            }
        }
    }
}
