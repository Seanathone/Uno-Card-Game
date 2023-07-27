_G.love = require("love")
_G.game = require("game")
_G.card = require("card")
_G.allCards = require("allCards")
_G.hand = require("hand")
_G.deck = require("deck")

_G.menuState = require("states/menu")
_G.pausedState = require("states/paused")
_G.runningState = require("states/running")
_G.endedState = require("states/ended")

function love.load()
    _G.width = love.graphics.getWidth()
    _G.height = love.graphics.getHeight()
    game = game()
    game:load()
end

function love.update(dt)
    game:update(dt)
end

function love.draw()
    game:draw()
end

function love.keypressed(key, scancode, isrepeat)
    if key == "escape" then
        game:changeGameState("menu")
    end
    if scancode == "p" then
        game:changeGameState("paused")
    end
    if key == "space" then
        game:changeGameState("running")
    end
    if key == "end" then
        game:changeGameState("ended")
    end
end