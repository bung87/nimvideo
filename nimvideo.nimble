# Package

version       = "0.1.0"
author        = "bung87"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"



# Dependencies

requires "nim >= 1.3.5"
requires "karax#head"
requires "jester#head"

task watch,"watch":
  exec "nim c -r --threads:on src/watch.nim"
