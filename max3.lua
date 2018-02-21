

function fibo(n)
  if n==0 then
    return 0
  elseif n==1 then
    return 1
  else
    return fibo(n-1)+fibo(n-2)
  end
end

print(fibo(9))
print(fibo(20))
