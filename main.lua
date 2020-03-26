function love.load()
    x  = 300
    y  = 0
    ball = love.graphics.newImage("/assets/ball.png")
    goal = love.graphics.newImage("/assets/goal.png")
    love.graphics.setBackgroundColor(0,0,0)
end

function love.update(dt)
    -- Do math here
    x = x + 2
    -- y = y + (vy * dt)
end

function love.draw()
    love.graphics.draw(ball, x, y)
    love.graphics.draw(goal, 200, 520)
end