game.RunService.RenderStepped:Connect(function()
        local plr = game.Players.LocalPlayer
		local workspace = game.Workspace
		local char = plr.Character
        player.CharacterAdded:Connect(function(CHAR)
	        char = CHAR
        end)
		local plrRoot = plr.Character.HumanoidRootPart
		local mouse = game.Players.LocalPlayer:GetMouse()
		local RS = game.RunService

		local A = {}
		local B = {}
		local C = {}

		for i,v in pairs(workspace:GetChildren()) do
			if v.Name == "Basketball" and v:IsA("Part") then
				table.insert(A, v)
			end
		end

		for index, ball in pairs(A) do
			distance = (plrRoot.Position - ball.Position).magnitude
			table.insert(B, distance)
		end

		local closest_target = math.min(unpack(B))

		for i,v in pairs(workspace:GetChildren()) do
			if v.Name == "Basketball" and v:IsA("Part") and (char.HumanoidRootPart.Position - v.Position).magnitude == closest_target then
				selection = v
			end
		end

		local ball = selection
		local connection = char.LeftHand
		local connection2 = char.RightHand
		local connection3 = char.HitBox
		local connection4 = char.LeftUpperArm
		local connection5 = char.RightUpperArm
		local connection6 = char.LeftLowerArm
		local connection7 = char.RightLowerArm
		local connection8 = char.UpperTorso
		local connection9 = char.LowerTorso

		firetouchinterest(connection2, ball, 0)
		firetouchinterest(connection2, ball, 1)
		wait()
		firetouchinterest(connection, ball, 0)
		firetouchinterest(connection, ball, 1)
		wait()
		firetouchinterest(connection3, ball, 0)
		firetouchinterest(connection3, ball, 1)
		wait()
		firetouchinterest(connection4, ball, 0)
		firetouchinterest(connection4, ball, 1)
		wait()
		firetouchinterest(connection5, ball, 0)
		firetouchinterest(connection5, ball, 1)
		wait()
		firetouchinterest(connection6, ball, 0)
		firetouchinterest(connection6, ball, 1)
		wait()
		firetouchinterest(connection7, ball, 0)
		firetouchinterest(connection7, ball, 1)
		wait()
		firetouchinterest(connection8, ball, 0)
		firetouchinterest(connection8, ball, 1)
end)

