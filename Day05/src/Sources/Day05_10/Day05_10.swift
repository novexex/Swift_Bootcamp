import RxSwift

@main
public struct Day05 {
    public static func main() {}
    
//    func countById(input: Observable<Int>) -> Observable<(Int, Int)> {
//        return input
//            .groupBy(keySelector: { $0 })
//            .flatMap({ group -> Observable<(Int, Int)> in
//                return group
//                    .toArray()
//                    .map({ arr -> (Int, Int) in (group.key, arr.count) })
//            })
//            .toArray()
//            .map({ $0.sorted(by: { $0.0 < $1.0 }) })
//            .flatMap({ Observable.from($0) })
//    }
}
