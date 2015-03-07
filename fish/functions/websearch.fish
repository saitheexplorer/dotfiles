function websearch
  set query (echo $argv | tr " " "+")
  open "https://duckduckgo.com/?q=$query"
end

alias amazon "websearch !smile"
alias images "websearch !images"
alias google "websearch !google"
alias sto "websearch !stackoverflow"
alias wiki "websearch !wiki"
alias yt "websearch !yt"
