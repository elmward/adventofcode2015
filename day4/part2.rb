require 'digest'

def main
  input = 'iwrupvqb'
  i = 346386
  until Digest::MD5.hexdigest(input + i.to_s).start_with? '000000'
    i += 1
  end
  puts i
end

if __FILE__ == $PROGRAM_NAME
  main
end
