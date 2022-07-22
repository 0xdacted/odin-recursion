def merge_sort(array)
  half_array = []
  other_half = []

  if array.length < 2
    return
  else
    for i in 0...array.length/2
     p half_array[i] = array[i]
    
      for b in array.length/2 + 1...array.length
     p other_half[i] = array[b]
      end
    end
    merge_sort(half_array)
    merge_sort(other_half)
  end
end


array_numbers = [123, 232, 399, 345, 390]
merge_sort(array_numbers)