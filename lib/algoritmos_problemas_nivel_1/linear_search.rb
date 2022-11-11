=begin
Algoritmo para busca linear em um array.
=end

def search_1(arr, x)
  i = 0
  arr.each do i
  if arr[i] == x
    return i
    break
  end
  i += 1
  end
  -1
end

arr = [2,400,3,485,4,10,1000,40]
x = [0,1,2,4,5,50,10,100,40]

i = 0

x.each do i
if search_1(arr, x[i]) > 1
  p "*****"*15
  p "Valor: #{x[i]} foi encontrado no indice #{search_1(arr, x[i])}."
else
  p "*****"*15
  p "Valor #{x[i]} não foi encontrado na pesquisa!"
end
i += 1
end

