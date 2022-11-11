def classic(array)
  counters = Array.new(array.max+1, 0)
  array.each { |e| counters[e] += 1 }

  result = Array.new(array.size)
  i = 0
  counters.size.times do |number|
    counters[number].times do
      result[i] = number
      i += 1

    end
  end

  result
end

arr = [1,3,1,1,10,15,1,2,25,4,150,1000,5,1,154789,1,2]
p classic(arr)