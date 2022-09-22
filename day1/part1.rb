def floor(instructions)
  instructions.chars.select{ |c| c == '(' }.count - instructions.chars.select { |c| c == ')' }.count
end

def main
  puts floor(File.read('input.txt'))
end

if __FILE__ == $PROGRAM_NAME
  main
end
