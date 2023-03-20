@main
public struct MyObjCExecutable {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(MyObjCExecutable().text)
    }
}
