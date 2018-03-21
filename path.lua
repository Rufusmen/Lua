function printtab(tab)
  str = ''
  if type(tab) == 'table' then
    str = str..'{'
    for i=1,#tab do
      str = str..printtab(tab[i])
      if i<#tab then
        str=str..', '
      end
    end
    str = str..'}'
  else 
    str = str..tostring(tab)
  end
  return str
end

function printf(x)
  print(printtab(x))
end

path = "K:/hidden-name/Teaching/2016_Lua/[Lab]/Lecture 04.pdf"
print(string.match(path , "/([^/]+)%.(%w+)$"))

local function unpath(s)
  local t={}
  for w in  string.gmatch(s ,"([^/]+)/") do
    table.insert(t,w)
  end
  table.insert(t ,{string.match(path , "/([^/]+)%.(%w+)$")})
  return t
end


printf(unpath(path))