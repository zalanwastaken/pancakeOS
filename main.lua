local guified = require("libs.guified.init")
---@type customElements
local elements = require("elements")

function love.load()
    love.window.maximize()

    local cursor = elements.cursor()
    cursor.setCursor()
    local logo = love.graphics.newImage("assets/panmicrosystems.png")
    local logoWidth, logoHeight = logo:getWidth(), logo:getHeight()
    guified.registry.register(guified.elements.image((love.graphics.getWidth() - logoWidth * 1.2) / 2, (love.graphics.getHeight() - logoHeight * 1.2) / 2, logo))
    guified.registry.register({
        name = "txt",
        draw = function()
            love.graphics.print("Press F1 for Setup Utility      Press F10 for Boot Menu", 0, 825)
        end
    })
end
