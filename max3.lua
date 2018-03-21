function max2(a, b)
  if a == nil then
    return b
  elseif b == nil then
    return a
  elseif a<b then
    return b
  else
    return a
  end
end



function max3(a, b, c)
  if a == nil then
    return max2(b, c)
  elseif b == nil then
    return max2(a, c)
  elseif c== nil then
    return max2(a, b)
  elseif a<b then
    return max2(b, c)
  else 
    return max2(a, c)
  end
end

print(max3(1, 2, 3))
print(max3(nil, nil, nil))
print(max3(nil, -5, -1))
