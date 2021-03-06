# Package

version       = "0.1.0"
author        = "bung87"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"



# Dependencies

requires "nim >= 1.3.5"
requires "karax"
requires "https://github.com/bung87/web_preprocessor"

task watch,"watch":
  exec "karun -r -w --css:src/css.html src/nimhub.nim"
task preprocess,"preprocess":
  exec "web_preprocessor -s src/assets -d dest/assets"