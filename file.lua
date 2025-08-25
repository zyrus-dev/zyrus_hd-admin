local CollectionService = game:GetService("CollectionService");
local Players = game:GetService("Players")
local G2L = {};

-- Cria a ScreenGui
G2L["ScreenGui_1"] = Instance.new("ScreenGui")
G2L["ScreenGui_1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
G2L["ScreenGui_1"].Parent = Players.LocalPlayer:WaitForChild("PlayerGui")

CollectionService:AddTag(G2L["ScreenGui_1"], [[main]])

-- Frame principal
G2L["GUI_2"] = Instance.new("Frame", G2L["ScreenGui_1"]);
G2L["GUI_2"]["BorderSizePixel"] = 0;
G2L["GUI_2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["GUI_2"]["Size"] = UDim2.new(0.2901, 0, 0.4647, 0);
G2L["GUI_2"]["Position"] = UDim2.new(0.35392, 0, 0.22866, 0);
G2L["GUI_2"]["Name"] = [[GUI]];

G2L["UICorner_3"] = Instance.new("UICorner", G2L["GUI_2"]);

-- Botão Update
G2L["update_4"] = Instance.new("TextButton", G2L["GUI_2"]);
G2L["update_4"]["BorderSizePixel"] = 0;
G2L["update_4"]["BackgroundColor3"] = Color3.fromRGB(0, 255, 39);
G2L["update_4"]["Size"] = UDim2.new(0.39, 0, 0.2381, 0);
G2L["update_4"]["Text"] = [[Update]];
G2L["update_4"]["Name"] = [[update]];
G2L["update_4"]["Position"] = UDim2.new(0.31, 0, 0.66667, 0);

G2L["UICorner_5"] = Instance.new("UICorner", G2L["update_4"]);

-- Texto título
G2L["titulo_6"] = Instance.new("TextLabel", G2L["GUI_2"]);
G2L["titulo_6"]["TextWrapped"] = true;
G2L["titulo_6"]["BorderSizePixel"] = 0;
G2L["titulo_6"]["TextSize"] = 10;
G2L["titulo_6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["titulo_6"]["BackgroundTransparency"] = 1;
G2L["titulo_6"]["Size"] = UDim2.new(1, 0, 0.15873, 0);
G2L["titulo_6"]["Text"] = [[Nova Atualização Disponível]];
G2L["titulo_6"]["Name"] = [[titulo]];

-- Texto mensagem
G2L["Mensagem_7"] = Instance.new("TextLabel", G2L["GUI_2"]);
G2L["Mensagem_7"]["TextWrapped"] = true;
G2L["Mensagem_7"]["BorderSizePixel"] = 0;
G2L["Mensagem_7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Mensagem_7"]["Size"] = UDim2.new(0.96, 0, 0.34921, 0);
G2L["Mensagem_7"]["Text"] = [[Nova Atualização disponível, deseja baixar a atualização (2.0)?]];
G2L["Mensagem_7"]["Name"] = [[Mensagem]];
G2L["Mensagem_7"]["Position"] = UDim2.new(0.03, 0, 0.2381, 0);

-- Linha separadora
G2L["Frame_8"] = Instance.new("Frame", G2L["GUI_2"]);
G2L["Frame_8"]["BorderSizePixel"] = 0;
G2L["Frame_8"]["BackgroundColor3"] = Color3.fromRGB(87, 87, 87);
G2L["Frame_8"]["Size"] = UDim2.new(0.94, 0, 0.01587, 0);
G2L["Frame_8"]["Position"] = UDim2.new(0.03, 0, 0.15873, 0);

G2L["UICorner_9"] = Instance.new("UICorner", G2L["Frame_8"]);

G2L["UIAspectRatioConstraint_a"] = Instance.new("UIAspectRatioConstraint", G2L["GUI_2"]);
G2L["UIAspectRatioConstraint_a"]["AspectRatio"] = 1.5873;

-- 📥 Evento do botão Update
G2L["update_4"].MouseButton1Click:Connect(function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Info",
    Text = "Aguarde..",
    Duration = 5
})
wait(5)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Info",
    Text = "Aguarde..",
    Duration = 5
})
wait(5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/zyrus-dev/cmds.2.0/refs/heads/main/file.lua"))()

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Zyrus HD ADMIN",
    Text = "by @Zyrus_Dev",
    Duration = 5
})
    G2L["ScreenGui_1"]:Destroy() -- Remove a GUI da tela
end)

return G2L["ScreenGui_1"]
