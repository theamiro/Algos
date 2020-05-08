import Foundation

extension NSRegularExpression {
    convenience init(_ pattern: String) {
        do {
            try self.init(pattern: pattern)
        } catch {
            preconditionFailure("Error parsing the String. Not a valid type.")
        }
    }
}

protocol ShapeOrContainer { }

extension Shape: ShapeOrContainer { }
extension Container: ShapeOrContainer { }

func parseString(input: String) {
    let regex = try! NSRegularExpression(pattern: "(\\([A-Z]*(?R))?\\)?(\\[[0-9]*(?R)\\]+)?\\)?\\)?", options: [])
    let matches = regex.matches(in: input, options: [], range: NSRange(location: 0, length: input.utf16.count))
    
    for match in matches {
        print(match)
    }
}

class Container {
    var name: String
    var children: [Shape] = [] as! [Shape<Any>]

    init() {
        self.name = "container"
    }

    func addChild(child: Shape<Any>) {
        self.children.append(child)
    }
}

class Shape<T> {
    var label: T
    var parent: ShapeOrContainer?
    var children: [Shape] = []

    init(label: T) {
        self.label = label
    }

    func addChild(child: Shape<T>) {
        self.children.append(child)
        self.parent = self
    }
}

class Square<T: Shape<Any>>: Shape<Int> {
    
    func addSquare(square: Square) {
        self.addChild(child: square)
    }
}

class Circle<T: Shape<Any>>: Shape<String> {
    
    func addSquare(square: Square) {
        self.addChild(child: square)
    }
    
    func addCircle(circle: Circle) {
        self.addChild(child: circle)
    }
}

let container = Container()

let square = Shape<Int>(label: 12)
let circle = Shape<String>(label: "SWAMP")
