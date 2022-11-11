=begin

Minimum Sum,
Minimum sum by choosing minimum of pairs from array

=end

A = [2,4,1,3]
B = []
i = 0

A.each do i
  B[i] = A.min
  A.pop(B[i])
  i += 1
end

p A
p B