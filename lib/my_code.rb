#my own map

def map(array) 
 i=0
 new_array =[]
 while i< array.length do
   new_array << yield(array[i])
   i +=1
 end
 new_array
end


#my reduce
def reduce(array, starting_point = nil)
  if starting_point
   total = starting_point
    i = 0
  else
  total = array[0]
  i=1
  end
  
  while i < array.length do
    total = yield(total, array[i])
    i+=1
  end
   total
end