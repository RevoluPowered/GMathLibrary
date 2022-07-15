GMathLibrary
======================

A tiny vector math lib for the garrysmod source implementation of vectors and rotations.
- Has optional code for copying unsupported functions from garrysmod.

Why was this made?
- It can allow JIT optimizations for the vector type since it becomes native to luajit. There is a performance penalty in luajit for not having the implementation in lua itself as it has to drop out of the JIT context to poll back into C code. this fixes that penalty.

License:
===
MIT License - or original license from commits. you can pick either.
