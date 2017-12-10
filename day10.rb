list = (0..255).to_a
#lengths = "94,84,0,79,2,27,81,1,123,93,218,23,103,255,254,243".split(",").map(&:to_i)

#list = (0..4).to_a
#lengths = "3, 4, 1, 5".split(", ").map(&:to_i)

lengths = "94,84,0,79,2,27,81,1,123,93,218,23,103,255,254,243".chars.map(&:ord)
add_lengths = "17, 31, 73, 47, 23".split(", ").map(&:to_i)

lengths = lengths + add_lengths
lengths = lengths*64

pos = 0
pc = 0

while !lengths.empty? do
  l = lengths.shift
  s = []

  for i in 0..l-1
    s[i] = list[(pos+i)%list.length]
  end

  s = s.reverse

  for i in 0..l-1
    list[(pos+i)%list.length] = s[i]
  end

  pos = pos + l + pc
  pc += 1
end

hash = list.each_slice(16).map { |a| a.inject(:^) }


p hash
p hash.pack('C*').unpack('H*')[0]
#p list
#p list[0]*list[1]
