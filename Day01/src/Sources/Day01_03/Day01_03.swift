@main
public struct Day01_03 {
    public static func main() {
        guard let r = readLine(), let num = Int(r) else { return }
        let a = AnswerHandler(answerCode: num)
        a.report()
    }
}



struct AnswerHandler {
    let answer: Answer
    let answerCode: Int
    let title: String
    var description: String?
    
    init(answerCode: Int) {
        self.answerCode = answerCode
        
        switch answerCode {
        case 200:
            self.answer = .success
            self.title = "The request processed successfully"
        case 201:
            self.answer = .success
            self.title = "The request processed successfully"
        case 1000:
            self.answer = .error
            self.title = "The user is not identified"
            self.description = "This error indicates that the system or application is unable to recognize the user trying to access it, possibly due to incorrect login credentials or security-related issues"
        case 1001:
            self.answer = .error
            self.title = "The session is expired"
            self.description = "This error message suggests that the user's session has timed out or become invalid due to inactivity or other reasons. As a result, the user will need to log in again to continue accessing the system or application."
        case 1002:
            self.answer = .error
            self.title = "No connection"
            self.description = "There is no internet connection. Try later."
        case 1003:
            self.answer = .error
            self.title = "The device has failed the verification"
            self.description = "Indicates that the device has failed to pass a verification process, possibly due to security or integrity concerns, and may require further investigation or authentication to regain access."
        default:
            self.answer = .unknown
            self.title = "Unknown error. Please, try again later"
        }
    }
    
    func report() {
        switch self.answer {
        case .success:
            print(self.title)
        case .error:
            print("NoConnectionError:\n\tCode: \(self.answerCode)\n\tTitle: \(self.title)\n\tDescriprion: \(self.description ?? "")")
        case .unknown:
            print("Error code: $code\n\(self.title)")
        }
    }
}

enum Answer {
    case error
    case success
    case unknown
}
