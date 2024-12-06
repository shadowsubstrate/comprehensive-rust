# Notes for references

## Shared References

(see references.rs)

A reference provides a way to access another value without taking ownership of the value, also called "borrowing". Shared references are read-only, and the references data cannot change.

A shared reference to a type T has a type &T. A reference value is made with the & operator. The * operator "dereferences" a reference, yielding its value.

Rust will statically forbid dangling references.

* References can never be null in Rust, so null checking is not necessary.

* A reference is said to "borrow" the value it refers to, and this is a good model for students not familiar with pointers: code can use the reference to access the value, but is still "owned" by the original variable.

* References are implemented as pointers, and a key advantage is that they can be much smaller than the thing they point to.

* Rust does not automatically create references for you.

* Rust will auto-dereference in some cases, in particular when invoking methods.

* A shared reference does not allow modifying the value it refers to, even if that value was mutable.

## Exclusive References

(see exclusive_references.rs)

Exclusive references, also known as mutable references, allow changing the value they refer to. They have type &mut T.

* "Exclusive" means that only this reference can be used to access the value. No other references (shared or exclusive) can exist at the same time, and the reference value cannot be accessed while the exclusive reference exists.

## Slices

(see slices.rs)

A slice gives you a view into a larger collection.

* We create a slice by borring and specifying the starting and ending indexes in brackets.

* Slices always borrow from another object. In this example, a has to remain 'alive' (in scope) for at least as long as our slice.

## Strings

(see strings.rs)

We can now understand the two string types in Rust:

* &str is a slice of UTF-8 encoded bytes, similar to &[u8].

* String is an owned buffer of UTF-8 encoded bytes, similar to Vec<T>.

* &str introduces a string slice, which is an immutable reference to UTF-8 encoded string data stored in a block of memory. String literals ("Hello"), are stored in the program’s binary.

* Rust's String type is a wrapper around a vector of bytes. As with a Vec<T>, it is owned.

* You can borrow &str slices from String via & and optionally range selection. If you select a byte range that is not aligned to character boundaries, the expression will panic. The chars iterator iterates over characters and is preferred over trying to get character boundaries right.

## Exercise: Geometry

(see geometry.rs)