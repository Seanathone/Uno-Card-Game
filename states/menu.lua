function Menu()

    return {

        number = 0,

        load = function (self)

        end,

        update = function (self, dt)
            self.number = self.number + 1
        end,

        draw = function (self)
            love.graphics.print(self.number)
        end
    }

end


return Menu