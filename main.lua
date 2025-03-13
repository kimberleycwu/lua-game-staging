game = {}
windowX, windowY = 1440, 810
game.state = "play"
game.rotation = 0   -- stored in degrees (0-359)
game.mouseX = 0
game.mouseY = 0

-- ===== GAME.PIPES ====================
-- shift as necessary (costmetic)
pipeLocationScaleX = 103
pipeLocationScaleY = 110
-- set image scale (used in mousepressed and draw)
img_scale = 0.15

game.pipes = {
    -- PIPES 1 TO 6
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (windowX/7 - pipeLocationScaleX) + 164,
        y = windowY/4 - pipeLocationScaleY + 11,
        rotation = 270
    },
    {
        image = nil,
        file = "assets/i-pipe.png",
        x = (2*windowX/7 - pipeLocationScaleX) + 110,
        y = windowY/4 - pipeLocationScaleY + 11,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/t-pipe.png",
        x = (3*windowX/7 - pipeLocationScaleX) + 55,
        y = (windowY/4 - pipeLocationScaleY) + 11,
        rotation = 90
    },
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = 4*windowX/7 - pipeLocationScaleX,
        y = windowY/4 - pipeLocationScaleY + 11,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/i-pipe.png",
        x = (5*windowX/7 - pipeLocationScaleX) - 55,
        y = windowY/4 - pipeLocationScaleY + 11,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/t-pipe.png",
        x = (6*windowX/7 - pipeLocationScaleX) - 109,
        y = windowY/4 - pipeLocationScaleY + 11,
        rotation = 180
    },
    -- PIPES 7 TO 12
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (windowX/7 - pipeLocationScaleX) + 164,
        y = windowY/4 - pipeLocationScaleY + 163,
        rotation = 180
    },
    {
        image = nil,
        file = "assets/t-pipe.png",
        x = (2*windowX/7 - pipeLocationScaleX) + 110,
        y = windowY/4 - pipeLocationScaleY + 163,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/i-pipe.png",
        x = (3*windowX/7 - pipeLocationScaleX) + 55,
        y = windowY/4 - pipeLocationScaleY + 163,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/i-pipe.png",
        x = (5*windowX/7 - pipeLocationScaleX) - 55,
        y = windowY/4 - pipeLocationScaleY + 163,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (6*windowX/7 - pipeLocationScaleX) - 109,
        y = windowY/4 - pipeLocationScaleY + 163,
        rotation = 270
    },
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (7*windowX/7 - pipeLocationScaleX) - 164,
        y = windowY/4 - pipeLocationScaleY + 163,
        rotation = 0
    },
    -- PIPES 13 TO 19
    {
        image = nil,
        file = "assets/t-pipe.png",
        x = (windowX/7 - pipeLocationScaleX) + 164,
        y = windowY/4 - pipeLocationScaleY + 314,
        rotation = 90
    },
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (2*windowX/7 - pipeLocationScaleX) + 110,
        y = windowY/4 - pipeLocationScaleY + 314,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/t-pipe.png",
        x = (3*windowX/7 - pipeLocationScaleX) + 55,
        y = windowY/4 - pipeLocationScaleY + 314,
        rotation = 180
    },
    -- MIDDLE OF BOARD. DO NOT CHANGE POSITION
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = 4*windowX/7 - pipeLocationScaleX,
        y = windowY/4 - pipeLocationScaleY + 314,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (5*windowX/7 - pipeLocationScaleX) - 55,
        y = windowY/4 - pipeLocationScaleY + 314,
        rotation = 270
    },
    {
        image = nil,
        file = "assets/i-pipe.png",
        x = (6*windowX/7 - pipeLocationScaleX) - 109,
        y = windowY/4 - pipeLocationScaleY + 314,
        rotation = 90
    },
    {
        image = nil,
        file = "assets/t-pipe.png",
        x = (7*windowX/7 - pipeLocationScaleX) - 164,
        y = windowY/4 - pipeLocationScaleY + 314,
        rotation = 90
    },
    -- PIPES 20 TO 25
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (windowX/7 - pipeLocationScaleX) + 164,
        y = windowY/4 - pipeLocationScaleY + 465,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/i-pipe.png",
        x = (2*windowX/7 - pipeLocationScaleX) + 110,
        y = windowY/4 - pipeLocationScaleY + 465,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (3*windowX/7 - pipeLocationScaleX) + 55,
        y = windowY/4 - pipeLocationScaleY + 465,
        rotation = 90
    },
    -- XPIPE
    -- {
    --     image = nil,
    --     file = "assets/x-pipe.png",
    --     x = 4*windowX/7 - pipeLocationScaleX,
    --     y = windowY/4 - pipeLocationScaleY + 471,
    --     rotation = 0
    -- },
    {
        image = nil,
        file = "assets/i-pipe.png",
        x = (5*windowX/7 - pipeLocationScaleX) - 55,
        y = windowY/4 - pipeLocationScaleY + 465,
        rotation = 90
    },
    {
        image = nil,
        file = "assets/i-pipe.png",
        x = (6*windowX/7 - pipeLocationScaleX) - 109,
        y = windowY/4 - pipeLocationScaleY + 465,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (7*windowX/7 - pipeLocationScaleX) - 164,
        y = windowY/4 - pipeLocationScaleY + 465,
        rotation = 90
    },
    -- PIPES 26 TO 28
    {
        image = nil,
        file = "assets/t-pipe.png",
        x = (3*windowX/7 - pipeLocationScaleX) + 55,
        y = windowY/4 - pipeLocationScaleY + 617,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/i-pipe.png",
        x = 4*windowX/7 - pipeLocationScaleX,
        y = windowY/4 - pipeLocationScaleY + 617,
        rotation = 0
    },
    {
        image = nil,
        file = "assets/l-pipe.png",
        x = (5*windowX/7 - pipeLocationScaleX) - 55,
        y = windowY/4 - pipeLocationScaleY + 617,
        rotation = 270
    },
    -- FAUCET
    -- {
    --     image = nil,
    --     file = "assets/faucet.png",
    --     x = (2*windowX/7 - pipeLocationScaleX) + 100,
    --     y = windowY/4 - pipeLocationScaleY + 628,
    --     rotation = 0
    -- },
    -- ANCHOR PIPE
    -- {
    --     image = nil,
    --     file = "assets/anchor-pipe.png",
    --     x = (7*windowX/7 - pipeLocationScaleX) - 150,
    --     y = windowY/4 - pipeLocationScaleY,
    --     rotation = 90
    -- }
}

-- ===== LOAD ====================
function love.load()
    love.window.setTitle('pipes_minigame')
    love.window.setMode(windowX, windowY)
    love.graphics.setBackgroundColor(0.1, 0.1, 0.1)
    -- loads images dynamically from game.pipes
    for _, pipe in ipairs(game.pipes) do
        pipe.image = love.graphics.newImage(pipe.file)
    end
    -- x-pipe, anchor pipe, and faucet load-in
    faucetImg = love.graphics.newImage("assets/faucet.png")
    anchorpipeImg = love.graphics.newImage("assets/anchor-pipe.png")
    xpipeImg = love.graphics.newImage("assets/x-pipe.png")
end

function love.update(dt)
    game.mouseX, game.mouseY = love.mouse.getPosition()
    -- 
end

-- ===== MOUSE_PRESSED ====================
function love.mousepressed(x, y, button, istouch, presses)
    if game.state == 'win' then -- locks grid once pipes solved
        return
    end
    if button == 1 then
        for _, pipe in ipairs(game.pipes) do
            local imgWidth = pipe.image:getWidth() * img_scale
            local imgHeight = pipe.image:getHeight() * img_scale
            local halfWidth, halfHeight = imgWidth / 2, imgHeight / 2
            -- check image bounding box
            if x >= pipe.x - halfWidth and x <= pipe.x + halfWidth and
               y >= pipe.y - halfHeight and y <= pipe.y + halfHeight then
                pipe.rotation = (pipe.rotation + 90) % 360 -- saves as degrees
            end
        end
        -- after rotation, check for pipesSolved
        if pipesSolved() then
            game.state = "win"
        end
    end
    -- 
end

-- ===== PIPES_SOLVED ====================
function pipesSolved()
    -- check pipes:
    -- DONE 4, 5, 6
    -- DONE 7, 8, 9, 10, 11
    -- DONE 13, 14, 16, 17
    -- DONE 20, 21, 22, 23
    -- DONE 26, 27, 28
    local validRotations = {
        [4] = {270},  [5] =  {90,270},  [6] = {90},
        [7] = {270},  [8] =  {90},      [9] = {90,270}, [10] = {90,270}, [11] = {90},
        [13] = {0},   [14] = {90},      [16] = {180},   [17] = {0},
        [20] = {180}, [21] = {90,270},  [22] = {0},     [23] = {0,180},
        [26] = {270}, [27] = {90,270},  [28] = {90}
    }
    local allCorrect = true
    for pipeIndex, validAngles in pairs(validRotations) do
        local pipe = game.pipes[pipeIndex]
        pipe.isCorrect = false -- default to false
        for _, angle in ipairs(validAngles) do
            if pipe.rotation == angle then
                pipe.isCorrect = true
                break
            end
        end
        if not pipe.isCorrect then
            allCorrect = false
        end
    end
    return allCorrect
    -- for pipeIndex, validAngles in pairs(validRotations) do
    --     local isCorrect = false
    --     for _, angle in ipairs(validAngles) do
    --         if game.pipes[pipeIndex].rotation == angle then
    --             isCorrect = true
    --             break
    --         end
    --     end
    --     if not isCorrect then
    --         return false
    --     end
    -- end
    -- return true
end

-- ===== DRAW ====================
function love.draw()
    -- love.graphics.setColor(1, 1, 1)

    -- draw pipes
    for i, pipe in ipairs (game.pipes) do
        if game.state == "win" then
            love.graphics.setColor(0.6, 1, 0.6) -- pastel green for win state
        elseif pipe.isCorrect then
            love.graphics.setColor(0.6, 1, 0.6) -- green tint for correct pipes
        else
            love.graphics.setColor(1, 1, 1) -- white tint for incorrect pipes
        end
        love.graphics.draw(
            pipe.image,
            pipe.x, pipe.y,
            math.rad(pipe.rotation),
            img_scale, img_scale,
            pipe.image:getWidth()/2, pipe.image:getHeight()/2
        )
    -- DEBUG
        local text_1 = string.format("Pipe %d Rotation: %d°", i, pipe.rotation)
        local factor = 10+ (i - 1) * 20
        love.graphics.print(text_1, 10, factor)  -- vertical offset text
        love.graphics.print("game.state: "..game.state, windowX - 180, windowY - 30)
    end
    -- reset color tint for these pipes
    love.graphics.setColor(1, 1, 1)
    --
    -- draw x-pipes, anchor pipe, and faucet
    love.graphics.draw(faucetImg,
    347,636,
    0,
    img_scale, img_scale
    )
    love.graphics.draw(anchorpipeImg,
    1246, 27,
    math.rad(90),
    img_scale, img_scale
    )
    love.graphics.draw(xpipeImg,
    645, 181,
    0,
    img_scale, img_scale
    )
    love.graphics.draw(xpipeImg,
    645, 483,
    0,
    img_scale, img_scale
    )
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
end