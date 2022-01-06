-- Gui to Lua
-- Version: 3.2

-- Instances:

local b = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")

--Properties:

b.Name = "b"
b.Parent = game.CoreGui
b.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = b
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.Position = UDim2.new(0.271589905, 0, 0.149572074, 0)
main.Size = UDim2.new(0, 536, 0, 545)

ImageLabel.Parent = main
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Position = UDim2.new(0.0018656716, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 535, 0, 545)
ImageLabel.Image = "http://www.roblox.com/asset/?id=8258885486"

-- Scripts:

local function XPXWKBI_fake_script() -- b.LocalScript 
	local script = Instance.new('LocalScript', b)

	local UIS = game:GetService('UserInputService')
	local frame = b.main
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(XPXWKBI_fake_script)()
local function PLWAW_fake_script() -- b.LocalScript 
	local script = Instance.new('LocalScript', b)

	player = game.Players.LocalPlayer
	
	player:GetMouse().KeyDown:Connect(function(key)
		if key == "z" and b.main.Visible == false then
			b.main.Visible = true
		else
			if key == "x" and b.main.Visible == true then
				b.main.Visible = false
			end
		end
	end)
end
coroutine.wrap(PLWAW_fake_script)()
