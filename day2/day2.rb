require 'set'

def readFile()
  fileName = "./input.txt"
  lines = File.readlines(fileName)
  file = lines.join 
  textArray = file.split("\n")
  return textArray
end 

def count_occurence(string, substring)
  return string.scan(/(?=#{substring})/).count
end

def checkSum()
  inputArray = readFile()
  count2 = 0
  count3 = 0
  for input in inputArray
    chars = input.split('')   
    counted2 = false 
    counted3 = false 
    for char in chars 
      count = count_occurence(input,char)
      if count == 2 and counted2 == false
        count2+=1
        counted2 = true
      elsif count == 3 and counted3 == false
        count3+=1
        counted3 = true
      end
    end
  end
  puts "#{count2 * count3}"
end

def closestString
checkSum()