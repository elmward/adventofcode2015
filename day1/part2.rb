def first_basement_instruction(instructions)
  floor = 0
  instructions.chars.each_with_index do |c, i|
    case c
    when '('
      floor += 1
    when ')'
      floor -= 1
    end
    if floor < 0
      return i + 1
    end
  end
end

def main
  puts first_basement_instruction(File.read('input.txt'))
end

if __FILE__ == $PROGRAM_NAME
  main
end
