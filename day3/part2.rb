require 'set'

def main
  santa_loc = [0,0]
  robo_loc = [0,0]
  visited = Set.new

  visited << [0,0]

  directions = File.read('input.txt')
  directions.chars.each_with_index do |dir, i|
    if i.odd?
      loc = robo_loc
    else
      loc = santa_loc
    end

    case dir
    when '>'
      loc[0] += 1
    when '<'
      loc[0] -= 1
    when '^'
      loc[1] += 1
    when 'v'
      loc[1] -= 1
    end
    visited << loc.dup
  end
  puts visited.size
end

if __FILE__ == $PROGRAM_NAME
  main
end
