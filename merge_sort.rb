def merge_sort(array)
  left_side = []
  right_side = []
  
  array.each_with_index do |element, index|
    if index < array.length/2 
      left_side[index] = element

    elsif index >= array.length/2
      i = 0
      right_side[i] = element
      i += 1
    end
  end
end


array_numbers = [123, 232, 399, 345, 390, 855]
merge_sort(array_numbers)