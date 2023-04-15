import Foundation

@main
public struct DateFormatting {

    public let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy"

    public static func main() {
        let date = formatter.date(from: "01/01/2022")

        print(DateFormatting().formatDate(date: date!))
    }

    func formatDate(date: Date) -> String {
        return formatter.string(from: date)
    }

    func dateFromString(dateString: String) -> Date? {
        return formatter.date(from: dateString)
    }
}
