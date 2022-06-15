@@"playbit/header.lua"

@@IMPORT("CoreLibs/graphics")

local image = playdate.graphics.image.new("textures/playbit-logo")

local font = playdate.graphics.font.new("fonts/Roobert/Roobert-11-Mono-Condensed")
playdate.graphics.setFont(font)

function playdate.update()
  image:draw(0, 0)

!if DEBUG then
  font:drawText("debug build", 0, 0)
!end
end