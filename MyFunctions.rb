$hash = {}
$xcel = Array.new(3) { Array.new(3, 0) }
def printxcel()
  i=0
  print('-   ')
  for header in 'A'..'C' do
    print("#{header}   ")
  end
  print("\n")
  for subArray in $xcel do
    print("#{i}   ")
    for element in subArray do
      print("#{element}   ");
    end
    print("\n")
    i += 1
  end
end

def menu
  puts('Enter Your Choice.....')
  puts('1.Set Value')
  puts('2.Set Expression')
  puts('3.exit')
end

def getchoice(*args)
  print(*args)
  return gets.chomp.to_i
end

def getprompt(*args)
  print(*args)
  return gets.chomp
end

def setvalue(commandstring)
  x = ((commandstring.split("=").first)[0].upcase.ord)-65
  y = (commandstring.split("=").first)[1].to_i
  value = (commandstring.split("=").last).to_i
  if $xcel[y][x] == 0
  	$xcel[y][x] = value
  else
  	$xcel[y][x] = value
  	test(commandstring.split(" ").first)
  end
end

def setexpression(commandstring)
  $hash[commandstring.split(" ").first] = commandstring
  arr = commandstring.split(" ")
  var = Array.new(3,0)
  val = Array.new(3,0)
  k = 0
  (0...arr.length).each do |i|
    if i == 1 || i ==3
      next
    end
    var[k] = (arr[i][0].upcase.ord)-65
    val[k] = arr[i][1].to_i
    k=k+1
  end
  operator = arr[3]
  if $xcel[val[0]][var[0]] == 0
    performoperation(var[0],val[0],var[1],val[1],var[2],val[2],operator)
  else
    performoperation(var[0],val[0],var[1],val[1],var[2],val[2],operator)
    test(arr[0])
  end
end

def performoperation(x,y,a,b,c,d,operator)
  case operator
    when "+"
      $xcel[y][x] = $xcel[b][a] + $xcel[d][c]
    when "-"
      $xcel[y][x] = $xcel[b][a] - $xcel[d][c]
    when "*"
      $xcel[y][x] = $xcel[b][a] * $xcel[d][c]
    when "/"
      $xcel[y][x] = $xcel[b][a] / $xcel[d][c]
    when "**"
      $xcel[y][x] = $xcel[b][a] ** $xcel[d][c]
      return xcel
  end
end

def test(str)
	arr1 = $hash.values
  	(0...arr1.length).each do |i|
  		arr2 = arr1[i].to_s.split(' ')
    	if str == arr2[2] || str == arr2[4]
      		setexpression(arr1[i])
    	end
  	end
end 






