# Cake Autocompletion

_cake () {
  local cur
  local prev
  cur=${COMP_WORDS[COMP_CWORD]}
  prev=${COMP_WORDS[COMP_CWORD-1]}
  opts=""
  if [[ -n $prev && $prev != "cake" ]]; then
    opts=`cake 2>/dev/null | awk '{ if (match($1, "^-")) { print substr($1, 0, length($1) - 1); print $2 }}'`
  fi

  tasks=`cake 2>/dev/null | awk '{ if ($1 == "cake") { print $2 }}'`
  words="$tasks $opts"
  COMPREPLY=($(compgen -W "$words" -- $cur))
  return 0
}

complete -o default -o nospace -F _cake cake 
