term.clear()
term.setCursorPos(1,1)
print("MineOS")
term.setCursorPos(1,2)
print("    graphical")
term.setCursorPos(1,3)
print("--> terminal")
term.setCursorPos(0,0)
while true do
    local event, key = os.pullEvent("key")
    if key == keys.up then
        if sel == "graph" then
            sel = "term"
        end
    end
    if key == keys.down then
        if sel == "term" then
            sel = "graph"
        end
    end
    if sel == "term" then
        term.setCursorPos(1,2)
        print("--> graphical")
        term.setCursorPos(1,3)
        print("    terminal")
        term.setCursorPos(0,0)
    end
    if sel == "graph" then
        term.setCursorPos(1,2)
        print("    graphical")
        term.setCursorPos(1,3)
        print("--> terminal")
        term.setCursorPos(0,0)
	end
	if key == keys.enter then
		if sel == "graph" then
			term.setCursorPos(1,5)
			print("graphical selected")
		end
		if sel == "term" then
			term.setCursorPos(1,5)
			print("terminal selected")
		end
	end
end
