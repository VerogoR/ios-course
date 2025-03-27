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

//part1()
part2()
