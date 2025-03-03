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
    aseprite = build.skipFile,
  },
  files = {
    -- essential playbit files for love2d
    { "playbit/playbit", "playbit" },
    -- project
    { "src/fonts", "fonts" },
    { "src/textures", "textures" },
    { "src/sounds", "sounds" },
    { "src/main.lua", "main.lua" },
    { "src/scripts", "scripts" },
    { "src/metadata.json", "pdxinfo",
      {
        json = { build.pdxinfoProcessor, { incrementBuildNumber = true } }
      }
    }
  },
})