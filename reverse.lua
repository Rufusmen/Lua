
utf8.reverse = function(s)
  local t = {utf8.codepoint(s , 1 ,-1)}
  local i,j = 1, #t
  while i<j do
    t[i],t[j]=t[j],t[i]
    i = i+1
    j = j-1
  end
  return utf8.char(table.unpack(t))
end


normalize = function(s)
  local t = {utf8.codepoint(s,1,-1)}
  local T = {}
  for i in pairs(t) do
    if t[i] < 128 then table.insert(T,t[i]) end
  end
  return utf8.char(table.unpack(T))
end

utf8["normalize"]=normalize

print(utf8.reverse("Księżyc"))
print(utf8.reverse("w szczebrzeszynie chrząszcz brzmi w trzcinie strząsa skrzydła z dżdżu"))
print(utf8.normalize("Księżyc"))
print(utf8.normalize("Księżyc:\nNów"))
print(utf8.normalize("w szczebrzeszynie chrząszcz brzmi w trzcinie strząsa skrzydła z dżdżu"))
