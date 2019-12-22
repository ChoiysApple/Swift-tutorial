# Swift bootcamp

### 1. Console log, String Interpolation

- print - print value
- dump - print value + **description property**

String Interpolation - display value of variable in String

    import Swift
    
    let age: Int = 10
    print("He is \(age) years old")
    
    class Person { var name: String = dev }
    let John: Person = Person()
    print(John)
    dump(John)

    He is 10 years old
    
    _lldb_expr_56.Person
    
    _lldb_expr_56.Person
    - name: "dev"

### 2. Constant, variable

- **let** - constant
- **var** - variable

    let constant: String = "let for conatant"
    var variable: String = "var for variable"

### 3. Data types

- Bool → ture, false
- Int, UInt(Unsigned)
- Float, Double
- Character, String → Unicode

### 4. Any, AnyObject, nil

- Any - can have any dtype
- AnyObject - can have all class type
- nill == null

    var someAny: Any = 100
    someAny = "any type"
    someAny = 123.12
    let someDouble: Double = someAny    // error
    
    class SomeClass {}
    var someAnyObject: AnyObject = SomeClass()
    someAnyObject = 123.12              // error
    
    someAny = nil         // error
    someAnyObject = nil   // error

### 5. Collection types

- Array - order

    var intArr: Array<Int> = Array<Int>()
    // var intArr: Array<Int> = []
    
    intArr.append(10)    // intArr = [10]
    intArr.contains(1)   // true
    intArr[0] = 1        // intArr = [1]
    
    intArr.remove(at:0)
    intArr.removeLast()
    intArr.removeAll()
    
    intArr.count

- Dictionary - key & value

    var dict: Dictionary<Sting, Any> = [String: Any]()
    
    dict["someKey"] = "value"    // ["someKey":"value"]
    dict.removeValue(forKey:"someKey")

- Set - unique, non order

    var Set: Set<Int> = Set<Int>()
    
    set.insert(1)
    set.contains(1)       // true
    set.remove(1)
    set.removeFirst()     
    set.count
    
    
    let setA: Set<Int> = [1, 2, 3, 4, 5]
    let setB: Set<Int> = [3, 4, 5, 6, 7]
    
    let union: Set<Int> = setA.union(setB)    // [2, 4, 5, 6, 7, 3, 1]
    union.sorted()                            // [1, 2, 3, 4, 5, 6, 7]
    setA.intersection(setB)                   // [5, 3, 4]
    setA.subtracting(setB)                    // [2, 1]

### 6. Function

- Basic form

    func function(){
        return
    }
    
    func function() -> Void{
        return
    }
    
    func sum(a:Int, b:Int) -> Int{
        return a + b
    }

- Parameter default value 
    able to omit the parameter, default parameter placed at last

    func greeting(friend: String, me: String="Choi") { print("Hello \(friend) I'm \(me)")
    
    greeting(friend: "John")               // Hello John I'm Choi
    greeting(friend: "John", me: "Jane")   // Hello John I'm Jane

- Argument Label
    Using different parameter name for function call

    func greeting(to friend: String, from me: String) { print("Hello \(friend) I'm \(me)")
    
    greeting(to: "John", from: "Jane")   // Hello John I'm Jane

- Dynamic parameters
    Only one per function

    func greetingToFriends(frineds: String...) -> String{
        return "Hello \(friends)!"
    }
    
    print(greetingToFriends(friends: "john", "jane")    // Hello ["john", "jane"]

- Function as data type

    var greetFunction: (String, String) -> Void = greeting(to:from:)
    greetFunction("john", "jane")    // Hello jane, I'm john
    f
    func runAnother(function: (String, String) -> Void) { function("john", "jane") }
    runAnother(greeting(friend:me:))       // Hello jane, I'm john
    runAnother(function: greetFucntion)    // Hello jane, I'm john
    

### 7.  Conditional expressions

- if - else
    can omit () but not {}, condition must be **bool**

    Bool contition
    
    if (contition) { }
    else if (condition) { }
    else contitinon {}

- Switch
    can use most basic dtypes, default essential, automatically break
   fallthrough → makes expressions like switch without break in other language

    switch someInteger {
    case 0:
        print("zero")
    case 1..<100:              // 1 <= someInteger < 100 
        print("1~99")
    case 100:
        print("100")
    case 101...Int.max:        // 101 <= someInteger <= Int.max
        print("over 100")
    default:
        print("unknown")
    } 
    
    switch "jane" {
    case "john":
        print("john")
    default:
        print("unknown")
    }

### 8.  Loop

- for - in → same with Python
- while → same with it in other language
- repeat - while → same with **do - while**