local githubUrl = "https://raw.githubusercontent.com/<username>/<repository>/<branch>/<path-to-file>"
local localFilePath = "<name>"

local response = http.get(githubUrl)
local menuCode = "reMpHkBb"
local settingsCode = "uReswmYn"
local uninDIR = "https://raw.githubusercontent.com/Faked2378/CC-stuff-I-made/main/MineOS/1-0/graphic/uninst.lua"
fs.delete("mineOS")
-- Download and execute the menu script
if shell.run("pastebin", "get", menuCode, "mineOS/Graphiti") then
  print("Graphiti downloaded successfully (25% done)")
  
  -- Download and execute the settings script
  if shell.run("pastebin", "get", settingsCode, "mineOS/settings") then
    print("Settings downloaded successfully (40% done)")
    
    -- Download and execute the uninstall script
    if shell.run("wget", uninDIR, "mineOS/uninst") then
      print("Uninstall script downloaded successfully (90% done)")
      
      print("Performing final touches")
      fs.delete("startup")
      shell.run("wget", "https://raw.githubusercontent.com/Faked2378/CC-stuff-I-made/main/MineOS/1-0/graphic/startup.lua", "startup.lua")
      os.sleep(7)
      term.clear()
      print("Installation done")
      os.sleep(3)
      term.clear()
    else
      print("Failed to download uninstall script")
    end
  else
    print("Failed to download settings script")
  end
else
  print("Failed to download menu script")
end
