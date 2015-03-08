function fish_greeting
  which fortune > /dev/null
  switch $status
    case 0
      fortune -s
  end
end
