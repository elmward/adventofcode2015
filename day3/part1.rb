def main
  current_location = [0,0]
  locations = Hash.new(0)
  locations[current_location] += 1

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
    locations[current_location] += 1
  end
  puts locations.size
end

if __FILE__ == $PROGRAM_NAME
  main
end
