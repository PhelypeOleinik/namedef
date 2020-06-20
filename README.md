# namedef
Named parameters in TeX definitions

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

---

Copyright (C) 2019--2020 Phelype Oleinik

This work may be distributed and/or modified under the conditions of
the LaTeX Project Public License, either version 1.3c of this license
or (at your option) any later version. The latest version of this
license is in

    http://www.latex-project.org/lppl.txt

and version 1.3c or later is part of all distributions of LaTeX
version 2005/12/01 or later.

This work is "maintained" (as per the LPPL maintenance status)
by Phelype Oleinik.

Please send bug reports or feature requests at the project repository:
https://github.com/PhelypeOleinik/namedef
or by e-mail (contact info in the source file).
