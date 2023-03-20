import Foundation

@main
public struct Day01_00 {
    public static func main() {
        if let line = readLine() {
            let circleRegex = #"^\d+;\d+\s+\d+;\d+$"#
            let triangleRegex = #"^\d+;\d+\s+\d+;\d+\s+\d+;\d+$"#
            let quadrangleRegex = #"^\d+;\d+\s+\d+;\d+\s+\d+;\d+\s+\d+;\d+$"#
            let coorRegex = #"^\d+;\d+$"#
            
            let circlePredicate = NSPredicate(format:"SELF MATCHES %@", circleRegex)
            let trianglePredicate = NSPredicate(format:"SELF MATCHES %@", triangleRegex)
            let quadranglePredicate = NSPredicate(format:"SELF MATCHES %@", quadrangleRegex)
            let coorPredicate = NSPredicate(format:"SELF MATCHES %@", coorRegex)
            
            if circlePredicate.evaluate(with: line) {

            } else if trianglePredicate.evaluate(with: line) {
                
            } else if quadranglePredicate.evaluate(with: line) {
                
            } else if coorPredicate.evaluate(with: line) {
                
            } else {
                return
            }


        }
    }
}


protocol Incidient {
    var x: Int { get set }
    var y: Int { get set }
    var description: String { get set }
    var number: Int? { get set }
    var incidient: IncidientType? { get set }
}

struct Area: Incidient {
    var x: Int
    var y: Int
    var description: String
    var number: Int?
    var incidient: IncidientType?
    
    let figure: String
    let name: String
    let departmentServiceCode: Int
    let danger: DangerLevel
    
    func incident() -> Bool {
        if incidient != nil {
            return true
        } else {
            return false
        }
    }
}

enum DangerLevel: String {
    case low = "low"
    case middle = "middle"
    case high = "high"
}

enum IncidientType: String {
    case fire = "fire"
    case gas_leak = "gas leak"
    case cat_on_the_tree = "cat on the tree"
}
