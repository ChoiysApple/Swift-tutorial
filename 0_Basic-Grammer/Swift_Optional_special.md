# Swift - Optional special

## 1. Force Unwrapping

Unwrap without checking

    optional!

## 2. Checking for nil value

unwrap if optional is not nil

    if optional != nil{
    	optional!
    }

## 3. Optional Binding

if optional ≠ nil  → safeOptional = optional!

    if let safeOptional = optional{
    	safeOptional
    }

### 4. Nil coalescing Operator

if optional is nil, use defaultValue

    optional ?? defaultValue

## 5. Optional Chaining

Case when optional is **struct** or **class**

    optional?.property
    optional?.method()