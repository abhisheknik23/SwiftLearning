import UIKit

//What is Clouser
//Clousers are self containt block of code that can be pass around and used in our code.

//non-escaping clouser
//a "non-escaping" closure is one that is guaranteed to be executed during the execution of the function it is passed to and does not outlive that function's scope.

//escaping clouser
//An escaping closure is a closure that is called after the function it was passed to returns. In other words, an escaping closure outlives the function it was passed to.

//Basic clouser
var message = {
    print("Hello Clouser")
}
//Calling clouser
message()

//Clouser with parameter
var sayGoodmorningMessage = { (name: String) in
    print("Good morning \(name)")
}
sayGoodmorningMessage("Abhishek")

//Clouser with paramenter and return type
var someTwoNumber = { (num1:Int, num2:Int) ->(Int) in
    
    return num1 + num2
    
}
print(someTwoNumber(2,2))

//clouser as funtion parameter

func sayNon(greet: () -> ()) {
    greet()
}

sayNon {
    
}

//Capture List
var empName = "John"
let myClouser = { [empName] in
    
    
    print("I am \(empName)")
}

empName = "Moh"
myClouser()


var mode = 1
let clouser = { [mode] in
    print(mode)
}
mode = 2
clouser()


//Clusers are reference type
func execute() -> (Int) -> Int {
    var input = 0
    
    return { output in
        input = input + output
        return input
    }
}

let op = execute()
let a = op(5)
let b = op(10)
let c = op(15)
print(c)

//Example for non-escaping and escaping clouser
class TestClouser {
    
    func performAddition() {
        print("Step1")
        add(1, andNumber2: 1) { result in
            
            print("Result \(result)")
        }
        print("Final Step")
        
    }
    
    func add(_ num1: Int, andNumber2 num2: Int, completion: (_ result:Int) -> Void) {
        print("Step2")
        let sum = num1 + num2
        print("Step3")
        completion(sum)
        
    }
    
    func performSubstraction() {
        print("Step1")
        sub(2, andNumber2: 1) { result in
            
            print("Result \(result)")
        }
        print("Final Step")
    }
    
    func sub(_ num1: Int, andNumber2 num2: Int,  completion: @escaping(_ result:Int) -> Void) {
        print("Step2")
        let sub = num1 - num2
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            print("Step3")
            completion(sub)
        }
        
        
    }
}


let testClouser = TestClouser()
testClouser.performAddition()
/*
 Step1
 Step2
 Step3
 Result 2
 Final Step
 */
testClouser.performSubstraction()
/*
 Step1
 Step2
 Final Step
 Step3
 Result 1
 */
