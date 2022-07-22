def merge_sort(array)
  left_side = []
  right_side = []
  new_array = []
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
    merge(left_side, right_side, new_array)
  end
  p new_array
end

def merge(arr1, arr2, arr_final)
  a = 0
  b = 0
  c = 0
  arr1_length = arr1.length
  arr2_length = arr2.length
  while a < arr1_length && b < arr2_length
    if arr1[a] < arr2[b]
      arr_final[c] = arr1[a]
      a += 1
      c += 1
    elsif arr1[a] > arr2[b]
      arr_final[c] = arr2[b]
      b += 1
      c += 1

  end
end
return arr_final
end


array_numbers = [452, 874, 100, 345, 390, 855]
merge_sort(array_numbers)