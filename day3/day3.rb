def readFile()
  fileName = "./input.txt"
  lines = File.readlines(fileName)
  file = lines.join 
  textArray = file.split("\n")
  return textArray
end 

def overlap()
  inputs = readFile()
  grid = Array.new(1000) { Array.new(1000, 0) }
  
  inputs.each do |input|
    #Parse all the values 
    values = input.split('@').last
    cord = values.split(':').first
    size = values.split(':').last
    
    x = cord.split(',').first.to_i
    y = cord.split(',').last.to_i

    l = cord.split('x').first.to_i
    w = cord.split('x').last.to_i
    puts "#{x},#{y}"
    puts "#{l}x#{w}"
  end
 
end

overlap()