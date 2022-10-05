lib = {}
local dependencies = {}

for _,dependency in next, dependencies do if not dependency then return 'libs\\sb.lua' end end
local plrs = game:GetService('Players')
local run = game:GetService('RunService')
local rs = game:GetService('ReplicatedStorage')
local lp = plrs.LocalPlayer
local char = lp.Character or workspace:WaitForChild(lp.Name)
function loadLib(name) local github = 'https://raw.githubusercontent.com/altacountbabi/ghrajlrararararararara/main/libs/'..name..'.lua' return loadstring(game:HttpGet(github))() end
local libs = {
    firing = loadLib('fire'),
    input = loadLib('input')
}


function lib.tp(cf)
    char:SetPrimaryPartCFrame(cf)
end

function lib.reset()
    char.Humanoid.Health = 0
end

function lib.getGlove()
    return lp:WaitForChild('leaderstats').Glove.Value
end

function lib.getSlaps()
    return lp:WaitForChild('leaderstats').Slaps.Value
end

function lib.canEquipGlove(glove)
    local stands = workspace:WaitForChild('Lobby'):WaitForChild('GloveStands')
    local stand = stands[glove]
    local slaps = tonumber(stand:WaitForChild('SlapsInfoPart'):WaitForChild('SurfaceGui'):WaitForChild('TextLabel').Text)
    if slaps > lib.getSlaps() then
        return false
    else
        return true
    end
end

function lib.setGlove(glove)
    if lib.canEquipGlove(glove) then
        libs.firing.click()
    end
end

function lib.isAlive()
    if char.Humanoid.Health == 0 then
        return false
    else
        return true
    end
end


function lib.spawn()
    lib.tp(workspace:WaitForChild('Lobby'):WaitForChild('Teleport1').CFrame)
end

return lib