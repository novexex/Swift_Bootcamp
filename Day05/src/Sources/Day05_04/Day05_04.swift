import RxSwift

@main
public struct Day05 {
    public static func main() {}
    
    func hasStringLongerThanFiveCharacters(strings: Observable<[String]>) -> Observable<Bool> {
        return strings.map { array in
                return array.contains(where: { string in string.count > 5 })
            }
    }
}
