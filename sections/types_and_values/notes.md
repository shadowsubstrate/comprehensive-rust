# Notes for types_and_values

## Hello, World

The most basic program (see main.rs).

* Functions are introduced using `fn`.
* Blocks are delimited by curly braces like in C and C++.
* The `main` function is the entry point of the program.
* Rust has hygienic macros, `println!` is an example of this.
  * Being "hygienic" means they don't accidentally capture identifiers from the scope they are used in.
* Rust strings are UTF-8 encoded and can contain any Unicode character.

* Rust uses macros for situations where you want to have a variable number of arguments (no function overloading).

## Variables

(see variables.rs)

Rust provides type safety via static typing. Variable bindings are made with `let`.

## Values

| Data Type                | Types                                      | Examples                            |
|--------------------------|--------------------------------------------|-------------------------------------|
| Signed integers          | `i8`, `i16`, `i32`, `i64`, `i128`, `isize`| `-10`, `0`, `1_000`, `123_i64`     |
| Unsigned integers        | `u8`, `u16`, `u32`, `u64`, `u128`, `usize`| `0`, `123`, `10_u16`               |
| Floating point numbers   | `f32`, `f64`                              | `3.14`, `-10.0e20`, `2_f32`        |
| Unicode scalar values    | `char`                                    | `'a'`, `'α'`, `'∞'`                |
| Booleans                 | `bool`                                    | `true`, `false`                    |

The types have widths as follows:
* `iNp`, `uN`, and `fN` are N bits wide.
* `isize` and `usize` are the width of a pointer.
* `char` is 32 bits wide.
* `bool` is 8 bits wide.

## Arithmetic

(see arithmetic.rs)

Arithmetic is very similar to other languages.

In C and C++ overflow of signed integers is actually undefined, and might do unknown things at runtime. In Rust, it's defined.

The compiler will detect overflow of constant expressions.

## Type Inference

(see type_inference.rs)

Rust will look at how the variable is used to determine the type.

It is very important to emphasize that variables declared like this are not of some sort of dynamic "any type" that can hold any data.

## Exercies

(see fibonacci.rs)