import UIKit

var wholeNumber = 30

var numberWithDecimals = 17.5

var big = 1000000

var number: Double = 3.0


let middleInitial: Character = "J"

var remaining : Double = 30

// これはコンパイルエラー
// var x
var y: Int

var score = 3
score += 1
score -= 2
score *= 3
score /= 4

10 % 3

if score == 1 {
    
} else if score == 2 {
    
} else {
    
}

switch score {
case 0...9:
    break
case 10...100:
    break
default:
    break
}

score = score > 10 ? 50 : 200

var tt = "AppLe"
tt = tt.lowercased()
// Will be flagged for mismatched types, will not compile.


let month = "January"
let otherMonth = "january"

month.count


func inputName(_ he: String = "Rick") -> String {
    return he + ", Hello"
}


inputName("Ken")


func multiply(_ first: Int, by: Int) {
    return
}


struct Person {
    let firstName: String
    let lastName: String
    var fullName: String {
        firstName + lastName
    }
}


struct StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("About to set totalSteps to \(newValue)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

var stepCounter = StepCounter()
stepCounter.totalSteps = 40
// About to set totalSteps to 40
// Added 40 steps

stepCounter.totalSteps = 100
// About to set totalSteps to 100
// Added 60 steps

struct Temperature {
    static let boilingPoint: Int = 100
}

Temperature.boilingPoint

class Men {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

class Student: Men {
  var favoriteSubject: String = ""
 
    override init(name: String) {
    super.init(name: name)
  }
}

var names: [String] = ["Jon", "Nic", "Erry"]
names.contains("Nic")

var myArray = [Int](repeating: 0, count: 100)
if myArray.isEmpty {
    //任意のコード
}


names.insert("Ryo", at: 1)


let array1 = [1,2,3]
let array2 = [4,5,6]
let containerArray = [array1, array2]
let firstElement = containerArray[1][1]

var myDictionary1 = [String: Int]()
var myDictionary2 = Dictionary<String, Int>()
var myDictionary3: [String: Int] = [:]

var scores = ["Richard": 500, "Luke": 400, "Cheryl": 800]
let oldValue = scores.updateValue(100, forKey: "Richard")





for _ in 1...5 {
    print("Hello")
}

for (index, name) in names.enumerated() {
    print("\(index): \(name)")
}

for (index, letter) in "ABCD".enumerated() {
    print("\(index): \(letter)")
}

for(key, value) in scores {
    print("\(key): \(value)")
}

var count = 5
while count > 2 {
    print(count)
    count -= 1
}

print("ここです")

repeat {
    print(count)
    count -= 1
} while count > 1


var bookName: String? = nil
if let book = bookName {
    print("\(book)")
} else {
    print("bookがありません")
}
// print("if letは、スコープの外で代入後の変数を扱えない: \(book)")


guard let book = bookName else {
    throw NSError(domain: "error", code: -1, userInfo: nil)
}
print("guard letなら、スコープの外でも代入後の変数を扱える: \(book)")

/*
guard bookName == "SwiftBook" else {
    print("Swift Bookではありません")
    return
}
*/
