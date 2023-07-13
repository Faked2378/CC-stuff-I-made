fs.delete("startup.lua")

while true do

local VF = fs.open("startup.lua", "w")

local VS = [[
 local y = 1
 term.clear()
 while true do
  for y = 1, 10 do
   term.setCursorPos(1, y)
   print("ShuttyDowny Has been doing stuff")
   os.sleep(0.7)
   term.setCursorPos(1, y + 1)
   print("ShuttyDowny Has been doing stuff")
   if y > 10 then
     term.clear()
     os.shutdown()
   end
  end
 end
]]

VF.write(VS)
VF.close()

shell.run("startup.lua")

local event, key = os.pullEventRaw()

end
