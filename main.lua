local guified = require("libs.guified.init")
__GUIFIEDGLOBAL__.rootfolder = "libs.guified"
---@type customElements
local elements = require("elements")

function love.load()
    love.window.setMode(800, 600, {
        resizable = true,
        minwidth = 800,
        minheight = 600,
        highdpi = true
    })
    love.window.maximize()

    local cursor = elements.cursor()
    cursor.setCursor()
    guified.registry.register(elements.vendorLogo())
end
