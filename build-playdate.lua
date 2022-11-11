local build = require("playbit.build")

build.build({ 
  assert = false,
  debug = false,
  platform = "playdate",
  output = "_pdx\\",
  clearBuildFolder = true,
  fileProcessors = {
    lua = build.luaProcessor,
    wav = build.waveProcessor,
    aseprite = build.asepriteProcessor,
  },
  files = {
    -- essential playbit files for love2d
    { "playbit/playbit", "playbit" },
    -- project
    { "src/fonts", "fonts" },
    { "src/textures", "textures" },
    { "src/sounds", "sounds" },
    { "src/main.lua", "main.lua" },
    { "src/pdxinfo.txt", "pdxinfo" }, -- .txt is work around for this being detected as folder
  },
})