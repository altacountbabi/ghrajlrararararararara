local srv = {
    plrs = game:GetService('Players'),
    run = game:GetService('RunService'),
    rs = game:GetService('ReplicatedStorage')
}

function loadLib(name) local github = 'https://raw.githubusercontent.com/altacountbabi/ghrajlrararararararara/main/libs/'..name..'.lua' return loadstring(game:HttpGet(github))() end
local lp = srv.plrs.LocalPlayer
local mouse = lp:GetMouse()
local char = lp.Character or workspace:WaitForChild(lp.Name)
local libs = {
    fire = loadLib('fire'),
    input = loadLib('input'),
    utils = loadLib('utils2')
}