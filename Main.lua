if not getgenv().FlameExecuted then
    getgenv().FlameExecuted = true

    loadstring(game:HttpGet("https://raw.githubusercontent.com/EzWinsV4/FlameForRobloxRivals/refs/heads/main/Aimlock.lua", true))()
    task.wait(0.5)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EzWinsV4/FlameForRobloxRivals/refs/heads/main/ESP.lua", true))()
    task.wait(0.5)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EzWinsV4/FlameForRobloxRivals/refs/heads/main/Speed.lua", true))()
    task.wait(0.5)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EzWinsV4/FlameForRobloxRivals/refs/heads/main/Flame.lua", true))()

    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Flame 2.0", 
        Text = "Flame for Rivals Script Executed!", 
        Duration = 4, 
        Button1 = "Cool"
    })
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "!Error:", 
        Text = "Script has already been executed!", 
        Duration = 4
    })
end
