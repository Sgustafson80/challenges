x = 7
i=0


while i<10
  y=0
  
  x.to_s.each_char do |z|
    y = y+z.to_i
  end

  if y == 10 and x.to_s.include? '7'
    puts x
    i=i+1
  end

  x= x+1
end
