function Game()
    return {

        -- Default Starting State
        state = nil,

        -- State Objects
        menuState = menuState(),
        pausedState = pausedState(),
        runningState = runningState(),
        endedState = endedState(),

        -- State Info. Default State is Menu
        states = {
            menu = true,
            paused = false,
            running = false,
            ended = false 
        },

        load = function (self)
            self.menuState:load()
        end,

        -- Logic to do every frame ie check if State has changed
        update = function (self, dt)
            if self.states.menu then
                self.state = self.menuState
                self.state:update(dt)
            end
            if self.states.paused then
                self.state = self.pausedState
                self.state:update(dt)
            end
            if self.states.running then
                self.state = self.runningState
                self.state:startRound()
                self.state:update(dt)
            end
            if self.states.ended then
                self.state = self.endedState
                self.state:update(dt)
            end
        end,

        -- Responsible for drawing object ie draws current Game State
        draw = function (self)
            self.state:draw()
        end,

        -- Used to change current Game State
        changeGameState = function (self, newState)
            self.states.menu = newState == "menu"
            self.states.paused = newState == "paused"
            self.states.running = newState == "running"
            self.states.ended = newState == "ended"
        end
    }
end

return Game