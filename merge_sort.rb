def merge_sort(array)
  left_side = []
  right_side = []
  i = 0
  if array.length < 2
    return
  else
    array.each_with_index do |element, index|
      if index < array.length/2 
        left_side[index] = element

      elsif index >= array.length/2
        right_side[i] = element
        i += 1
      end
    end
    merge_sort(left_side)
    merge_sort(right_side)
  end
end


array_numbers = [123, 232, 399, 345, 390, 855]
merge_sort(array_numbers)