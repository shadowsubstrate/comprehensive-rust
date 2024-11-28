# Notes for hello_world

## What is Rust

* Rust is statically compiled in a smiliar role as C+.
  * Rust uses LLVM as its backend. LLVM (Low-LevelViertual Machine).
* Rust has no runtime or garbage collection.
* Rust focuses on reliability and safety without sacrificing performance.

### LLVM

Low-Level Virtual Machine is a modern, versatile, and open-source compiler infrastructure designed to support the compilation of programming languages. It provides tools and libraries for building compilers, optimizers, and code generation backends.

Key features:

1. Intermediate Representation (IR). Operates on a language-independent, platform-neutral intermediate representation (LLVM IR), which is a low-level programming language similar to assembly but designed to be highly portable and optimized.

2. Modularity.

3. Optimizations.

4. Multi-Target Backends. It supports a wide range of target architectures, including x86, ARM, PowerPC, RISC-V, and more, making it a versatile tool for cross-compilation.

5. Just-In-Time (JIT) Compilation. LLVM supports JIT compilation, which allows code to be compiled and executed at runtime. This feature is widely used in environments like virtual machines and dynamic language interpreters.

6. Extensibility.

## Benefits of Rust

* Compile time memory safety - whole classes of memory bugs are prevented at compile time.
  * No uninitialize variables.
  * No double-frees.
  * No use-after-free.
  * No NULL pointers.
  * No forgotten locked mutexes.
  * No data races between threads.
  * No iterator invalidation. Iterators in Rust remain valid and safe to use even as the underlying collection they iterate over is modified

* No undefined runtime behavior - what Rust statement does is never left unspecified.

* Modern language features - as expressive and ergonomic as higher-level languages.
  * Enums and pattern matching.
  * Generics.
  * No overhead FFI. Foreign Function Interface (FFI) allows you to call functions written in other programming languages (e.g., C, C++) directly without introducing significant runtime overhead. This means the function calls between Rust and other languages are as efficient as if you were calling native functions within the same language.
  * Zero-cost abstractions.
  * Great compiler errors.
  * Built-in dependency manager.
  * Built-in support for testing.
  * Excellent Language Server Protocol support.