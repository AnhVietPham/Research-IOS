//+-------------+-------------+----+
//| Structures  |      Classes     |
//+-------------+-------------+----+
//| Value Types | Reference Types  |
//| Values      | Objects          |
//| Copy        | Share            |
//| Immutable   | Mutable          |
//+-------------+-------------+----+

// More information
// https://learnappmaking.com/struct-vs-class-swift-how-to/
// https://learnappmaking.com/structs-swift-how-to/


/* Finally, structs can also do a bunch of things that classes can do too: */

//They can provide subscripts and use subscript syntax
//They can define initializer functions, and get automatically synthesized initializers, such as the memberwise initializer
//They can be extended, with extensions, but cannot be subclassed
//They can conform to protocols, which is crucial for using structs’ full potential

/* Can classes do things that structs cannot? Yes! */

//Classes can subclass other classes, and inherit their functions and properties
//Classes can use type casting to inspect and treat their types
//Classes can declare a deinitializer with deinit()
//Classes are reference types, whereas structs are value types
