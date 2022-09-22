def nice?(input)
  has_good_pairs = input.chars.each_cons(2).any? do |pair|
    pair[0] == pair[1]
  end
  has_bad_pairs = input.chars.each_cons(2).any? do |pair|
    ['ab', 'cd', 'pq', 'xy'].include?(pair.join)
  end
  num_vowels = input.chars.select {|c| ['a', 'e', 'i', 'o', 'u'].include? c }.count

  has_good_pairs && !has_bad_pairs && num_vowels >= 3
end

def main
  puts File.readlines('input.txt').filter { |line| nice?(line) }.count
end

main if __FILE__ == $PROGRAM_NAME
