# TACHYONS with CSS variables

Functional CSS for humans who like CSS variables.

Fork of Tachyons that allows customization via CSS variables.
A bit ironically, this means doing a lot _less_ in the build step.
For the most part we just use the raw .css files instead of running them through Less.
This approach breaks media queries since those are not customizable with CSS variables—we do those the normal way (i.e. hard-coding the values in the repo).

**Build with [`./build.sh`](./build.sh).**
