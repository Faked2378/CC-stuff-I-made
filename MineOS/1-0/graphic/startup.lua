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

local function appStore()
  clearScreen()
  print("Welcome to the App Store!")
  shell.run("mineOS/appstore")  -- Run the app store script
  os.sleep(2)
  mainMenu()
end

local function settings()
  clearScreen()
  print("Welcome to Settings!")
  shell.run("mineOS/settings")  -- Run the settings script
  os.sleep(2)
  mainMenu()
end

local function uninstall()
  clearScreen()
  print("Uninstalling...")
  shell.run("mineOS/uninst")  -- Run the uninstall script
  os.sleep(2)
  clearScreen()
  print("Uninstallation complete.")
  os.sleep(1)
  os.reboot()
end

local function mainMenu()
  clearScreen()
  local selectedItem = 1
  
  while true do
    drawButton(10, 8, "App Store", selectedItem == 1)
    drawButton(10, 10, "Settings", selectedItem == 2)
    drawButton(10, 12, "Uninstall", selectedItem == 3)
    
    local event, key = os.pullEvent("key")
    
    if key == keys.w and selectedItem > 1 then
      selectedItem = selectedItem - 1
    elseif key == keys.s and selectedItem < 3 then
      selectedItem = selectedItem + 1
    elseif key == keys.enter then
      if selectedItem == 1 then
        appStore()
      elseif selectedItem == 2 then
        settings()
      elseif selectedItem == 3 then
        uninstall()
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

local success, errorMessage = pcall(function()
  print(undefinedVariable)
  end)
if not success then
  print("An error occurred: " .. errorMessage)
  os.sleep(2)  -- Add a delay for user to read the error message
  os.shutdown()
end
