io.stdout:setvbuf("no")

function love.load()
	love.window.setMode(1200, 800)
	love.graphics.setBackgroundColor(1, 1, 1, 1)
	Object = require("classic")
	local Player = require("player")
	local Knight = require("knight")
	local Wizard = require("wizard")
	local Priest = require("priest")
	local Dummy = require("dummy")

	knight = Knight(200, 400)
	knight.isControlled = true
	-- wizard = Wizard()
	-- priest = Priest()
	dummy1 = Dummy(800, 300)
	dummy2 = Dummy(800, 500)
end

function love.update(dt)
	knight:update(dt)
	dummy1:update(dt)
	dummy2:update(dt)
	-- wizard:update(dt)
	-- priest:update(dt)
end

function love.draw()
	love.graphics.setColor(0, 0, 0, 1)
	knight:draw()
	dummy1:draw()
	dummy2:draw()
	-- Wizard:draw()
	-- Priest:draw()
end
