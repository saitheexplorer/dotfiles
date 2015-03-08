function websearch
  set query (echo $argv | tr " " "+")
  open "https://duckduckgo.com/?q=$query"
end
