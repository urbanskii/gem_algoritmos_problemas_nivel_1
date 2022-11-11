=begin
Minimum product subset of an array
Given array a, we have to find the minimum product possible with the subset of elements present in the array.
The minimum product can be a single element also.
=end

def minProductSubset(a, n)
  if n == 1 # if array size is 1 return zero
    return a[0]
  end

  max_neg = -Float::INFINITY #take maximum float number
  min_pos = Float::INFINITY
  count_neg = 0
  count_zero = 0
  product = 1
  i = 0

  a.each do i
  if a[i] == 0
    count_zero = count_zero + 1
    continue
  end

  if (a[i] < 0)
    count_neg = count_neg + 1
    max_neg = a.max
  end

  if (a[i] > 0)
    min_pos = a.min
  end

  product = product * a[i]
  end

  if count_zero == n or (count_neg == 0 and count_zero > 0)
    return 0
  end

  if (count_neg == 0)
    return min_pos
  end

  if ((count_neg & 1) == 0 and count_neg != 0)

    # Otherwise result is product of
    # all non-zeros divided by
    # maximum valued negative.
    product = int(prod / max_neg)
    product

  end
  end



  arr = [-1, -1, -2, 4, 3 ]
  n = arr.length # size of array
  p minProductSubset(arr, n) # call def



  arr1 = [0]
  n = arr1.length
  p minProductSubset(arr1, n)