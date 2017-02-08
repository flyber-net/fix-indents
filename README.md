# Fix Indents 
## Fix Indents in Indented Languages like SASS, CoffeeScript, LiveScript, Haskell, Ocaml, F#, Python, etc

![Example](https://content.screencast.com/users/a.stegno/folders/Jing/media/c4b5c81d-de94-45cf-be2a-85039d3cdaac/00000110.png)

###Motivation
Developer puts different amount of indents during development. This tools allows to refactor indents into one consistent and accurate indented code

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

fixedCode = fixIndents("PUT CODE HERE", { /*options*/ });

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