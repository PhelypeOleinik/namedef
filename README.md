# namedef
TeX definitions with named parameters

This package allows you to use names rather than numbers in TeX
definitions. Usually a definition would look like:
```tex
\def\SayHello#1%
  {Hello, #1!}
```
which is usually good enough.  However sometimes when writing macros the
programmer (I, at least) has a macro with several arguments, and then
adding another argument before `#1` requires changing all the numbers
in the definition:
```tex
\def\Say#1#2%
  {#1, #2!}
```
which again, is usually fine most of the time.  But sometimes the
definition is rather long, and has a handful of arguments, so changing
the order requires the programmer to change a lot of `#1` to `#2` in the
code, which is tedious, at best.

With `namedef` you can prefix your definition with `\named`, then every
parameter should be given a name:
```tex
\named\def\SayHello#[subject]%
  {Hello, #[subject]!}
```
then adding another argument before the existing ones is trivial:
```tex
\named\def\Say#[greeting]#[subject]%
  {#[greeting], #[subject]!}
```
and to change the order of the arguments you just swap `#[greeting]` and
`#[subject]` in the <code>&langle;parameter text&rangle;</code>. No
other changes required!

Note that this can be (ab)used for writing macros, but it should
probably be removed for publishing the code.

---

This repository contains the source code `namedef.dtx` and the
installation file `namedef.ins`.  To create the package file
`namedef.sty`, run:
```
tex namedef.ins
```
and to produce the documentation, run:
```
pdflatex namedef.ins
```
