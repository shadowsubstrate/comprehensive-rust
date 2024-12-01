# Notes for tuples_and_arrays

## Arrays

(see arrays.rs)

* A value of the array type [T; N] holds N elements of the same type T. Note that the length of the array is part of its type.

## Tuples

(see tuples.rs)

* Like arrays, tuples have a fixed length.

* Tuples group together values of different types into a compound type.

* The empty tuple () is referred to as the "unit type" and signifies absence of a return value, akin to void in other languages.

## Array Iteration

(see array_iteration.rs)

* This functionality uses the IntoIterator trait.

* The assert_ne! macro is new here. There are also assert_eq! and assert! macros. These are always checked, while debug-only variants like debug_assert! compile to nothing in release builds.

## Patterns and Destructuring

(see patterns_and_destructuring.rs)

When working with tuples and other structured values it's common to want to extract the inner values into local variables.

* The patterns used here are "irrefutable", meaning that the compiler can statically verify that the value on the right of = has the same structure as the pattern.

* A variable name is an irrefutable pattern that always matches any value, hence why we can also use let to declare a single variable.