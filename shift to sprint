local player = game.Players.LocalPlayer
local humanoid = player.Character:WaitForChild("Humanoid")


local speed = 16 -- Default walk speed
local sprintSpeed = 32
local userInputService = game:GetService("UserInputService")

userInputService.InputBegan:Connect(function(input, gameProcessed)
	if not gameProcessed and input.KeyCode == Enum.KeyCode.LeftShift then
		humanoid.WalkSpeed = sprintSpeed
	end
end)

userInputService.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		humanoid.WalkSpeed = speed
	end
end)


