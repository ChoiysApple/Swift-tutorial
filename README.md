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
```
    let constant: String = "let for conatant"
    var variable: String = "var for variable"
```

### 3. Data types

- Bool → ture, false
- Int, UInt(Unsigned)
- Float, Double
- Character, String → Unicode

### 4. Any, AnyObject, nil

- Any - can have any dtype
- AnyObject - can have all class type
- nill == null
```
    var someAny: Any = 100
    someAny = "any type"
    someAny = 123.12
    let someDouble: Double = someAny    // error
    
    class SomeClass {}
    var someAnyObject: AnyObject = SomeClass()
    someAnyObject = 123.12              // error
    
    someAny = nil         // error
    someAnyObject = nil   // error
```

### 5. Collection types

- Array - order
```
    var intArr: Array<Int> = Array<Int>()
    // var intArr: Array<Int> = []
    
    intArr.append(10)    // intArr = [10]
    intArr.contains(1)   // true
    intArr[0] = 1        // intArr = [1]
    
    intArr.remove(at:0)
    intArr.removeLast()
    intArr.removeAll()
    
    intArr.count
```

- Dictionary - key & value
```
    var dict: Dictionary<Sting, Any> = [String: Any]()
    
    dict["someKey"] = "value"    // ["someKey":"value"]
    dict.removeValue(forKey:"someKey")
```

- Set - unique, non order
```
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
```

### 6. Function

    func function(){
        return
    }
    
    func function() -> Void{
        return
    }
    
    func sum(a:Int, b:Int) -> Int{
        return a + b
    }
