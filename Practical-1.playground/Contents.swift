import UIKit

// 1-Fibonacci

//var range = 10
var a = -1
var b = 1
var sums = 0
for _ in 0...5 {
    sums = a + b
    a = b
    b = sums
    print(sums)
}


//Fibonacci

func fibs(n: Int) -> Int {
    if n == 0 {
        return 0
    } else if n == 1{
        return 1
    }
    return  fibs(n: n - 1) + fibs(n: n - 2)
}
fibs(n: 5)


// 2-Factorial

//var number = 5
var fac = 1
for n in 1...5 {
    fac = fac * n
}
print(fac)

//Factorial
func factorial (number: Int) {
    var fac = 1
    for n in 1...number {
        fac = fac * n
    }
    print(fac)
}
factorial(number: 6)

// 3-palindrome or not

var remainder = 0
var reverser = 0
var n = 1010101
var number = n

while n != 0 {
    remainder = n % 10
    reverser = reverser * 10 + remainder
    n = n / 10
}
if number == reverser {
    print("\(number) is palindrome")
} else {
    print("\(number) is not palindrome ")
}

func palindrome(_ value: String) -> Bool {
    let lenth = value.count / 2
    for i in 0..<lenth {
        let start = value.index(value.startIndex, offsetBy: i)
        let end = value.index(value.endIndex, offsetBy: (i * -1) - 1)
        
        if value[start] != value[end] {
            return false
        }
    }
    return true
}
print(palindrome("10101"))

// 4-closure

var color = "blue"
var weekday = "Monday"
let closure = { [color] in
    print("My favorite color is \(color)")
    print("Today is \(weekday)")
}
color = "green"
weekday = "Tuesday"
closure()
/*
 Output
 My favorite color is blue
 Today is Tuesday

 the capture list of the closure creates a copy of color
 when  it is declared so changing it’s value after has
 no effect on what the closure holds. The variable weekday
 is outside the capture list and it’s therefore used as a
 reference instead of a copy. Any change made to the weekday
 variable is also reflected inside the closure when it is invoked
 */

// 5-subscript
struct WeekDays {
    var days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    
    subscript(index: Int) -> String {
        get {
            return days[index]
        }
        set(newValue) {
            self.days[index] = newValue
        }
    }
}
var wday = WeekDays()
print("\(wday[0]) is WeekDay")
