def smallest_perimeter(x, y, z)
  smallest_dims = [x,y,z].sort.take(2)
  smallest_dims.map { |x| 2*x }.sum
end

def bow(x, y, z)
  x*y*z
end

def main
  dims = File.readlines('input.txt').map{ |line| line.split('x').map(&:to_i) }
  puts dims.map { |x, y, z| smallest_perimeter(x, y, z) + bow(x, y, z) }.sum
end

if __FILE__ == $PROGRAM_NAME
  main
end
