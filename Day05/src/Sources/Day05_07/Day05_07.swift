import RxSwift

@main
public struct Day05 {
    public static func main() {}
    
    func countStrings(_ strings: Observable<[String]>) -> Observable<Int> {
        strings.map { $0.count }
    }
}
