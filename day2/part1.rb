def surface_area(x, y, z)
  sides = [x*y, y*z, x*z].sort
  sides.map{ |x| 2*x }.sum + sides.first
end

def main
  puts (File.readlines('input.txt').map { |line| surface_area(*line.split('x').map(&:to_i)) }.sum)
end

if __FILE__ == $PROGRAM_NAME
  main
end
