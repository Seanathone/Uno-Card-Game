function Hand()
    return {
        cards = {},
        cardSlots = {
            {255, 805, "unfilled"},
            {400, 805, "unfilled"}, 
            {545, 805, "unfilled"}, 
            {690, 805, "unfilled"}, 
            {835, 805, "unfilled"}, 
            {980, 805, "unfilled"}, 
            {1125, 805, "unfilled"}
        },
        handSize = 0,
        maxHand = 7,
        started = false,

        -- Responsible for drawing object
        draw = function (self)
            love.graphics.setColor(0, 0, 0) -- Set the color to white for simplicity
            love.graphics.rectangle("line", 250, 800, 1000, 200)
            -- Card Position Lines
            for slot = 1, self.maxHand do
                love.graphics.rectangle("line", self.cardSlots[slot][1], self.cardSlots[slot][2], 120, 190)
            end
            -- Draws actual Cards
            for card = 1, self.handSize do
                self.cards[card]:draw()
            end
        end,

        -- Logic to do every frame ie update each Card in hand
        update = function (self)
            for card = 1, self.handSize do
                self.cards[card]:update()
            end
        end,
        
        -- Function to draw new cards
        drawCards = function (self) 
            for slot = 1, self.maxHand do
                if self.cardSlots[slot][3] == "unfilled" then
                    newCard = card(self.cardSlots[slot][1] + 10, self.cardSlots[slot][2] + 20, allCards[1].id, allCards[1].colour, allCards[1].value, allCards[1].art)
                    table.insert(self.cards, newCard)
                    self.cardSlots[slot][3] = "filled"
                    self.handSize = self.handSize + 1
                end
            end
        end,

        -- Function to return all Cards in hand
        returnCards = function (self)
            return self.cards
        end
    }
end

return Hand