=begin

Minimum Sum,
Minimum sum by choosing minimum of pairs from array

=end


B = []
i = 0

minimum_value = A.min

minimum_sum = minimum_value * (A.count - 1)

p minimum_sum

#B[0] = minimum_value
#A.delete(minimum_value)
#minimum_value = A.min
#B[1] = minimum_value

#p B
#p A
arr_size = A.size

for i in arr_size
  B[i] = A.min
  i += 1
end

p A
p B

