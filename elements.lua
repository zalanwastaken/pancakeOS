---@class customElements
local elements = {
    --! No need to register
    cursor = function()
        local cursorIMG = love.image.newImageData("assets/cursor.png")
        local cursor = love.mouse.newCursor(cursorIMG, 0, 0)
        return({
            name = "cursor",
            setCursor = function()
                love.mouse.setCursor(cursor)
            end
        })
    end,

    vendorLogo = function()
        local logo = love.graphics.newImage('assets/panmicrosystems.png')
        local windowWidth, windowHeight = love.graphics.getDimensions()
        local logoWidth, logoHeight = logo:getWidth(), logo:getHeight()
        local scale = 1.2
        
        return({
            name = "Vendor logo",
            draw = function()
                love.graphics.draw(logo, (windowWidth - logoWidth * scale) / 2, (windowHeight - logoHeight * scale) / 2, 0, scale, scale)
                love.graphics.print("Press F1 for Setup Utility      Press F10 for Boot Menu", 0, 825)
            end
        })
    end
}
return elements
