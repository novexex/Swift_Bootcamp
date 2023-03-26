import RxSwift

@main
public struct Day05 {
    public static func main() {}
    
    func getTextFields(_ items: Observable<[Item]>) -> Observable<[String]> {
        items.map { $0.map { $0.text } }
    }
}

struct Item {
    let id: Int
    let text: String
}
