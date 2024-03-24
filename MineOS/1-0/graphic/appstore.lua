--term.clear()
--term.setCursorPos(6,1)
--print("Appstore")

--global function appInstall(app)

--local function drawButton(x, y, label, selected)
  --term.setCursorPos(x, y)
  
  --if selected then
    --term.setBackgroundColor(colors.blue)
    --term.setTextColor(colors.white)
  --else
    --term.setBackgroundColor(colors.gray)
    --term.setTextColor(colors.black)
  --end
  
  --term.write(label)
  --term.setBackgroundColor(colors.black)
  --term.setTextColor(colors.white)
--end

local function clearScreen()
  term.setBackgroundColor(colors.black)
  term.clear()
end

local function mainMenu()
  clearScreen()
  local selectedItem = 1
  
  while true do
    drawButton(10, 8, "Snake", selectedItem == 1)
    drawButton(10, 10, "shooter", selectedItem == 2)
    drawButton(10, 12, "Money sim", selectedItem == 3)
    drawButton(20, 1, "X", selectedItem == 4)
    
    local event, key = os.pullEvent("key")
    
    if key == keys.w or key == keys.up and selectedItem > 1 then
      selectedItem = selectedItem - 1
    elseif key == keys.s or key == keys.down and selectedItem < 4 then
      selectedItem = selectedItem + 1
    elseif key == keys.enter then
      if selectedItem == 1 then
        appinstall(Snake)
      elseif selectedItem == 2 then
        appinstall(shooter)
      elseif selectedItem == 3 then
        appinstall(moneySim)
      elseif selectedItem == 4 then
        term.clear()
        shell.run("startup.lua")
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
print("Appstore")

mainMenu()

local success, errorMessage = pcall(function()
  print(undefinedVariable)
  end)
if not success then
  print("An error occurred: " .. errorMessage)
  os.sleep(2)  -- Add a delay for user to read the error message
  os.shutdown()
end

mainMenu()
