module.exports = (str, options)->
  count-spaces = options?count-spaces ? 2
  escape = (str) ->
    str.replace /[\-\[\]\/\{\}\(\)\*\+\?\.\\\^\$\|]/g, '\\$&'  
  get-spaces = (str)->
    str.match(/^[ ]+/g)?0?length ? 0
  process = (previous, current)->
    find-ignore = (get, rule)-->
       current.match(escape get rule)
    each-ignore = (get)->
      return no if typeof options.ignore-inside isnt \Array
      options.ignore-inside |> p.any find-ignore get
    if previous.ignore is true
       previous.push current
       if each-ignore (.1)
          previous.ignore = no
       return previous 
    previous.ignore = each-ignore (.0)
    return previous if current.replace(/[ ]+/g,"").length is 0
    previous.spaces = previous.spaces ? 0
    current-spaces = get-spaces current
    next-spaces = 
      | current-spaces is previous.original => previous.spaces
      | current-spaces is previous.spaces => current-spaces
      | current-spaces > previous.spaces => previous.spaces + count-spaces
      | _ => current-spaces - (current-spaces % count-spaces)
    #console.log previous.spaces, current-spaces, next-spaces, current
    next = current.replace(/^[ ]+/, [0 to next-spaces - 1].map(-> " ").join(""))
    previous.push next
    previous.spaces = next-spaces
    previous.original = current-spaces
    previous
  

  str = str.split(\\n) |> foldl process, []
                       |> join \\n
    