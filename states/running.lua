function Running()

    return {

        hand = hand(),
        started = false,

        load = function (self)

        end,

        -- Logic to do every frame ie update Hand and draw new Cards.
        update = function (self, dt)
            self.hand:update()
        end,

        -- Responsible for drawing object ie draw background and Hand in Running State
        draw = function (self)
            love.graphics.setColor(love.math.colorFromBytes(161, 229, 237))
            love.graphics.rectangle("fill", 0, 0, width, height)
            self.hand:draw()
        end,

        -- Called once when the state changes to Running. Draws new cards to hand
        startRound = function (self)
            if self.started == false then
                self.hand:drawCards()
                self.started = true
            end
        end
    }

end


return Running