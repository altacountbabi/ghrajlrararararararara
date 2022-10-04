function loadLib(name)
    local github = 'https://raw.githubusercontent.com/altacountbabi/ghrajlrararararararara/main/libs/'..name..'.lua'
    return loadstring(game:HttpGet(github))()
end

local libs = {
    firing = loadLib('fire'),
    input = loadLib('input')
}

libs.input.press(Enum.KeyCode.Escape)