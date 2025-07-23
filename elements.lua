---@class customElements
local elements = {
    --! No need to register
    --! Static element no update/draw loop
    cursor = function()
        local cursorIMG = love.image.newImageData("assets/cursor.png")
        local cursor = love.mouse.newCursor(cursorIMG, 0, 0)
        return({
            name = "cursor",
            setCursor = function()
                love.mouse.setCursor(cursor)
            end
        })
    end
}
return elements
