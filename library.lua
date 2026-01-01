-- Arthur UI Library
-- Autor: Arthur508555
-- Simples, leve e para iniciantes

local ArthurUI = {}

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- =========================
-- CREATE WINDOW
-- =========================
function ArthurUI:CreateWindow(title)
    local gui = Instance.new("ScreenGui")
    gui.Name = "ArthurUI"
    gui.Parent = player:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Parent = gui
    frame.Size = UDim2.new(0, 300, 0, 200)
    frame.Position = UDim2.new(0.5, -150, 0.5, -100)
    frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    frame.BorderSizePixel = 0
    frame.Active = true
    frame.Draggable = true

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Parent = frame
    titleLabel.Size = UDim2.new(1, 0, 0, 40)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.new(1, 1, 1)
    titleLabel.TextScaled = true

    local window = {}

    -- =========================
    -- CREATE TAB
    -- =========================
    function window:CreateTab(name)
        local tab = {}

        local container = Instance.new("Frame")
        container.Parent = frame
        container.Position = UDim2.new(0, 0, 0, 40)
        container.Size = UDim2.new(1, 0, 1, -40)
        container.BackgroundTransparency = 1

        -- =========================
        -- CREATE TOGGLE
        -- =========================
        function tab:CreateToggle(text, callback)
            local enabled = false

            local button = Instance.new("TextButton")
            button.Parent = container
            button.Size = UDim2.new(0, 260, 0, 40)
            button.Position = UDim2.new(0.5, -130, 0, 10)
            button.Text = text .. ": OFF"
            button.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
            button.TextColor3 = Color3.new(1,1,1)
            button.BorderSizePixel = 0
            button.TextScaled = true

            button.MouseButton1Click:Connect(function()
                enabled = not enabled

                if enabled then
                    button.Text = text .. ": ON"
                    button.BackgroundColor3 = Color3.fromRGB(60, 180, 60)
                else
                    button.Text = text .. ": OFF"
                    button.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
                end

                callback(enabled)
            end)
        end

        return tab
    end

    return window
end

return ArthurUI
