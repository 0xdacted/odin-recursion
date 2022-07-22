def fibs(n)
result = []
i = 0
  until i == n 
    if i < 2
      result[i] = i
    else
      result[i] = result[i-1] + result[i-2]
    end
    i += 1
  end
  p result
end

def fibs_rec(n, result = [])
return [0,1] if n == 2
result = fibs_rec(n -1)
result << result[-1] + result[-2]
p result
end


fibs(8)
