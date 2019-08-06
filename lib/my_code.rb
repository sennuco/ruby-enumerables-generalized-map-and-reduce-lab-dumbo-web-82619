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
def reduce(array, starting_point =nil)
  
  if starting_point
  i=0
  total=starting_point
else
  total = array[0]
  i=1
    
  end
  while i < array.length do
    total = yield(array[i], total)
  end
   total
end