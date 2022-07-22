def fibs(n)
result = []
i = 0
  until i == n 
    if i == 0
      result[i] = 0
    elsif i == 1
      result[i] = 1
    else
      result[i] = result[i-1] + result[i-2]
    end
    i += 1
  end
  p result
end


fibs(8)
