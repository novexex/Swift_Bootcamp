import RxSwift

@main
public struct Day05 {
    public static func main() {}
    
    func groupById(_ items: Observable<[Item]>) -> Observable<GroupedObservable<Int, Item>> {
        return items.flatMap { items -> Observable<GroupedObservable<Int, Item>> in
            return Observable.from(items)
                .groupBy { $0.id }
        }
    }
}

struct Item {
    let id: Int
    let text: String
}
