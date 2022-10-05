local srv = {
    plrs = game:GetService('Players'),
    run = game:GetService('RunService'),
    rs = game:GetService('ReplicatedStorage')
}

local lp = srv.plrs.LocalPlayer
local mouse = lp:GetMouse()
local char = lp.Character or workspace:WaitForChild(lp.Name)

function loadLib(name)
    local github = 'https://github.com/altacountbabi/ghrajlrararararararara/blob/main/libs/'..name..'.lua'
    return loadstring(game:HttpGet(github))()
end


local libs = {
    fire = loadLib('fire'),
    input = loadLib('input'),
    utils = loadLib('utils')
}

libs.utils.setGlove('Killstreak')