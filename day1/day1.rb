def readFile()
  fileName = "./input.txt"
  lines = File.readlines(fileName)
  file = lines.join 
  textArray = file.split("\n")

  return textArray
end 

def getFrequency()
  textArray = readFile()
  frequency = 0

  for text in textArray
    frequency = frequency + text.to_i
  end 

  puts frequency
end

def detectTwice()
  textArray = readFile()

  frequency = 0
  usedArray = Array.new
  curr = 0

  repeat = nil 

  while repeat.nil?
    for text in textArray
      if usedArray.include? frequency
        repeat = frequency
        puts repeat
        break
      else
        usedArray.push(frequency.to_i)
        frequency += text.to_i
      end
    end
  end
end

 
getFrequency()
detectTwice()