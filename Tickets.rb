require './TicketsFunction'
puts('This is your Grid')
printxcel()
loop do
  menu
  puts('enter your choice')
  choice = gets.chomp.to_i
  case choice
    when 1
          showgrid
    when 2
          puts('please enter number of tickets')
          tickets = gets.chomp.to_i
          bookticket(tickets)
    when 3
      exit
    else
      puts('Invalid choice')
  end

end

