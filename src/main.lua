@@"playbit/header.lua"

import("CoreLibs/graphics")
import("CoreLibs/font")
import("CoreLibs/object")
import("CoreLibs/metadata")
import("scripts/playbit-intro")

local font = playdate.graphics.font.new("fonts/Phozon/Phozon")
playdate.graphics.setFont(font)

playbitIntro.init()

function playdate.update()
  playbitIntro.update()

!if DEBUG then
  font:drawText("debug build", 0, 0)
!end

font:drawTextAligned(playdate.metadata.version.." ["..playdate.metadata.buildNumber.."]", 400, 0, 1)
end