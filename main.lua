local srv = {
    plrs = game:GetService('Players'),
    run = game:GetService('RunService'),
    rs = game:GetService('ReplicatedStorage')
}

local lp = srv.plrs.LocalPlayer
local mouse = lp:GetMouse()
local char = lp.Character or workspace:WaitForChild(lp.Name)

function loadLib(name)
    local github = 'https://raw.githubusercontent.com/altacountbabi/ghrajlrararararararara/main/libs/'..name..'.lua'
    return loadstring(game:HttpGet(github))()
end


local libs = {
    fire = loadLib('fire'),
    input = loadLib('input'),
    utils = loadLib('utils')
}

libs.utils.setGlove('diamond')

for i=0,5 do
    local cf = game.Players.LocalPlayer.Character.Head.CFrame
    for _,v in next, workspace.vendings:GetChildren() do
        if v:FindFirstChildOfClass('ProximityPrompt') then
            game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(v.CFrame)
            task.wait(0.21)
            fireproximityprompt(v:FindFirstChildOfClass('ProximityPrompt'), math.huge)
        end
    end
    task.wait()
    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(cf)
end