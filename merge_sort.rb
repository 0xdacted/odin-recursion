def merge_sort(array)
  new_array = []
  if array.length < 2
    return array

  else
    left_side = merge_sort(array[0...array.length/2])
    right_side = merge_sort(array[array.length/2...array.length])
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
  if a == arr1_length 
    arr_final[c...arr1_length + arr2_length] = arr2[b...arr2_length]
  elsif b == arr2_length 
    arr_final[c...arr1_length + arr2_length] = arr1[a...arr1_length]
end
return arr_final
end


array_numbers = [452, 874, 100, 345, 390, 855, 1000, 123]
merge_sort(array_numbers)