import RxSwift

@main
public struct Day05 {
    public static func main() {}
    
    func allStringsLongerThan5(input: Observable<String>) -> Observable<Bool> {
        return input
            .map({ $0.count > 5 })
            .reduce(true, accumulator: { (accumulated, value) -> Bool in
                return accumulated && value
            })
    }
}
