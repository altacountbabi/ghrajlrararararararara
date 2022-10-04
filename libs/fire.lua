local lib = {}
local dependencies = {
    firetouchinterest,
    fireproximityprompt,
    fireclickdetector
}

for _,dependency in next, dependencies do if not dependency then return 'libs\\fire.lua' end end
local plrs = game:GetService('Players')
local run = game:GetService('RunService')
local lp = plrs.LocalPlayer
local char = lp.Character or workspace:WaitForChild(lp.Name)


function lib.prompt(prompt)
    dependencies.fireproximityprompt(prompt, math.huge)
end

function lib.touch(part)
    local head = char:WaitForChild('HumanoidRootPart')
    dependencies.firetouchinterest(head, part, 0)
    run.RenderStepped:Wait()
    dependencies.firetouchinterest(head, part, 1)
end

function lib.click(clickdetector)
    dependencies.fireclickdetector(clickdetector)
end

return lib