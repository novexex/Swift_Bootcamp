import RxSwift

@main
public struct Day05 {
    public static func main() {}
    
    func countTotalLength(_ strings: Observable<[String]>) -> Observable<Int> {
        return strings.map { $0.reduce(0, { $0 + $1.count }) }
    }
}
