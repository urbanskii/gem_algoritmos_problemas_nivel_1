=begin
Maximize array sum after K negations | Set 1
Given an array of size n and a number k. We must modify array K a number of times.
Here modify array means in each operation we can replace any array element arr[i] by -arr[i].
We need to perform this operation in such a way that after K operations, the sum of the array must be maximum?
reference,
https://github.com/ACEMerlin/leetcode-ruby/blob/master/1005.maximize-sum-of-array-after-k-negations.rb
=end

def maximi_sum(a, k)
  while k > 0
    min= a.index(a.min)
    a[min] = -a[min]
    k -= 1
  end
  a.sum
end

a = [2,-3,-1,0,5,-4]
k = 10

p maximi_sum(a, k)