import Foundation

@main
public struct Day01_01 {
    public static func main() {
        var zxc = "+78815553221"
        zxc.mask()
        print(zxc)
    }
}

extension String {
    mutating func mask() {
        let phoneRegex = "^(8|\\+7)[\\s-]?\\(?\\d{3}\\)?[\\s-]?\\d{3}[\\s-]?\\d{2}[\\s-]?\\d{2}$"
        let predicate = NSPredicate(format:"SELF MATCHES %@", phoneRegex)
        guard predicate.evaluate(with: self) else { return }
        if self.contains("800") {
            var phone = "8 (800) "
            if let range = self.range(of: "800") {
                let result = self[range.lowerBound...]
                phone += result.replacingOccurrences(of: "800", with: "")
            }
            phone.insert(" ", at: phone.index(phone.startIndex, offsetBy: 11))
            phone.insert(" ", at: phone.index(phone.startIndex, offsetBy: 14))
            self = phone
        } else {
            if self.starts(with: "+") {
                
            } else if self.starts(with: "8") {
                self.remove(at: self.startIndex)
                self.insert("7", at: self.startIndex)
                self.insert("+", at: self.startIndex)
            } else {
                self.insert("+", at: self.startIndex)
            }
            
            self.insert(" ", at: self.index(self.startIndex, offsetBy: 2))
            self.insert(" ", at: self.index(self.startIndex, offsetBy: 6))
            self.insert("-", at: self.index(self.startIndex, offsetBy: 10))
            self.insert("-", at: self.index(self.startIndex, offsetBy: 13))
        }
    }
}
