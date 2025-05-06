Dummy = Player:extend()

function Dummy:new(x, y)
	Dummy.super.new(self, x, y)
end

function Dummy:draw()
	love.graphics.rectangle("line", self.x, self.y, self.width, self.height)
end

return Dummy
