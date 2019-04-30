// Closures Playground

// Source: Build That App (YouTube)

func filterWithLogic(closure: (Int) -> Bool, numbers: [Int]) -> [Int] {
    var filteredNumbers = [Int]()
    for num in numbers {
        // Condition to check
        if closure(num) { filteredNumbers.append(num) }
    }
    return filteredNumbers
}

let numbers = [16, 58, 510]

let filtered = filterWithLogic(closure: { (num) -> Bool in
    return num > 2
}, numbers: numbers)

filtered


// Source: docs.swift.org

let names = ["Bisma", "Rayo", "Nisbud", "Fadhil", "Yulia"]

func backward(_ s1: String, _ s2: String) -> Bool { return s1 > s2 }

var reversedNames = names.sorted(by: backward)

reversedNames = names.sorted(by: { (s1, s2) -> Bool in return s2 > s1 })
reversedNames

reversedNames = names.sorted(by: { $0 > $1 })
reversedNames

reversedNames = names.sorted(by: <)


// Source: Still from docs.swift.org

let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]

    // let numbers = [16, 58, 510]

let strings = numbers.map { (num) -> String in
    var num = num
    var output = ""
    repeat {
        output = digitNames[num%10]! + output
        num /= 10
    } while num > 0
    return output
}

strings
