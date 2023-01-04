# implementation from https://www.honeybadger.io/blog/ruby-bubble-sort/
=begin

arr = [5,4,2,8,25,2,35,1,99,34,22]
n = arr.size
loop do
  swapped = false
  # Last i elements are already in place
  (n-1).times do |i|
    # traverse the array from 0 to n-i-1
    # Swap if the element found is greater
    # than the next element
    if arr[i] > arr[i+1]
      arr[i], arr[i+1] = arr[i+1], arr[i]
      swapped = true
    end
  end
  break if not swapped
end
p arr

=end

class BubbleSort
  def self.sort(array)
    n = array.size
    loop do
      swapped = false
      (n-1).times do |i|
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          swapped = true
        end
      end
      break if not swapped
    end
    array
  end
end