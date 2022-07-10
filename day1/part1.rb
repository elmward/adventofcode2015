def main
  input = File.read('input.txt')
  puts input.count('(') - input.count(')')
end

main if __FILE__ == $PROGRAM_NAME
