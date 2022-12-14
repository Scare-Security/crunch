# crunch
minimalst crunch wordlist generator in Nim

# usage
`usage: ./crunch <min> <max> [chars]`
- __min__  : minimum length
- __max__  : maximum length
- __chars__: characters to use

# compile
- linux  
```
nim c --opt:speed --d:release crunch.nim
```
- windows  
```
nim c --opt:speed --d:release -d:mingw crunch.nim
```
