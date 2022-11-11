=begin
Given three stacks of the positive numbers, the task is to find the possible equal maximum sum of the stacks with the removal of top elements allowed.
Stacks are represented as an array, and the first index of the array represent the top element of the stack
=end




def findMaximum(stack1, stack2, stack3, n1, n2, n3)
  sum1=0
  sum2=0
  sum3 = 0
  i = 0


  stack1.each do i
  sum1 += stack1[i]
  i += 1
  end

  i = 0

  stack2.each do i
  sum2 += stack2[i]
  i += 1
  end

  i = 0

  stack3.each do i
  sum3 += stack3[i]
  i += 1
  end

  if sum1 and sum2 and sum3 == 0
    return 0
  end

  top1, top2, top3 = 0, 0, 0

  while (1)
    # If any stack is empty
    if (top1 == n1 or top2 == n2 or top3 == n3)
      return 0
    end

    # If sum of all three stack are equal.
    if (sum1 == sum2 and sum2 == sum3)
      return sum1
    end
    # Finding the stack with maximum sum and
    # removing its top element.
    if (sum1 >= sum2 and sum1 >= sum3)
      sum1 -= stack1[top1]
      top1=top1+1
    elsif (sum2 >= sum1 and sum2 >= sum3)
      sum2 -= stack2[top2]
      top2=top2+1
    elsif (sum3 >= sum2 and sum3 >= sum1)
      sum3 -= stack3[top3]
      top3=top3+1
    end
  end
end

stack1 = [ 3, 2, 1, 1, 1 ]
stack2 = [ 4, 3, 2 ]
stack3 = [ 1, 1, 4, 1 ]


p findMaximum(stack1, stack2, stack3, stack1.size, stack2.size, stack3.size)
