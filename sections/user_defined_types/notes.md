# Notes for user_defined_types

## Named Structs

(see named_structs.rs)

* Structs work like in C or C++.
  * Unline in C++, there is no inheritance between structs.

* This may be a good time to let people know there are different types of structs.
  * Zero-sized structs (e.g. struct Foo;) might be used when implementing a trait on some type but don't have any data that you want to store in the value itself.
  
* If you already have variables with the right names, then you can create the struct using a shorthand.

* The syntax ..avery allows us to ocpy the majority of the fields from the old struct without having to type it all out.

## Tuple Structs

(see tuple_structs)

If the field names are unimportant, you can use a tuple struct.

(see tuple_newtypes.rs)

These are often used for single-field wrappers (called newtypes).

* Newtypes are a great way to encode additional information about the value in a primitive type.

## Enums

(see enums.rs)

The enum keyword allows the creation of a type which has a few different variants.

* Enumerations allow you to collect a set of values under one type.

* This might be a good time to compare structs and enums:

  * In both, you can have a simple version without fields (unit struct) or one with different types of fields (variant payloads).
  
  * You could even implement the different variants of an enum with separate structs but then they wouldn’t be the same type as they would if they were all defined in an enum.

* Rust uses minimal space to store the discriminant.

## const

(see const.rs)

Constants are evaluated at compile time and their values are inlined wherever they are used.

Only functions marked const can be called at compile time to generate const values. const functions can however be called at runtime.

## static

(see static.rs)

Static variables will live during the whole execution of the program, and therefore will not move.

These are not inlined upon use and have an actual associated memory location. This is useful for unsafe and embedded code, and the variable lives through the entirety of the program execution. When a globally-scoped value does not have a reason to need object identity, const is generally preferred.

## Type Aliases

(see type_aliases.rs)

A type alias creates a name for another type. The two types can be used interchangeably.

## Exercise: Elevator Events

(see elevator_events.rs)