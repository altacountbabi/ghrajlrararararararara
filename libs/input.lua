lib = {}
local dependencies = {}

for _,dependency in next, dependencies do if not dependency then return 'libs\\fire.lua' end end
local vim = game:GetService('VirtualInputManager')


function lib.hold(key, time)
    vim:SendKeyEvent(true, key, false, nil)
    task.wait(time)
    vim:SendKeyEvent(false, key, false, nil)
end

function lib.press(key)
    vim:SendKeyEvent(true, key, false, nil)
    task.wait(0.005)
    vim:SendKeyEvent(false, key, false, nil)
end

return lib