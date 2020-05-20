require 'pry'
#if block returns true, the argument passed into yield, will exit loop and will be the return value of the method. if false, continue to next element.
def my_find(collection)
i = 0
while i < collection.length #while i < 100
  return collection[i] if
yield(collection[i]) #yield(1)
  i = i + 1
end
end

collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }
#when yield(1) => false
