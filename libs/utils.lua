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
    local gloves = {
        default = "Default",
        diamond = "Diamond",
        zzzzzzz = "ZZZZZZZ",
        extended = "Extended",
        brick = "Brick",
        snow = "Snow",
        pull = "Pull",
        flash = "Flash",
        spring = "Spring",
        swapper = "Swapper",
        bull = "Bull",
        dice = "Dice",
        ghost = "Ghost",
        thanos = "Thanos",
        stun = "Stun",
        zaHando = "ZaHando",
        fort = "Fort",
        magnet = "Magnet",
        pusher = "Pusher",
        anchor = "Anchor",
        space = "Space",
        boomerang = "Boomerang",
        dream = "Dream",
        mail= "Mail",
        thick= "T H I C K",
        golden= "Golden",
        cheeky= "Cheeky",
        reaper= "Reaper",
        replica= "Replica",
        defense= "Defense",
        killstreak= "KillStreak",
        reverse= "Reverse",
        shukuchi= "Shukuchi",
        duelist= "Duelist",
        woah= "woah",
        ice= "Ice",
        adios= "Adios",
        blocked= "Blocked",
        engineer= "Engineer",
        rocky= "Rocky",
        conveyor= "Conveyor",
        phantom= "Phantom",
        wormhole= "WormHole",
        stop= "STOP",
        godsHand= "GodsHand",
        flex = "Flex"
    }

    local stands = workspace:WaitForChild('Lobby'):WaitForChild('GloveStands')
    for index, value in next, gloves do
        if tostring(index:lower()):match(glove:lower()) then
            local stand = stands[value]
            local slaps = tonumber(stand:WaitForChild('SlapsInfoPart'):WaitForChild('SurfaceGui'):WaitForChild('TextLabel').Text)
            if slaps > lib.getSlaps() then return false else return true end
        end
    end
end

function lib.setGlove(glove)
    if lib.canEquipGlove(glove) then
        local gloves = {
            default = "DefaultGlove",
            diamond = "DiamondGlove",
            zzzzzzz = "ZZZZZZZ",
            extended = "Extended",
            brick = "Brick",
            snow = "Snow",
            pull = "Pull",
            flash = "Flash",
            spring = "Spring",
            swapper = "Swapper",
            bull = "Bull",
            dice = "Dice",
            ghost = "Ghost",
            thanos = "Thanos",
            stun = "Stun",
            zaHando = "ZaHando",
            fort = "Fort",
            magnet = "Magnet",
            pusher = "Pusher",
            anchor = "Anchor",
            space = "Space",
            boomerang = "Boomerang",
            dream = "Dream",
            mail= "Mail",
            thick= "T H I C K",
            golden= "Golden",
            cheeky= "Cheeky",
            reaper= "Reaper",
            replica= "Replica",
            defense= "Defense",
            killstreak= "KillStreak",
            reverse= "Reverse",
            shukuchi= "Shukuchi",
            duelist= "Duelist",
            woah= "woah",
            ice= "Ice",
            adios= "Adios",
            blocked= "Blocked",
            engineer= "Engineer",
            rocky= "Rocky",
            conveyor= "Conveyor",
            phantom= "Phantom",
            wormhole= "WormHole",
            stop= "STOP",
            godsHand= "GodsHand",
            flex = "Flex"
        }

        for index, value in next, gloves do
            if tostring(index:lower()):match(glove:lower()) then
                local stand = workspace:WaitForChild('Lobby')[value]
                libs.firing.click(stand:FindFirstChildOfClass('ClickDetector'))
            end
        end
    end
end

function lib.isAlive()
    if char.Humanoid.Health == 0 then return false else return true end
end

function lib.spawn()
    lib.tp(workspace:WaitForChild('Lobby'):WaitForChild('Teleport1').CFrame)
end


return lib