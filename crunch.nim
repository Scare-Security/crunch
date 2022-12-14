import std/[os, math, strutils, strformat]
import system/ansi_c

proc genPoss(str: var string, i: int, length: int, chars: string) =
  if i == length:
    c_printf "%s\n", str
  else:
    for c in chars:
      str[i] = c
      genPoss(str, i + 1, length, chars)

proc main() =
  if(paramCount() != 3):
    echo "usage: ./crunch <min> <max> [chars]"
    quit 0
  
  let
    min = parseInt(paramStr(1))
    max = parseInt(paramStr(2))
    chars = paramStr(3)
  
  var
    lines: int64 = 0
    bytes: int64 = 0
  
  for i in min..max: lines += chars.len ^ i
  for i in min..max: bytes += lines * (i + 1)
  
  stderr.writeLine fmt"number of lines: {lines}"
  stderr.writeLine fmt"data generated : {bytes} bytes"
  
  for i in min..max:
    var str = newString(i)
    genPoss(str, 0, i, chars)

main()
