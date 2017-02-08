# Fix Indents 
## Fox Indents in Indented Languages like SASS, CoffeeScript, LiveScript, Haskell, Ocaml, F#, Python, etc


### Install
```
npm install fix-indents -g
```

### Use in Command Line
```sh

fix-indents ./style.sass

```

### Use with NodeJs
```Javascript

fixIndents = require("fix-indents");

fixedCode = fixIndents("PUT CODE HERE");

console.log(fixedCode);

```

### Options

Option | Description
---  | ---
countSpaces | Prefered amount of spaces for formatting
ignoreInside | Ignore multiline comment and multiline strings


Example for LiveScript:

```JSON
{ 
  
  "countSpaces": 2,
  "ignoreInside": [
     ["'''", "'''"],
     ["/*" , "*/" ],
     ["\"\"\"", "\"\"\""]
  ]
```