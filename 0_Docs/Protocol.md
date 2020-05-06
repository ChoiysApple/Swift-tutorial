# Protocol

Define requirements

    protocol myProtocol{
    	//requirements
    }
    
    struct myStruct: Protocol1, Protocol2 { ... }
    class myClass: SuperClass, Protocol1, Protocol2 { ... }

    class Bird {
    	func fly() { ... }
      func layEggs() { ... }
    }
    
    class Eagle: Bird { ... }
    class Penguin: Bird { ... }
    class Plane1: Bird { ... }
    struct Plane2 { ... }
    
    struct FlyingThings {
    	func flyDemo(_ flyingObj: Bird) {
    		flyingObj.fly()
    	}
    }

In this case, although **penguin** cannot **fly** and **Plane** cannot **layEggs,** This happens

    FlyingThings.flyDemo(Penguin)    // O
    Plane1.layEggs()                 // O
    FlyingThings.flyDemo(Plane2)     // X

    protocol CanFly {
    	func Fly()       // cannot create function body here
    }
    
    
    class Bird {
    	// fly() deleted
    	func layEggs() { ... }
    }
    
    class Eagle: Bird, CanFly { 
    	func fly() { ... }
    }
    class Penguin: Bird { ... }   // Penguin doesn't contain fly()
    struct Plane: CanFly { 
    	func fly() { ... }
    }
    
    struct FlyingThings {
    // Use Protocol as Dtype -> flyObj requires somthing has CanFly
    	func flyDemo(_ flyingObj: CanFly) {    
    		flyingObj.fly()
    	}
    }

By using Protocol, this happens

    FlyingThins.flyDemo(Eagle)       // O
    FlyingThings.flyDemo(Penguin)    // X
    FlyingThins.flyDemo(Plane)       // O
    
    Eagle.layEggs()                  // O
    Penguin.layEggs()                // O
    Plane.layEggs()                  // X

Documentation

[Protocols - The Swift Programming Language (Swift 5.2)](https://docs.swift.org/swift-book/LanguageGuide/Protocols.html)