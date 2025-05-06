Knight = Player:extend()

function Knight:new(x, y)
	Knight.super.new(self, x, y)

	-- properties
	self.health = 200
	self.maxHealth = 200

	-- CDs
	self.abilities = {
		slash = { cooldown = 0.5, currentCooldown = 0 },
		block = { cooldown = 4.0, currentCooldown = 0 },
		charge = { cooldown = 8.0, currentCooldown = 0 },
	}
end

function Knight:draw()
	love.graphics.rectangle("line", self.x, self.y, self.width, self.height)
end

return Knight
