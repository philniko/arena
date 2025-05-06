function love.load()
	love.window.setMode(1200, 800)
	Object = require("classic")
	local Player = require("player")
	local Knight = require("knight")
	local Wizard = require("wizard")
	local Priest = require("priest")

	knight = Knight()
	wizard = Wizard()
	priest = Priest()
end

function love.update(dt)
	knight:update(dt)
	-- wizard:update(dt)
	-- priest:update(dt)
end

function love.draw()
	knight:draw()
	-- Wizard:draw()
	-- Priest:draw()
end
