local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain

game:GetService("RunService"):Set3dRenderingEnabled(false)
settings().Physics.PhysicsEnvironmentalThrottle = 1
settings().Rendering.QualityLevel = 'Level01'
UserSettings():GetService('UserGameSettings').MasterVolume = 0

t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0

for i,v in pairs(g:GetDescendants()) do
	if v:IsA("Part") or v:IsA("Union") or v:IsA("MeshPart") then
		v.Material = "Plastic"
	v.Reflectance = 0
elseif v:IsA("Decal") then 
    v:Destroy()
elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then 
    v.Lifetime = NumberRange.new(0)
	end
end
