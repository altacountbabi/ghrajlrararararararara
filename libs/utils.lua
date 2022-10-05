lib = {}
local dependencies = {}

for _,dependency in next, dependencies do if not dependency then return 'libs\\sb.lua' end end
local plrs = game:GetService('Players')
local run = game:GetService('RunService')
local rs = game:GetService('ReplicatedStorage')
local lp = plrs.LocalPlayer
local char = lp.Character or workspace:WaitForChild(lp.Name)

function lib.tp(cf)
    char:SetPrimaryPartCFrame(cf)
end

function lib.reset()
    char.Humanoid.Health = 0
end


function lib.spawn()
    
end

return lib