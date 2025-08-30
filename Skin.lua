local ScreenGui=Instance.new("ScreenGui",game.Players.LocalPlayer:WaitForChild("PlayerGui"))
local Frame=Instance.new("Frame",ScreenGui)
Frame.Size=UDim2.new(0,200,0,120)
Frame.Position=UDim2.new(0.5,-100,0.5,-60)
local Toggle=Instance.new("TextButton",ScreenGui)
Toggle.Size=UDim2.new(0,100,0,40)
Toggle.Position=UDim2.new(0.5,-50,1,-50)
Toggle.Text="Меню"
local TextBox=Instance.new("TextBox",Frame)
TextBox.Size=UDim2.new(0.8,0,0,30)
TextBox.Position=UDim2.new(0.1,0,0.2,0)
TextBox.PlaceholderText="Нікнейм"
local Apply=Instance.new("TextButton",Frame)
Apply.Size=UDim2.new(0.6,0,0,30)
Apply.Position=UDim2.new(0.2,0,0.6,0)
Apply.Text="Приміряти"
Frame.Visible=false
Toggle.MouseButton1Click:Connect(function()Frame.Visible=not Frame.Visible end)
Apply.MouseButton1Click:Connect(function()
local target=game.Players:FindFirstChild(TextBox.Text)
if target and target.Character and game.Players.LocalPlayer.Character then
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren())do
if v:IsA("Accessory")or v:IsA("Clothing")or v:IsA("ShirtGraphic")then v:Destroy()end
end
for _,v in pairs(target.Character:GetChildren())do
if v:IsA("Accessory")or v:IsA("Clothing")or v:IsA("ShirtGraphic")then v:Clone().Parent=game.Players.LocalPlayer.Character end
end
end
end)
