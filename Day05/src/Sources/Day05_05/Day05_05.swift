import RxSwift

@main
public struct Day05 {
    public static func main() {}
    
    func hasNonEmptyStrings(_ strings: [String]) -> Observable<Bool> {
        Observable.just(!strings.contains(where: { $0.isEmpty }))
    }
}
