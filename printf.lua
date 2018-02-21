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



printf ( {'ala', 'ma', 127, 'kotów'} )
printf ( {'to są', {}, {2, 'tablice '}, 'zagnieżdżone?', {true}} )
printf(1)