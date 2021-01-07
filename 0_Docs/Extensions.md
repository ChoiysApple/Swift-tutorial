# Extensions

Way to add functionality to an existing class or protocols

**Syntax**

```swift
extension SomeType {
    // new functionality to add to SomeType goes here
}
```

**Computed Properties**

```swift
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 == 1
    }
}

print(1.isEven) // false
print(2.isEven) // true
print(1.isOdd)  // true
print(2.isOdd)  // false

var number: Int = 3
print(number.isEven) // false
print(number.isOdd) // true

number = 2
print(number.isEven) // true
print(number.isOdd) // false
```

**Initializers**

```swift
extension String {

    subscript(appendValue: String) -> String {
        return self + appendValue
    }

    subscript(repeatCount: UInt) -> String {
        var str: String = ""
        for _ in 0..<repeatCount {
            str += self
        }
        return str
    }
}

print("abc"["def"]) // "abcdef" 
print("abc"[3]) // "abcabcabc"
```

**Methods**

```swift
extension Int {
    func multiply(by n: Int) -> Int {
        return self * n
    }
}
print(3.multiply(by: 2))  // 6
print(4.multiply(by: 5))  // 20

var number: Int = 3
print(number.multiply(by: 2))   // 6
print(number.multiply(by: 3))   // 9
```

**Examples**

```swift
let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red // red square

// without extensions
button.layer.cornerRadius = 25
button.clipToBounds = true

// with extensions
extension UIButton {
	func makeCircular(){
		self.layer.cornerRadius = 25
		self.clipToBounds = true
		}
}
button.makeCircular()    // Use functions
```

**With Protocols**

```swift
protocol CanFly {
	func fly()       // cannot create function body here
}

extension CanFly {
	func fly() {
		print("Filed")
	}
}

class Bird {
	func layEggs() { ... }
}

class Eagle: Bird, CanFly { 
	func fly() { ... }
}

class Penguin: Bird { ... }   

struct Plane: CanFly { 
	// Because of extension, fly() isn't necessary
}
```