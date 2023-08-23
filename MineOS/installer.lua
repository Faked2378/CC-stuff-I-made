while true do
    local event, key = os.pullEvent("key")
    
    -- 'event' will be "key" and 'key' will hold the key code of the pressed key
    print("Key pressed: " .. key)
    
    if key == keys.q then
        print("Exiting program.")
        break
    end
end
