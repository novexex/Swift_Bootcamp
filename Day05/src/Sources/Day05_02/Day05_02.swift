import RxSwift

@main
public struct Day05 {
    public static func main() {}
    
    func firstElementStartingWithTh(in collection: [String]) -> Observable<String> {
        Observable.from(collection)
            .filter { $0.hasPrefix("th") }
            .take(1)
    }
}
