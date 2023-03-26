import RxSwift

@main
public struct Day05 {
    public static func main() {}
    
    func filterStringsContainingE(from collection: [String]) -> Observable<[String]> {
        Observable.from(collection)
            .filter { $0.contains("e") }
            .toArray()
            .asObservable()
    }
}
