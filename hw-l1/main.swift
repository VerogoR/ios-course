import Foundation

func part1(){       // 15 min
    let _: Int = 10
    let _: UInt = 10
    let floatVar: Float = 10.5
    let doubleVar: Double = 10.5
    let _: String = "Hello, World!"

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
    let country: String = readLine()!
    
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

//part1()
//part2()
//part2pro()
//part3()
