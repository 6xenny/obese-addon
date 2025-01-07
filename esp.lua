local ESPLib = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/6xenny/ESP-Library/refs/heads/main/Kiriot%20ESP%20Library%20Modified.lua"))("Kiriot ESP Lib Go Brr!")

local ESP = ObeseAddons:Section({Name = "ESP Visuals", Side = "Left"})

ESP:Toggle({
	Name = "ESP",
	Default = false,
	CallBack = function(Bool)
		ESPLib:Toggle(Bool)			
	end,
})
ESP:Toggle({
	Name = "Use Render Value",
	State = false,
	CallBack = function(Bool)
		ESPLib.UseRenderValue = Bool
	end,
})
ESP:Slider({
	Name = "Render Value",
	Suffix = "",
	Min = 0,
	Max = 2000,
	Default = 50,
	CallBack = function(Value)
		ESPLib.RenderValue = Value
	end,
})
ESP:Toggle({
	Name = "ESP Players",
	State = true,
	CallBack = function(Bool)
		ESPLib.Players = Bool
	end,
})
ESP:Toggle({
	Name = "Use Player Distance",
	State = false,
	CallBack = function(Bool)
		ESPLib.UseMeDistance = Bool
	end,
})
ESP:Slider({
	Name = "Player Distance",
	Suffix = "",
	Min = 0,
	Max = 25000,
	Default = 5000,
	CallBack = function(Value)
		ESPLib.MaxMeDistance = Value
	end,
})
ESP:Toggle({
	Name = "Health",
	State = false,
	CallBack = function(Bool)
		ESPLib.Health = Bool
	end,
})
ESP:Toggle({
	Name = "Items",
	State = false,
	CallBack = function(Bool)
		ESPLib.Items = Bool
	end,
})
ESP:Toggle({
	Name = "Distance",
	State = false,
	CallBack = function(Bool)
		ESPLib.Distance = Bool
	end,
})
ESP:Toggle({
	Name = "Team Mates",
	State = true,
	CallBack = function(Bool)
		ESPLib.TeamMates = Bool
	end,
})
ESP:Toggle({
	Name = "Team Color",
	State = false,
	CallBack = function(Bool)
		ESPLib.TeamColor = Bool
	end,
})
ESP:Toggle({
	Name = "Boxes",
	State = false,
	CallBack = function(Bool)
		ESPLib.Boxes = Bool
	end,
})
ESP:Toggle({
	Name = "Chams",
	State = false,
	CallBack = function(Bool)
		ESPLib.Chams = Bool
	end,
})
ESP:Slider({
	Name = "Transparency",
	Suffix = "",
	Min = 0,
	Max = 1,
	Default = .5,
	Decimals = .1,
	CallBack = function(Value)
		ESPLib.ChamsTransparency = Value
	end,
})
ESP:Slider({
	Name = "Outline Transparency",
	Suffix = "",
	Min = 0,
	Max = 1,
	Default = 0,
	Decimals = .1,
	CallBack = function(Value)
		ESPLib.ChamsOutlineTransparency = Value
	end,
})
ESP:Toggle({
	Name = "Tracers",
	State = false,
	CallBack = function(Bool)
		ESPLib.Tracers = Bool
	end,
})
ESP:List({
	Name = "Origin",
	Options = { "Bottom", "Mouse" },
	Default = "Bottom",
	CallBack = function(Value)
		ESPLib.Origin = Value
	end,
})
