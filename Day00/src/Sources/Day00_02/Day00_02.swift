import Foundation

@main
public struct Day00_02 {
    public static func main() {
        if CommandLine.arguments.count < 1 && CommandLine.arguments[1].lowercased() == "higher" {
            scanf(mode: .higher)
        } else {
            scanf()
        }
    }
    
    public static func scanf(mode: Mode = Mode.lower) {
        if let line = readLine() {
            do {
                try Day00_02.check(line: line, mode: mode)
            } catch let error {
                print(error)
            }
        }
    }
    
    public static func check(line: String, mode: Mode) throws {
        if let num = Int(line) {
            var text = String() {
                didSet {
                    if text != "-" {
                        print(text)
                    }
                }
            }
            switch mode {
            case .higher:
                let str = String(num)
                str.reversed().forEach {
                    text.append($0)
                }
            case .lower:
                let str = String(num)
                str.forEach {
                    text.append($0)
                }
            }
        } else {
            throw MyError.runtimeError("Couldnt parse a number.")
        }
    }
    
    enum MyError: Error {
        case runtimeError(String)
    }
    
    public enum Mode {
        case lower
        case higher
    }
}
