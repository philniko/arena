Player = Object:extend()

function Player:new()
	self.x = 100
	self.y = 100
	self.speed = 200
	self.width = 20
	self.height = 40
end

function Player:update(dt)
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
end

function Player:draw()
	love.graphics.rectangle("line", self.x, self.y, self.width, self.height)
end

return Player
