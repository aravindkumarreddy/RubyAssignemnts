require './MyFunctions'
puts('This is your excel Sheet')
printxcel()
loop do
  menu
  choice = getchoice('Enter your choice: ')
  case choice
    when 1
      commandstring = getprompt('Enter Command String: ')
      setvalue(commandstring)
      printxcel
    when 2
      commandstring = getprompt('Enter Command String: ')
      setexpression(commandstring)
      printxcel
    when 3
      exit
    else
      puts('Invalid choice')
  end

end

