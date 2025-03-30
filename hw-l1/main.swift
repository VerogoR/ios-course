import Foundation

func part1(){       // 15 min
    let _: Int = 10
    let _: UInt = 10
    let floatVar: Float = 10.5
    let doubleVar: Double = 10.5
    let _: String = "Hello, World!"
    
    print(Int.max, Int.min)
    print(UInt.max, UInt.min)
    print(Double.greatestFiniteMagnitude, Double.leastNormalMagnitude)
    print(Float.greatestFiniteMagnitude, Float.leastNormalMagnitude)

    typealias Product = (name: String, number: Int)
    let _: Product = ("Apple", 2)
    let banana: Product = ("Banana", 5)

    print(String(banana.number))
    print(String(doubleVar))
    print(Int(floatVar))

    let a = Int(readLine()!)!
    let b = Int(readLine()!)!

    print("sum", a+b)
    print("dec", a-b)
    print("mul", a*b)
    print("del", a/b)
    
    let str = String(readLine() ?? "incorrect input")
    print(str)
    
}

func part2(){       // 8 min
    
    let surname = "Ivanov"
    let name = "Ivan"
    let age = 20
    let city = "Moscow"
    
    let fullInfo = surname+name+String(age)+city
    print(fullInfo)
    
    print(surname + "\t" + name + "\n" + String(age) + "\n" + city)
    
    for char in surname {
        print(char)
    }
    
    let str = """
            Name: \(surname) \(name)
            Age: \(age)
            City: \(city)
            """
    print(str)
}

func part2pro(){        // 22 min
    
    typealias Pair = (city: String, country: String)
    
    let pair1 = Pair("Minsk", "Belarus")
    let pair2 = Pair("Moscow", "Russia")
    let pair3 = Pair("Warsaw", "Poland")
    let pair4 = Pair("New York", "Omerika")
    let pair5 = Pair("Riga", "Latvia")
    
    print("input city: ")
    let city: String = readLine()!
    print("input country: ")
    let country: String = readLine() ?? "unknown"
    
    var check: Bool = false
    for pair in [pair1, pair2, pair3, pair4, pair5] {
        if pair.city == city && pair.country == country {
            check = true
        }
    }
    if check {
        print(city, country, "yes")
    } else {
        print(city, country, "no")
    }
    
    for char in pair1.country {
        if char == "a" {
            print("a found")
        }
    }
    
    let str1: String = "абвгдежз"
    let str2 = str1.uppercased()
    let str3 = str2.lowercased(with: Locale(identifier: "en_US")) // ???
    print(str2)
    print(str3)
    
    for (i, char) in str1.enumerated(){
        print(i, char)
    }
    
}

func part3(){       // 15 min
    
    var students: [String] = ["Sasha", "Dima", "Oleg", "Anton", "SLava", "Petr", "Sasha", "Dima", "Oleg", "Anton", "SLava", "Petr"]
    students.append("Masha")
    students.append("Anna")
    students.append("Polina")
    students.append("Natya")
    students.insert("Rita", at: 16)
    students.insert("Sasha", at: 17)
    students.insert("Varya", at: 18)
    
    print(students)
    
    for _ in 0...6 {
        students.remove(at: 0)
    }
    for _ in 0..<2 {
        students.removeLast()
    }
    print(students)
    
    let num1: [Int] = [0,1,2,3,4,5]
    let num2: [Int] = [6,7,8,9,10]
    let num: [Int] = num1 + num2
    
    let dict: [Int:String] = [0:"Very Bad", 1:"Very Bad", 2:"Very Bad", 3:"Very Bad", 4:"Bad", 5:"Bad", 6:"OK", 7:"OK",8:"Good", 9:"Good", 10:"Very Good"]
    
    for i in 0...9 {
        print(students[i], num[i], dict[num[i]] ?? "Unknown")
    }
    
    let money: [Int] = [1,2,5,10,5,20,2,2,50]
    var sum: Int = 0
    for i in money {
        sum += i
    }
    print(sum)
}


func quickSort(arr: [Int]) -> [Int] {
    if arr.count < 2 {
        return arr
    }
    let pivot = arr[arr.count / 2]
    let less = arr.filter { $0 < pivot }    // ? $0
    let equal = arr.filter { $0 == pivot }  // ? $0
    let greater = arr.filter { $0 > pivot } // ? $0
    return quickSort(arr: greater) + equal + quickSort(arr: less)
}

func part3pro(){        // 1h 30 min
    
    let str1 = "Belarus"
    let str2 = "Russia"
    let str3 = "Poland"
    let str4 = "Latvia"
    let str5 = "USA"
    let str6 = "Spain"
    let str7 = "Italy"
    let str8 = "Germany"
    let str9 = "Austria"
    let str10 = "Kazakhstan"
    let arr1: [String] = [str1, str2, str3, str4, str5, str6, str7, str8, str9, str10]
    
    var arr2: [String] = []
    
    for country in arr1 {
        if country.count > 5 {
            let newStr = country.replacingOccurrences(of: "A", with: "Q")
            arr2.append(newStr.replacingOccurrences(of: "a", with: "q"))
        }
    }
    print(arr2)
    
    
    var numbers: [Int] = []
    for _ in 0...29 {
        numbers.append(Int.random(in: -20...20))
    }
    print(numbers)

    
    var numbersLinear = numbers
    for i in 0..<30 {
        var maxValue = numbersLinear[i]
        var maxIndex = i
        for j in i+1..<30 {
            if numbersLinear[j] > maxValue {
                maxIndex = j
                maxValue = numbersLinear[j]
            }
        }
        let temp = numbersLinear[i]
        numbersLinear[i] = numbersLinear[maxIndex]
        numbersLinear[maxIndex] = temp
    }
    print(numbersLinear)
    
    
    var numbersBubble = numbers
    for _ in 0...29 {
        for i in 0..<29 {
            if numbersBubble[i+1] > numbersBubble[i] {
                let temp = numbersBubble[i+1]
                numbersBubble[i+1] = numbersBubble[i]
                numbersBubble[i] = temp
            }
        }
    }
    print(numbersBubble)
    
    
    var numbersQuick = numbers
    numbersQuick = quickSort(arr: numbersQuick)
    print(numbersQuick)
    

    var numbersShake = numbers
    var left = 0
    var right = numbersShake.count - 1
    var hasSwaps = true
    while hasSwaps {
        hasSwaps = false

        for i in left..<right {
            if numbersShake[i] < numbersShake[i + 1] {
                numbersShake.swapAt(i, i + 1)
                hasSwaps = true
            }
        }
        right -= 1
        for i in stride(from: right, to: left, by: -1) {
            if numbersShake[i] > numbersShake[i - 1] {
                numbersShake.swapAt(i, i - 1)
                hasSwaps = true
            }
        }
        left += 1
    
    }
    print(numbersShake)
    
    
    var numbersOddEven = numbers
    var sorted: Bool = false
    while !sorted {
        sorted = true
        for i in stride(from: 0, to: numbersOddEven.count - 1, by: 2) {
            if numbersOddEven[i+1] > numbersOddEven[i] {
                let temp = numbersOddEven[i+1]
                numbersOddEven[i+1] = numbersOddEven[i]
                numbersOddEven[i] = temp
                sorted = false
            }
        }
        for i in stride(from: 1, to: numbersOddEven.count - 1, by: 2) {
            if numbersOddEven[i+1] > numbersOddEven[i] {
                let temp = numbersOddEven[i+1]
                numbersOddEven[i+1] = numbersOddEven[i]
                numbersOddEven[i] = temp
                sorted = false
            }
        }
    }
    print(numbersOddEven)
    
    
    print("if numbersLinear == numbersBubble == numbersQuick == numbersShake == numbersOddEven ? : " + (numbersLinear == numbersBubble && numbersBubble == numbersQuick && numbersQuick == numbersShake && numbersShake == numbersOddEven ? "true" : "false"))
}


part1()
part2()
part2pro()
part3()
part3pro()
