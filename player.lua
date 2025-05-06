Player = Object:extend()

function Player:new(x, y)
	self.x = x
	self.y = y
	self.speed = 200
	self.width = 30
	self.height = 60
	self.isControlled = false
end

function Player:update(dt)
	-- movement
	if self.isControlled then
		local dx = 0
		local dy = 0

		if love.keyboard.isDown("j") then
			dx = -1
		elseif love.keyboard.isDown("l") then
			dx = 1
		end

		if love.keyboard.isDown("i") then
			dy = -1
		elseif love.keyboard.isDown("k") then
			dy = 1
		end

		if dx ~= 0 and dy ~= 0 then
			local length = math.sqrt(dx * dx + dy * dy)
			dx = dx / length
			dy = dy / length
		end

		self.x = self.x + dx * self.speed * dt
		self.y = self.y + dy * self.speed * dt

		local window_width = love.graphics.getWidth()
		if self.x < 0 then
			self.x = 0
		elseif self.x + self.width > window_width then
			self.x = window_width - self.width
		end

		local window_height = love.graphics.getHeight()
		if self.y < 0 then
			self.y = 0
		elseif self.y + self.height > window_height then
			self.y = window_height - self.height
		end
	end
end

return Player
