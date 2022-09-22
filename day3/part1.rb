require 'set'

def main
  current_location = [0,0]
  visited = Set.new
  visited << current_location

  directions = File.read('input.txt')
  directions.chars.each do |dir|
    case dir
    when '>'
      current_location[0] += 1
    when '<'
      current_location[0] -= 1
    when '^'
      current_location[1] += 1
    when 'v'
      current_location[1] -= 1
    end
    visited << current_location
  end
  puts visited.size
end

if __FILE__ == $PROGRAM_NAME
  main
end
