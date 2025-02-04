local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local speed = 2
local speeding = true
local toggleKey = Enum.KeyCode.B

task.spawn(function()
    while true do
        local player = Players.LocalPlayer
        local char = player.Character or player.CharacterAdded:Wait()
        local humanoid = char:FindFirstChildWhichIsA("Humanoid")

        if humanoid then
            while speeding and char and humanoid and humanoid.Parent do
                local delta = RunService.Heartbeat:Wait()

                if humanoid.MoveDirection.Magnitude > 0 then
                    char:TranslateBy(humanoid.MoveDirection * speed * delta * 10)
                end
            end
        end
        task.wait(1)
    end
end)

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == toggleKey then
        speeding = not speeding
        local state = speeding and "Enabled" or "Disabled"
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Flame", 
            Text = "Speed " .. state,
            Duration = 2,
        })
    end
end)

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Flame", 
    Text = "Speed Loaded // B to toggle",
    Duration = 2,
})
