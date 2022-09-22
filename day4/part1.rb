require 'digest'

def main
  input = 'iwrupvqb'
  i = 0
  while Digest::MD5.hexdigest(input + i.to_s).chars.take(5).join != '00000'
    i += 1
  end
  puts i
end

if __FILE__ == $PROGRAM_NAME
  main
end
