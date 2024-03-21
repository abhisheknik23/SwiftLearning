import UIKit

//Defer
//defer controls when a piece of code is executed. You use a defer block to write code that will be executed later, when your program reaches the end of the current scope.

var value = 0
func learnDefer() -> Int {
   
    defer {
        value = value + 1
    }
    
    return value
}
print(learnDefer())
print(value)


func nestedDefer() {
    print("setp1")
    defer {
        print("step2")
    }
    defer {
        defer {
            defer {
                print("step7")
            }
            print("step6")
        }
        print("step4")
    }
    defer {
        print("step5")
    }
    print("step3")
}
nestedDefer()

print("**********************")
func nestedCompletlyDefer() {
   
    do {
        defer {
            defer {
                defer {
                    defer {
                        print("step5")
                    }
                    
                    print("step4")
                }
                print("step3")
            }
            print("step2")
        }
        print("step1")
    }
    
}
nestedCompletlyDefer()
