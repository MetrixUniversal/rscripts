local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local velocity = 1e9

mouse.Button1Down:Connect(function()
	local character = player.Character or player.CharacterAdded:Wait()
	local rootPart = character:WaitForChild("HumanoidRootPart")
	local destination = mouse.Hit.Position + Vector3.new(0, 3, 0)
	local direction = destination - rootPart.Position
	local velocityVector = direction.Magnitude > 0 and (direction.Unit * velocity) or Vector3.zero

	character:PivotTo(CFrame.new(destination))
	rootPart.AssemblyLinearVelocity = velocityVector
end)
