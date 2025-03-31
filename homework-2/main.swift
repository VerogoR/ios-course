import Foundation


func printSquares(N: Int) {     // 3
    for i in 1...N {
        if i*i <= N {
            print(i*i, terminator: " ")
        } else {
            print()
            break
        }
    }
}

func printCubesFromAtoB(_ A: Int, _ B: Int){        // 2
    for i in A...B{
        print(i*i*i, terminator: " ")
    }
    print()
}

func powerNum(num: Double, pow: Int) -> Double {        // 5
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

func printTableOfValues() {     // 3
    for i in stride(from: -5.0, to: 5.1, by: 0.5) {
        print(String(i)+": "+String(5.0-(i*i/2.0)))
    }
    print()
}

func hypSirakyz() {     // 7
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

func printDiffNums(_ N: Int) {      // 3.5
    var nums = Set<String>()
    for char in String(N) {
        if nums.count(where: { $0 == String(char) }) == 0 {
            nums.insert(String(char))
            print(char, terminator: " ")
        }
    }
    print()
}


printSquares(N: 50)
printCubesFromAtoB(3, 18)
print(powerNum(num: 2, pow: 10))
printTableOfValues()
hypSirakyz()
printDiffNums(23346785543672)
