--[[
=====================================
Arthur UI Library
=====================================

Autor: Arthur508555
Linguagem: Luau (Roblox)
Objetivo: Estudo / Iniciantes

-------------------------------------
O que é isso?
-------------------------------------
Arthur UI Library é uma UI Library simples
para Roblox, criada do zero para aprendizado.

-------------------------------------
Features
-------------------------------------
- CreateWindow
- CreateTab
- CreateToggle

-------------------------------------
Exemplo de uso
-------------------------------------

local ArthurUI = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/Arthur508555/ArthurUILibrary/main/library.lua"
))()

local window = ArthurUI:CreateWindow("Teste")
local tab = window:CreateTab("Main")

tab:CreateToggle("Exemplo", function(value)
    print("Toggle:", value)
end)

-------------------------------------
Observações
-------------------------------------
- Library simples
- Sem intenção de competir com Rayfield / Orion
- Feita para aprender

=====================================
]]
