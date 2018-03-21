function add(calendar, event)
  for i,v in pairs(calendar) do
    if (event.start <= v.ends and event.start >=v.start) or (event.ends <= v.ends and event.ends >=v.start) then
      return nil,i
    end
  end
  table.insert(calendar,event)
  table.sort(calendar, function(a,b) return a.start<b.start end)
  for i,v in pairs(calendar) do
    if event.start == v.start then return i end
  end
end

function show (calendar , all)
  local start = os.time()
  if all == true then start = 0 end
  for i,v in pairs(calendar) do
    if v.start > start then print(v.info) end
  end
end

function new_event(s,e,i)
  return {start=os.time(s),ends=os.time(e),info=i}
end




calendar = {}
local t1 = os.date("*t")
local t2 = os.date("*t")
t2.min = t2.min + 2
add(calendar,new_event(t1,t2,"Teraz"))
t1.min = t1.min - 15
t2.min = t2.min - 10
add(calendar,new_event(t1,t2,"Wcześniej"))
t1.min = t1.min + 20
t2.min = t2.min + 20
add(calendar,new_event(t1,t2,"Później"))
t1.hour = t1.hour - 1
add(calendar,new_event(t1,t2,"Nakłada się"))
show(calendar)
show(calendar,true)
