function love.load()
    ball = love.graphics.newImage("/assets/ball.png")
    love.graphics.setBackgroundColor(0,0,0)
end

function love.update()
    -- Do math here
end


function love.draw()
    love.graphics.draw(ball)
    love.graphics.print('Hello World!', 400, 300)
end