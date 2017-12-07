input = "5 1 10 0 1 7 13 14 3 12 8 10 7 12 0 6"
#input = "0 2 7 0"
array = input.split(" ").map(&:to_i)
visited = {}
loop_count = 0

loop do
  pos = 0
  dist = 0
  loop_count += 1

  for i in 0..array.length-1
    if array[i] > dist then
      dist = array[i]
      pos = i
    end
  end

  array[pos] = 0

  for _ in (dist-1).downto(0)
    pos += 1
    array[pos%array.length] += 1
  end

  memstr = array.to_s;

  if visited[memstr].nil? then
    visited[memstr] = [loop_count]
  else
    visited[memstr].push(loop_count)
    break visited[memstr].length === 3
  end

end

p "-----"
p visited[array.to_s][1] - visited[array.to_s][0]
