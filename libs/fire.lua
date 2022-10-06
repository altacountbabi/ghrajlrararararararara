lib = {}
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
    fireproximityprompt(prompt, math.huge)
end

function lib.touch(part)
    local head = char:WaitForChild('HumanoidRootPart')
    firetouchinterest(head, part, 0)
    run.RenderStepped:Wait()
    firetouchinterest(head, part, 1)
end

function lib.click(clickdetector)
    fireclickdetector(clickdetector, math.huge)
end

return lib