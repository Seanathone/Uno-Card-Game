-- Constructor function to create a new card
function Card(x, y, id, colour, value, art)

    return {
        id = id,
        xPosition = x,
        yPosition = y,
        colour = colour,
        value = value,
        art = art,
        isBeingMoved = false,

        -- Responsible for drawing object
        draw = function (self)
            love.graphics.setColor(255, 255, 255)
            image = love.graphics.newImage(self.art)
            love.graphics.draw(image, self.xPosition, self.yPosition) -- of size 150 x 100
        end,

        -- Logic to do every frame
        update = function (self)
            mouseX, mouseY = love.mouse.getPosition()
            if self.isBeingMoved == true then
                self.xPosition = mouseX - offsetX
                self.yPosition = mouseY - offsetY
            end
        end
    }
end

return Card