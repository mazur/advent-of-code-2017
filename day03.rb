require_relative 'test'

#AP+PB= |x2-x1| + |y2-y1|
def taxi_cab_distance(point1, point2)
  return (point2[:x] - point1[:x]).abs + (point2[:y] - point1[:y]).abs
end

#puts taxi_cab_distance({:x => 2, :y => 2},{:x => 1, :y => 0})

n = 5

for i in 0...n do
  for j in 0...n do
    x = [ [i,j].min, [n-1-i, n-1-j].min ].min

    if i <= j then
      print (n-2*x)*(n-2*x) - (i-x) - (j-x)
      print "\t"
    else
      print (n-2*x-2)*(n-2*x-2) + (i-x) + (j-x)
      print "\t"
    end
  end
  print "\n"
end
