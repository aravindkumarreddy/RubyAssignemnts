$grid = Array.new(3) { Array.new(4, 0) }
$filled = 0
$total = 3*4
def showgrid()
  i=0
  print('-   ')
  for header in 'A'..'D' do
    print("#{header}   ")
  end
  print("\n")
  for subArray in $xcel do
    print("#{i+1}   ")
    for element in subArray do
      print("#{element}   ");
    end
    print("\n")
    i += 1
  end
end

def menu
  puts('Enter Your Choice.....')
  puts('1.Show Grid')
  puts('2.Book Ticket')
  puts('3.exit')
end

def booktickets(tickets)
  array = []
  if filled+tickets>total
    puts('Tickets not available')
  else
    filled += tickets
    puts('enter your seat numbers')
    (0...tickets).each do |i|
    commandstring = gets.chomp
    if $grid[row][col] == 0
      array[i] = commandstring
    else
      puts('Ticket you selected is not available')
      puts("enter q or Q to quit")
      quit = gets.chomp
      if quit == 'q' || quit == 'Q'
        array[i] = quit
      end
      redo
    end
    if array.include?('q') || array.include?('Q')
      puts("Tickets cannot be booked try again")
    else
      (0...array.length).each do |i|
      col = (array[i][0].upcase.ord)-65
      row = array[i][1].to_i
      if $grid[row][col] == 0
         $grid[row][col] = 1
      end
    end
  end
end
