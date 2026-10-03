-- 你好呀
local currentGameId = game.GameId

-- Part 2 支持的游戏
local PART2_EXCLUSIVE = {
    [4938220315] = "Skibi Defense",
}

-- Part 1 支持的游戏
local PART1_SUPPORTED = {
    [5329077236]  = "Skibidi Tower Defense",
    [5049569843]  = "Titan Tower Defense",
    [7703614594]  = "Garden Tower Defense",
    [4778845442]  = "Toilet Tower Defense",
    [6375110339]  = "Skibidi Toilet Blockade Battlefront",
    [10016841656] = "Noob Tower Defense",
}

if PART2_EXCLUSIVE[currentGameId] then
    print("检测到 " .. PART2_EXCLUSIVE[currentGameId] .. " → 加载 Part 2")
    loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/748a0891000025d866c45be36b559909.lua"))()

elseif PART1_SUPPORTED[currentGameId] then
    print("检测到 " .. PART1_SUPPORTED[currentGameId] .. " → 加载 Part 1")
    loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/6c6b6770599c9d28aaa925b64eaea97e.lua"))()

else
    warn("不支持的游戏 ID: " .. currentGameId)
end
