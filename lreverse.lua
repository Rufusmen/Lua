local function lreverser(source, target)
    local targetFile
    local sourceFile
    
    if target ~= nil then
      local option
        print("Czy na pewno chcesz nadpisać plik?\nWybierz t (tak) lub n (nie)")
        option = io.read('l')
        if option == 'n' then
            return
        end
        targetFile = io.open(target, "w")
        io.output(target)
    end
            
    if targetFile ~= nil then
        io.close(targetFile)
    end
    
    if source ~= nil then
        io.input(source)
    end
    
    local text = {}
    
    for line in  io.lines () do
        table.insert(text, line)
    end
    
    print('\n')
    
    for i = #text, 1, -1 do
        io.write(text[i], '\n')
    end
    
    io.input(io.stdin)
    io.output(io.stdout)
end

lreverser()
lreverser('plik1.in')
lreverser('plik1.in', 'plik2.out')