import Foundation

let requestDateTime = "2019-08-09 06:45:05"

func getDate(from string: String) -> String {
    var convertedDate: String = ""
    
    let dateComponents = string.components(separatedBy: " ")
    let splitDate = dateComponents[0]
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let newDateFormatter = DateFormatter()
    newDateFormatter.dateFormat = "M/dd/yyyy"
    
    if let date = dateFormatter.date(from: splitDate){
        convertedDate = newDateFormatter.string(from: date)
    }
    return convertedDate
}
func getTime(from string: String) -> String {
    var convertedTime: String = ""
    
    let dateComponents = string.components(separatedBy: " ")
    let splitTime = dateComponents[1]

    let timeFormatter = DateFormatter()
    timeFormatter.dateFormat = "HH:mm:ss"
    let newTimeFormatter = DateFormatter()
    newTimeFormatter.dateFormat = "H:mm a"

    if let time = timeFormatter.date(from: splitTime){
        convertedTime = newTimeFormatter.string(from: time)
    }
    
    return convertedTime
}
func getDateTime(from string: String) -> String {
    var dateTime: String = ""
    
    dateTime = getTime(from: string) + getDate(from: string)
    
    return dateTime
}

var rating = 2

for i in 1...5 {
    if rating >= i {
        print("*")
    } else {
        print("-")
    }
}
