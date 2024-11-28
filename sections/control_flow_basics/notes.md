# Notes for control_flow_basics

## If Expressions

(see if_expressions.rs)

It's basically the same as in other languages.

## Loops

There are three looping keywords in Rust: `while`, `loop` and `for`.

### while

(see while.rs)

The while keywords works much like in any other language, executing the loop as long as the condition is true.

### for

(see for.rs)

The for loop iterates over ranges of values of items in a collection.

* Under the hood, for loops use a concept called "iterators" to handle itering over different kinds of ranges / collections. Iterators whill be discussed in more detail later.

### loop

(see loop.rs)

The loop statement just loops forever, until a break.

## Break and continue

(see break_and_continue.rs)

If you want to immediately start the next interation use `continue`.

If you want to exit any kind of loop early, use `break`. With loop, this can take an optional expression that becomes the value of the loop expression.

### Labels

(see labels.rs)

Both continue and break can optionally take a label argument which is used to break out of nested loops.

## Blocks and Scopes

(see blocks_and_scopes.rs)

A block in Rust contains a sequence of expressions, enclosed by braces {}. Each block has a value and a type, which are those of the last expression of the block.

### Scopes and Shadowing

(see scopes_and_shadowing.rs)

A variable's scope is limited to the enclosing block.

You can shadow variables, both those from outer scopes and variables from the same scope.

* Shadowing is different from mutation, because after shadowing both variables' memory locations exist at the same time. Both are available under the same name, depending where you use it in the code.

* A shadowing variable can have a different type.

* Shadowing looks obscure at first, but is convenient for holding on to values after .unwrap().

## Functions

(see functions.rs)

* Declaration parameters are followed by a type (the reverse of some programming languages), then a return type.

* The last expression in a function body (or any block) becomes the return value. Simply omit the ; at the end of the expression. The return keyword can be used for early return, but the "bare value" form is idiomatic at the end of a function (refactor gcd to use a return).

* Some functions have no return value, and return the 'unit type', (). The compiler will infer this if the return type is omitted.

* Overloading is not supported -- each function has a single implementation.
  * Always takes a fixed number of parameters. Default arguments are not supported. Macros can be used to support variadic functions.
  * Always takes a single set of parameter types. These types can be generic, which will be covered later.

## Macros

(see macros.rs)

Macros are expanded into Rust code during compilation, and can take a variable number of arguments. They are distinguished by a ! at the end. The Rust standard library includes an assortment of useful macros.

* println!(format, ..) prints a line to standard output, applying formatting described in std::fmt.
* format!(format, ..) works just like println! but returns the result as a string.
* dbg!(expression) logs the value of the expression and returns it.
* todo!() marks a bit of code as not-yet-implemented. If executed, it will panic.
* unreachable()! marks a bit of code as unreachable. If executed, it will panic.

## Exercies: Collatz Sequence

(see collatz_sequence.rs)