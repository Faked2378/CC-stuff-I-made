local function drawButton(x, y, label, selected)
    term.setCursorPos(x, y)
    
    if selected then
      term.setBackgroundColor(colors.blue)
      term.setTextColor(colors.white)
    else
      term.setBackgroundColor(colors.gray)
      term.setTextColor(colors.black)
    end
    
    term.write(label)
    term.setBackgroundColor(colors.black)
    term.setTextColor(colors.white)
end

local function clearScreen()
    term.setBackgroundColor(colors.black)
    term.clear()
end

local function appInst(app)
    -- Assuming global appInstall(app) is defined
    appInstall(app)
    print(app .. " added")
    os.sleep(2)
    mainMenu()
end

local function mainMenu()
    clearScreen()
    local selectedItem = 1
    
    while true do
        drawButton(10, 8, "snake", selectedItem == 1)
        drawButton(10, 10, "shooter", selectedItem == 2)
        drawButton(10, 12, "Higher Or Lower", selectedItem == 3)
      
        local event, key = os.pullEvent("key")
      
        if key == keys.w and selectedItem > 1 then
            selectedItem = selectedItem - 1
        elseif key == keys.s and selectedItem < 3 then
            selectedItem = selectedItem + 1
        elseif key == keys.enter then
            if selectedItem == 1 then
                appInst("snake")
            elseif selectedItem == 2 then
                appInst("shooter")
            elseif selectedItem == 3 then
                appInst("Higher Or Lower")
            end
        end
      
        clearScreen()
    end
end

clearScreen()
term.setBackgroundColor(colors.blue)
term.clear()
term.setBackgroundColor(colors.black)
term.setCursorPos(10, 5)
term.setTextColor(colors.white)
print("MineOS")

mainMenu()
