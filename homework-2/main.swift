import Foundation

// pdf

func printSquares(N: Int) {
    for i in 1...N {
        if i*i <= N {
            print(i*i, terminator: " ")
        } else {
            print()
            break
        }
    }
}

func printCubesFromAtoB(_ A: Int, _ B: Int){
    for i in A...B{
        print(i*i*i, terminator: " ")
    }
    print()
}

func powerNum(num: Double, pow: Int) -> Double {
    if pow == 0 {
        return 1.0
    }
    if pow < 0 {
        return 1.0 / powerNum(num: num, pow: -pow)
    }
    var res: Double = 1.0
    if pow > 0 {
        for _ in 1...pow {
            res*=num
        }
    }
    return res
}

func printTableOfValues() {
    for i in stride(from: -5.0, to: 5.1, by: 0.5) {
        print(String(i)+": "+String(5.0-(i*i/2.0)))
    }
    print()
}

func hypSirakyz() {
    for i in stride(from: 20, to: 31, by: 1) {
        print(i)
        var temp: Int = i
        while temp != 1 {
            if temp%2 != 0 {
                temp *= 3
                temp += 1
            }
            temp /= 2
            print(temp, terminator: " ")
            if temp == 1 {
                print()
                print("**********************************************")
                break
            }
        }
    }
}

func printDiffNums(_ N: Int) {
    var nums = Set<String>()
    for char in String(N) {
        if nums.count(where: { $0 == String(char) }) == 0 {
            nums.insert(String(char))
            print(char, terminator: " ")
        }
    }
    print()
}

func findSumOfEven(_ nnum: Int) -> Int {
    var num: Int = nnum
    var sum: Int = 0
    while num != 0 {
        let temp: Int = num % 10
        if temp % 2 == 0 {
            sum += temp
        }
        num /= 10
    }
    return sum
}

func findNumOfOddEven(_ num: Int) -> [String:Int] {
    var res: [String:Int] = ["odd":0,"even":0]
    var temp: Int = num
    while temp != 0 {
        if temp % 10 % 2 == 0 {
            res["even"]! += 1
        } else {
            res["odd"]! += 1
        }
        temp /= 10
    }
    return res
}

func findMaxNum(_ num: Int) -> Int {
    var temp: Int = num
    var max: Int = 0
    while temp != 0 {
        if temp % 10 > max {
            max = temp % 10
        }
        temp /= 10
    }
    return max
}

func reverseNum(_ num: Int) -> Int {
    var res: Int = 0
    var temp: Int = num
    while temp != 0 {
        res = res * 10 + temp % 10
        temp /= 10
    }
    return res
}

func deleteNum(num: Int, target: Int) -> Int {
    var res: Int = 0
    var temp: Int = num
    while temp != 0 {
        if temp % 10 != target {
            res = res * 10 + temp % 10
        }
        temp /= 10
    }
    return reverseNum(res)
}

func printPerfectNum(){
    for i in 2...10000 {
        var temp: Int = 0
        for j in 1...i/2 {
            if i % j == 0 {
                temp += j
            }
        }
        if temp == i {
            print(i, terminator: " ")
        }
    }
    print()
}

func printNumberOfItems(prices: [String:Int], total: Int, sum: Int) {
    var cnt: Int = 1;
    for pen in 0...total {
        for pencil in 0...(total-pen) {
            let eraser: Int = total - pen - pencil
            if pen * prices["pen"]! + pencil * prices["pencil"]! + eraser * prices["eraser"]! == sum {
                print("OPTION", cnt,"\npen:", pen, "\npencil:", pencil, "\neraser:", eraser)
                cnt += 1
            }
        }
    }
}

func doMath(_ problem: String){
    var a: Int = 0
    var b: Int = 0
    var flag: Bool = false
    var sign: Character = "q"
    for char in problem {
        if char.isNumber {
            if !flag {
                a = a * 10 + Int(String(char))!
            } else {
                b = b * 10 + Int(String(char))!
            }
        } else {
            sign = char
            flag = true
        }
    }
    print(problem, "=", terminator: " ")
    switch sign {
    case "+":
        print(a + b)
    case "-":
        print(a - b)
    case "*":
        print(a * b)
    case "/":
        if b == 0 {
            print("ERROR: division by zero")
            break
        }
        print(a / b)
    default:
        print("ERROR: false operator")
    }
}

func guessNum() {
    let computerNum: Int = Int.random(in: 1...100)
    var userNum: Int = 0
    while userNum != computerNum {
        print("Enter your number: ")
        guard let input = readLine(), let num = Int(input) else { continue }
        userNum = num
        if userNum > computerNum {
            print("Your number is greater")
        } else if userNum < computerNum {
            print("Your number is less")
        }
    }
    print("Correct, it's", computerNum)
}


// **********************************************************************************************************************************
// **********************************************************************************************************************************

// задачник

func dictionaries() {
    let monthRussian: [Int: String] = [1:"Январь",2:"Февраль",3:"Март",4:"Апрель",5:"Май",6:"Июнь",7:"Июль",8:"Август",9:"Сентябрь",10:"Октябрь",11:"Ноябрь",12:"Декабрь"]
    let monthEnglish: [Int: String] =
        [1:"January",2:"February",3:"March",4:"April",5:"May",6:"June",7:"July",8:"August",9:"September",10:"October",11:"November",12:"December"]
    let arrOfDict = [monthRussian, monthEnglish]
    for dict in arrOfDict {
        for (key, value) in dict.sorted(by: {$0.key < $1.key}) {
            print(key, value)
        }
        print(dict.keys.sorted(), dict.values.sorted())
    }
    
    var emptyDict: [Int:Int] = [:]
    print(emptyDict.isEmpty)
    emptyDict[2] = 3
    print(emptyDict.isEmpty)
    
    var cars: [String:String] = ["inomarka":"bmw"]
    cars["otechestvennaya"] = "belgee"
    print(cars.keys, cars.values)
//    cars["inomarka"] = nil
    cars.removeValue(forKey: "inomarka")
    print(cars)
}

func dictionariesPro() {
    let soldierGreetings = [
        "Иванов": "Здравствуйте, товарищ командир!",
        "Петров": "Приветствую, командир!",
        "Сидоров": "Служу отечеству!",
        "Кузнецов": "Готов к приказу, товарищ!"
    ]
    for (person, _) in soldierGreetings {
        print(person)
    }
    for (_, greeting) in soldierGreetings {
        print(greeting)
    }
    let sortedSoldierGreetings = soldierGreetings.sorted(by: {$0.key < $1.key}) // как отсортировать словарь?
    print(sortedSoldierGreetings)
    for (person, _) in soldierGreetings {
        switch person {
        case "Иванов": print("sniper")
        case "Петров": print("tank")
        case "Сидоров": print("dd")
        case "Кузнецов": print("support")
        default: print("not found")
        }
    }
}

func tuples() {
    let point: (Int, Int, Int) = (1, -2, 0)
    print(point)
    print(point.0, point.1, point.2)
    let (x,y,z) = point
    print(x,y,z)
    
    
    let criteria: (String, String, String) = ("превышение скорости:", "вождение нетрезвым:", "бесправники:")
    let crArr: [String] = [criteria.0, criteria.1, criteria.2]
    
    let negodyai1: (Int, Int, Int) = (7,3,5)
    print(negodyai1)
    
    print(criteria.0, negodyai1.0)
    print(criteria.1, negodyai1.1)
    print(criteria.2, negodyai1.2)
    
    let (n1, n2, n3) = negodyai1
    print(n1, n2, n3)
    
    let negodyai2: (Int, Int, Int) = (8, 11, 4)
    let diff: (Int, Int, Int) = (negodyai2.0 - negodyai1.0, negodyai2.1 - negodyai1.1, negodyai2.2 - negodyai1.2)
    
    let diffArr: [Int] = [diff.0, diff.1, diff.2]
    for i in 0...2 {
        print(crArr[i], diffArr[i])
    }
}

func tuplesPro() {
    var dev1: (String?, Int?, String?, String?)
    var dev2: (String?, Int?, String?, String?)
    var dev3: (String?, Int?, String?, String?)
    var dev4: (String?, Int?, String?, String?)
    var dev5: (String?, Int?, String?, String?)
    var dev6: (String?, Int?, String?, String?)
    var dev7: (String?, Int?, String?, String?)
    var dev8: (String?, Int?, String?, String?)
    var dev9: (String?, Int?, String?, String?)
    var dev10: (String?, Int?, String?, String?)
    dev1.0 = "Douglas Brown"
    dev2.0 = "Jose Hopkins"
    dev3.0 = "Albert Brown"
    dev4.0 = "Robert Ortiz"
    dev5.0 = "Mark Berry"
    dev6.0 = "Michael Peterson"
    dev7.0 = "Harold Simmons"
    dev8.0 = "John Fisher"
    dev9.0 = "William Farmer"
    dev10.0 = "Christopher Stewart"
    dev2.1 = 24
    dev3.1 = 20
    dev4.1 = 17
    dev5.1 = 37
    dev7.1 = 18
    dev8.1 = 26
    dev9.1 = 13
    dev1.2 = "junior"
    dev2.2 = "middle"
    dev4.2 = "senior"
    dev8.2 = "teamlead"
    dev2.3 = "kotlin"
    dev8.3 = "ios"
    
    let devArr: [(String?, Int?, String?, String?)] = [dev1, dev2, dev3, dev4, dev5, dev6, dev7, dev8, dev9, dev10]
    
    var devLess23: [(String?, Int?, String?, String?)] = []
    
    var devNotIos: [(String?, Int?, String?, String?)] = []
    
    for dev in devArr {
        print("Name: \(dev.0 ?? "No name provided")")
        print("Age: \(dev.1 ?? 0)")
        print("Position: \(dev.2 ?? "No position provided")")
        print("Language: \(dev.3 ?? "No language provided")")
        if dev.1 ?? 0 > 23 && dev.2 != nil && dev.3 == "ios" {
            print("prinyat")
        }
        if dev.1 ?? 0 <= 23 && dev.1 != nil {
            devLess23.append(dev)
        }
        if dev.3 ?? "" != "ios" {
            devNotIos.append(dev)
        }
        print("--------------------")
    }
    print("~~~~~~~~~~~~~~~~~~~~")
    print("********************")
    print("~~~~~~~~~~~~~~~~~~~~")
    print("--------------------")
    devLess23.sort(by: {$0.1! > $1.1!})
    for dev in devLess23 {
        print("Name: \(dev.0 ?? "No name provided")")
        print("Age: \(dev.1 ?? 0)")
        print("Position: \(dev.2 ?? "No position provided")")
        print("Language: \(dev.3 ?? "No language provided")")
        print("--------------------")
    }
    devLess23.removeFirst()
    print("- AFTER REMOVE:")
    for dev in devLess23 {
        print("Name: \(dev.0 ?? "No name provided")")
        print("Age: \(dev.1 ?? 0)")
        print("Position: \(dev.2 ?? "No position provided")")
        print("Language: \(dev.3 ?? "No language provided")")
        print("--------------------")
    }
    print("- NOT IOS:")
    for dev in devNotIos {
        print("Name: \(dev.0 ?? "No name provided")")
        print("Age: \(dev.1 ?? 0)")
        print("Position: \(dev.2 ?? "No position provided")")
        print("Language: \(dev.3 ?? "No language provided")")
        print("--------------------")
    }
}

func cycles() {
    
    let daysInMonths: [Int] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    for day in daysInMonths {
        print(day, terminator: " ")
    }
    print()
    
    let ages: [Int] = [3, 17, 22, 98, 52, 14, 73, 45, 36, 14, 32, 26, 10, 67]
    for age in ages {
        switch age {
        case ..<0: print(age, "invalid age")
        case 0...5: print(age, "sadik")
        case 6...17: print(age, "school")
        case 18...24: print(age, "university")
        case 25...63: print(age, "work")
        default: print(age, "pensia")
        }
    }
    
    let marks: [Int] = [1,2,3,6,3,8,3,12,5,10,11,9,5,2,6,4]
    for mark in marks {
        if mark < 0 && mark > 12 {
            print(mark, "error")
        } else if mark < 4 {
            print(mark, "bad")
        } else if mark < 7 {
            print(mark, "ok")
        } else if mark < 10 {
            print(mark, "good")
        } else {
            print(mark, "super")
        }
    }
    
    for _ in 0...200 {
        for i in 0...15 {
            if i == 15 {
                break
            }
        }
    }
    
}




printSquares(N: 50)
printCubesFromAtoB(3, 18)
print(powerNum(num: 2, pow: 10))
printTableOfValues()
hypSirakyz()
printDiffNums(23346785543672)
print(findSumOfEven(12345))
let numOfOddEven: [String:Int] = findNumOfOddEven(123456789)
print(numOfOddEven["odd"]!, numOfOddEven["even"]!)
print(findMaxNum(2834))
print(reverseNum(54653))
print(deleteNum(num: 23456, target: 4))
printPerfectNum()
printNumberOfItems(prices: ["pen":10, "pencil":5, "eraser":2], total: 20, sum: 100)
doMath("7%0")
guessNum()
 
print("*****************************************************************")
print("*****************************************************************")

dictionaries()
dictionariesPro()
tuples()
tuplesPro()
cycles()





// chess (cyclesPro)

var board: [String: (Int, Int)?] = [
    "король": (1,4),
    "ферзь": (3,5),
    "ладья": (5,2),
    "слон": (7,6),
    "пешка": (2,3)
    ]

let checkCoords = (4, 5)
let mateCoords = (5, 5)

let enemy: [(Int, Int)] = [(2,3), (6,5), (2,8)]
    
func makeMove(_ figure: String, to pos: (Int, Int)) {
    if board.contains(where: { $0.key == figure }) {
        for (_, cords) in board {
            if cords ?? (0,0) == pos {
                print("this is your figure")
                return
            }
        }
        if pos.0 > 8 || pos.1 > 8 || pos.0 < 1 || pos.1 < 1 {
            print("figure out of the board")
            return
        }
        for enemyPos in enemy {
            if enemyPos == pos {
                print("enemy figure on the way")
                board[figure] = nil
                return
            }
        }
        board[figure] = pos
        print("figure moved")
        if pos == checkCoords {
            print("check")
        }
        if pos == mateCoords {
            print("mate")
        }
    } else {
        print("no such figure")
        return
    }
}

makeMove("ферзь", to: (2,7))
print(board)
