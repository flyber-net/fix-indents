# Fix Indents 
## Fox Indents in Indented Languages like SASS, CoffeeScript, LiveScript, Haskell, Ocaml, F#, Python, etc


### Install
```
npm install fix-indents -g
```


### Use with NodeJs
```Javascript

fixIndents = require("fix-indents");

fixedCode = fixIndents("PUT CODE HERE");

console.log(fixedCode);

```

### Options

Example for LiveScript

```JSON
{ 
  //Prefered amount of spaces for formatting
  countSpaces: 2,
  //Ignore multiline comment and multiline strings
  ignoreInside: [
     * ["'''", "'''"],
     * ["/*" , "*/" ],
     * ['"""', '"""']
  ]
```