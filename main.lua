local world = love.physics.newWorld( 0, 9.81, true )

function love.load()
    love.graphics.setBackgroundColor(255,255,255)

    player = {}
    player.x  = 50
    player.y  = 250
    player.w = 50
    player.h = 50

    coin = {}
    coin.x = 200
    coin.y = 525
    coin.w = 30
    coin.h = 30

    ball = love.graphics.newImage("/assets/ball.png")
    goal = love.graphics.newImage("/assets/goal.png")
end

function love.update(dt)
    if love.keyboard.isDown("right") then
        player.x = player.x + 4
    elseif love.keyboard.isDown("left") then
        player.x = player.x - 4
    elseif love.keyboard.isDown("up") then
        player.y = player.y - 4
    elseif love.keyboard.isDown("down") then
        player.y = player.y + 4
    end 
end

function love.draw()
    love.graphics.draw(ball, player.x, player.y)
    love.graphics.draw(goal, coin.x, coin.y)
end