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
      input1Split = input1.split('')
      input2Split = input2.split('')
      
      diff = 0 
      newString = Array.new 
      for x in 0..input1Split.length
        if input1Split.at(x) != input2Split.at(x)
          diff+=1
        else
          newString.push(input1Split.at(x))
        end
      end
      if diff == 1
        puts "#{input1} == #{input2}"
        puts newString.join
      end
    end
  end
end

checkSum()
closestString()