if gethui and gethui():FindFirstChild("MeMeRLoader") or game:GetService("CoreGui"):FindFirstChild("MeMeRLoader") then return end

getgenv().SCRIPT_KEY = "KEYLESS"

local Supports = {
    ["Universal"] = "https://api.jnkie.com/api/v1/luascripts/public/a9e00cedd687fac9d26e77390a27e173b5fa4dbe2e5aaa0803905e59f4a199d5/download",
    ["ExploitAbuse"] = "https://api.jnkie.com/api/v1/luascripts/public/9dae75b0ab38bc880f9b187ad31f68a26cdc7c2820ac95a9e55f9214a9cc9806/download",
}

local ScriptLink = Supports[tostring(game.PlaceId)] or Supports["Universal"]
getgenv().MeMeRStorage = "https://raw.githubusercontent.com/MeMeZLand/MeMeR/refs/heads/main/"
local Announcement = loadstring(game:HttpGet(getgenv().MeMeRStorage.."ScriptInfo.lua"))().Announcement

local TweenService = game:GetService("TweenService")
local fadeTweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local btnHoverTweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad)

local MeMeRLoader = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local StatusBar = Instance.new("Frame")
local ExecutorName = Instance.new("TextLabel")
local ContentArea = Instance.new("Frame")
local Content = Instance.new("TextLabel")
local BtnArea = Instance.new("Frame")
local ConfirmBtn = Instance.new("TextButton")
local CancelBtn = Instance.new("TextButton")
local ExploitBtn = Instance.new("TextButton")

MeMeRLoader.Name = "MeMeRLoader"
MeMeRLoader.Parent = gethui and gethui() or game:GetService("CoreGui")
MeMeRLoader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = MeMeRLoader
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.BorderColor3 = Color3.fromRGB(102, 102, 102)
MainFrame.BorderSizePixel = 2
MainFrame.ClipsDescendants = true
MainFrame.Position = UDim2.new(0.5, -275, 0.5, -110)
MainFrame.Size = UDim2.new(0, 550, 0, 220)

StatusBar.Name = "StatusBar"
StatusBar.Parent = MainFrame
StatusBar.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
StatusBar.BorderColor3 = Color3.fromRGB(102, 102, 102)
StatusBar.Size = UDim2.new(1, 0, 0, 35)

ExecutorName.Name = "ExecutorName"
ExecutorName.Parent = StatusBar
ExecutorName.BackgroundTransparency = 1.000
ExecutorName.Position = UDim2.new(0, 10, 0, 0)
ExecutorName.Size = UDim2.new(0.699999988, 0, 1, 0)
ExecutorName.Font = Enum.Font.SourceSans
ExecutorName.Text = "GB老爹模拟器"
ExecutorName.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecutorName.TextSize = 16.000
ExecutorName.TextXAlignment = Enum.TextXAlignment.Left

ContentArea.Name = "ContentArea"
ContentArea.Parent = MainFrame
ContentArea.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ContentArea.BorderColor3 = Color3.fromRGB(102, 102, 102)
ContentArea.Position = UDim2.new(0, 0, 0, 35)
ContentArea.Size = UDim2.new(1, 0, 0, 145)

Content.Name = "Content"
Content.Parent = ContentArea
Content.BackgroundTransparency = 1.000
Content.Position = UDim2.new(0, 10, 0, 15)
Content.Size = UDim2.new(1, -20, 0.241379306, 80)
Content.Font = Enum.Font.SourceSans
Content.Text = Announcement
Content.TextColor3 = Color3.fromRGB(204, 204, 204)
Content.TextSize = 14.000
Content.TextWrapped = true
Content.TextXAlignment = Enum.TextXAlignment.Left
Content.TextYAlignment = Enum.TextYAlignment.Top

BtnArea.Name = "BtnArea"
BtnArea.Parent = MainFrame
BtnArea.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
BtnArea.BorderColor3 = Color3.fromRGB(102, 102, 102)
BtnArea.Position = UDim2.new(0, 0, 1, -40)
BtnArea.Size = UDim2.new(1, 0, 0, 40)

ConfirmBtn.Name = "ConfirmBtn"
ConfirmBtn.Parent = BtnArea
ConfirmBtn.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
ConfirmBtn.BorderColor3 = Color3.fromRGB(102, 102, 102)
ConfirmBtn.Position = UDim2.new(1, -130, 0.5, -15)
ConfirmBtn.Size = UDim2.new(0, 120, 0, 30)
ConfirmBtn.Font = Enum.Font.SourceSans
ConfirmBtn.Text = "加载正常版本"
ConfirmBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ConfirmBtn.TextSize = 16.000
ConfirmBtn.AutoButtonColor = false

CancelBtn.Name = "CancelBtn"
CancelBtn.Parent = BtnArea
CancelBtn.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
CancelBtn.BorderColor3 = Color3.fromRGB(102, 102, 102)
CancelBtn.Position = UDim2.new(1, -260, 0.5, -15)
CancelBtn.Size = UDim2.new(0, 120, 0, 30)
CancelBtn.Font = Enum.Font.SourceSans
CancelBtn.Text = "取消加载"
CancelBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CancelBtn.TextSize = 16.000
CancelBtn.AutoButtonColor = false

ExploitBtn.Name = "ExploitBtn"
ExploitBtn.Parent = BtnArea
ExploitBtn.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
ExploitBtn.BorderColor3 = Color3.fromRGB(102, 102, 102)
ExploitBtn.Position = UDim2.new(0.25454545, -130, 0.5, -15)
ExploitBtn.Size = UDim2.new(0, 120, 0, 30)
ExploitBtn.Font = Enum.Font.SourceSans
ExploitBtn.Text = "加载漏洞利用版本"
ExploitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExploitBtn.TextSize = 16.000
ExploitBtn.AutoButtonColor = false

--ExploitBtn.Visible = false

local function handleBtnHover(btn, isEnter)
    local targetColor = isEnter and Color3.fromRGB(85, 85, 85) or Color3.fromRGB(63, 63, 63)
    TweenService:Create(btn, btnHoverTweenInfo, {BackgroundColor3 = targetColor}):Play()
end

local function closeUI()
    local fadeTween = TweenService:Create(MainFrame, fadeTweenInfo, {Transparency = 1})
    fadeTween:Play()
    fadeTween.Completed:Connect(function()
        MeMeRLoader:Destroy()
    end)
end

CancelBtn.MouseButton1Click:Connect(function()
    closeUI()
end)

ConfirmBtn.MouseButton1Click:Connect(function()
    closeUI()
    loadstring(game:HttpGet(ScriptLink))()
end)

ExploitBtn.MouseButton1Click:Connect(function()
    closeUI()
    loadstring(game:HttpGet(Supports["ExploitAbuse"]))()
end)

CancelBtn.MouseEnter:Connect(function() handleBtnHover(CancelBtn, true) end)
CancelBtn.MouseLeave:Connect(function() handleBtnHover(CancelBtn, false) end)
ConfirmBtn.MouseEnter:Connect(function() handleBtnHover(ConfirmBtn, true) end)
ConfirmBtn.MouseLeave:Connect(function() handleBtnHover(ConfirmBtn, false) end)
ExploitBtn.MouseEnter:Connect(function() handleBtnHover(ExploitBtn, true) end)
ExploitBtn.MouseLeave:Connect(function() handleBtnHover(ExploitBtn, false) end)
