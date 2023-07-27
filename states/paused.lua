function Paused()

    return {

        load = function (self)

        end,

        update = function (self, dt)
        
        end,

        draw = function (self)
            love.graphics.setColor(love.math.colorFromBytes(107, 106, 106))
            love.graphics.rectangle("fill", 0, 0, width, height)
            image = love.graphics.newImage("UI/pause.png")
            x = (width/2) - (image:getWidth() / 2)
            y = (height/2) - (image:getHeight() / 2)
            love.graphics.setColor(255,255,255)
            love.graphics.draw(image, x, y)
        end
    }

end


return Paused