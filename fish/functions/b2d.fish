function b2d
  for port in $argv
    open http://(boot2docker ip):$port
  end
end
