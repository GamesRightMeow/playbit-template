@@"playbit/header.lua"

import("CoreLibs/graphics")
import("CoreLibs/object")
import("scripts/playbit-intro")

local font = playdate.graphics.font.new("fonts/Phozon/Phozon")
playdate.graphics.setFont(font)

playbitIntro.init()

function playdate.update()
  playbitIntro.update()

!if DEBUG then
  playdate.graphics.drawText("debug build", 0, 0)
!end

playdate.graphics.drawTextAligned(playdate.metadata.version.." ["..playdate.metadata.buildNumber.."]", 400, 0, 1)
end