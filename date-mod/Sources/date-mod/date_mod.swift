
import Foundation

func x(_ message: String) {
  FileHandle.standardError.write("❗️ \(message)".data(using: .utf8)!)
}

@main
struct date_mod {
  static func main() {
    
    var unit = "S"
    var time = 0
    var multiplier = 1

    let args = CommandLine.arguments.dropFirst()
    if args.count == 0 {
    }
    else
      if args.count == 1,
      let i = Int(args[1], radix: 10)
    {
      time = i
    }
    else
      if args.count == 2,
      let i = Int(args[1], radix: 10)
    {
      time = i
      unit = args[2]
    }
    else if
      args.count == 3,
      args[0] == "-",
      let i = Int(args[1], radix: 10)
    {
      unit = args[2]
      time = i * -1
    }
    else
    {
      x("Invalid usage")
      exit(1)
    }

    switch unit.uppercased() {
    case "W","WEEK":
      multiplier = 60 * 60 * 24 * 7
    case "D","DAY":
      multiplier = 60 * 60 * 24
    case "H","HOUR","HR":
      multiplier = 60 * 60
    case "M","MIN":
      multiplier = 60
    case "S","SEC":
      multiplier = 1
    default:
      break
    }

    let formatter = ISO8601DateFormatter()
    formatter.formatOptions = [
      .withInternetDateTime,
      .withTimeZone
    ]
    formatter.timeZone = .current

    let target = Date()

    let mod = target.addingTimeInterval(TimeInterval(multiplier * time))
    
    
    
    print(formatter.string(from: mod))
  }
}
