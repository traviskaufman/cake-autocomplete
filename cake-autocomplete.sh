# Cake Autocompletion

_cake () {
  local cur
  cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=($(compgen -W "`cake 2>/dev/null | awk '{if ($1 == "cake") {print $2}}'`" -- $cur))
  return 0
}

complete -o default -o nospace -F _cake cake 
