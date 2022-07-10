def main
  input = File.read('input.txt')
  floor = 0
  input.chars.each.with_index do |c, i|
    if c == '('
      floor += 1
    else
      floor -= 1
      if floor < 0
        puts i + 1
        break
      end
    end
  end
end

main if __FILE__ == $PROGRAM_NAME
