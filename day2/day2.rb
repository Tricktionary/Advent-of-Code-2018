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


def closestString()
  inputArray = readFile()

  inputArray.each_with_index do |input1, i|
    inputArray[i + 1..inputArray.size].each do |input2|
      dif = 0
      input1.each_char.with_index.count {|x,k|
        if x != input2.chars[k]
          dif += 1 
        end       
      }
      if dif == 1
        puts x
      end
      
    end
  end
end

checkSum()
