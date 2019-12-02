# goenv-goget-rehash

## Installation

### Installing as a goenv plugin

git clone https://github.com/kadaan/goenv-goget-rehash.git $(goenv root)/plugins/goenv-goget-rehash

## Usage

1. `go get` a package that provides executables.
2. Marvel at how you no longer need to type `goenv rehash`.

## How It Works

goenv-goget-rehash hooks every invokation of `go` commands via `goenv`.
If the first argument for `go` is `get`, it invokes `goenv rehash` automatically.

## History

**0.0.1** (Dec 1, 2019)

* Initial public release.

## License

(The MIT License)

Copyright (c) 2019 Joel Baranick <<jbaranick@gmail.com>>
Copyright (c) 2014 Yamashita, Yuu <<yamashita@geishatokyo.com>>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINpipENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
