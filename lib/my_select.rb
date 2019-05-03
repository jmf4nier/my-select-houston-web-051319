def my_select(collection)
 i = 0 
 new_array = []
 while i < collection.length 
   if yield(collection[i]) == true
     new_array.push(collection[i])
   end
  i += 1
end
new_array
end

my_select([1, 2, 3, 4, 5, 6]) do |num|
  num.even?
end