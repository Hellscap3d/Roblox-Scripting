local camera = game.Workspace.CurrentCamera
local UStalk = Instance.new("ScreenGui")
local watch = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local back = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Intro = Instance.new("TextLabel")
local input = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")

--Properties:

UStalk.Name = "UStalk"
UStalk.Parent = game.CoreGui
UStalk.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

watch.Name = "watch"
watch.Parent = UStalk
watch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
watch.Position = UDim2.new(0.715039551, 0, 0.824758828, 0)
watch.Size = UDim2.new(0, 93, 0, 26)
watch.Visible = false
watch.Font = Enum.Font.SourceSans
watch.Text = "Watch"
watch.TextColor3 = Color3.fromRGB(0, 0, 0)
watch.TextSize = 14.000

UICorner.Parent = watch

back.Name = "back"
back.Parent = UStalk
back.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
back.Position = UDim2.new(0.846965671, 0, 0.824758828, 0)
back.Size = UDim2.new(0, 93, 0, 26)
back.Visible = false
back.Font = Enum.Font.SourceSans
back.Text = "Go back"
back.TextColor3 = Color3.fromRGB(0, 0, 0)
back.TextSize = 14.000

UICorner_2.Parent = back

Intro.Name = "Intro"
Intro.Parent = UStalk
Intro.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Intro.BackgroundTransparency = 1.000
Intro.BorderSizePixel = 0
Intro.Position = UDim2.new(0.129287645, 0, 0.20900321, 0)
Intro.Size = UDim2.new(0, 561, 0, 322)
Intro.Font = Enum.Font.SciFi
Intro.Text = "UStalk By AnonymousOne"
Intro.TextColor3 = Color3.fromRGB(0, 0, 0)
Intro.TextScaled = true
Intro.TextSize = 14.000
Intro.TextWrapped = true
local localplayer = game.Players.LocalPlayer
input.Name = "input"
input.Parent = UStalk
input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
input.Position = UDim2.new(0.715039551, 0, 0.877813458, 0)
input.Size = UDim2.new(0, 200, 0, 50)
input.Visible = false
input.Font = Enum.Font.SourceSans
input.PlaceholderText = "Player"
input.Text = ""
input.TextColor3 = Color3.fromRGB(0, 0, 0)
input.TextSize = 14.000

UICorner_3.Parent = input
wait(5)
Intro.Visible = false
watch.Visible = true
back.Visible = true
input.Visible = true
watch.MouseButton1Click:Connect(function()
	camera.CameraSubject = game.Workspace:WaitForChild(input.Text)
end)
back.MouseButton1Click:Connect(function()
	camera.CameraSubject = game.Workspace:WaitForChild(localplayer.Name)
end)
