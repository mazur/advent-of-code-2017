input = File.read("day09input.txt")

@skipped_chars = 0

def read_from_tokens(tokens)
  return if tokens.empty?

  token = tokens.shift

  if token == '!'
    tokens.shift
    return
  end

  if '<' == token
    while tokens.first != '>'
      if tokens.first == '!'
        tokens.shift(2)
      else
        tokens.shift
        @skipped_chars += 1
      end
    end

    tokens.shift
    return
  end

  if '{' == token
    list = []

    while tokens.first != '}'
      list << read_from_tokens(tokens)
    end
    tokens.shift

    return list
  else
    return token
  end
 end

 def count_points(a, p)
   points = p

   a.each do |e|
     if e.kind_of?(Array) then
       points += count_points(e, p+1)
     end
   end

   points
 end

input = input.chars
x = []

while !input.empty? do
  x << read_from_tokens(input)
end

p count_points(x, 0)
p @skipped_chars
