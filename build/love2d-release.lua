local build = require("playbit.build")

build.build({ 
  assert = false,
  debug = false,
  platform = "love2d",
  output = "_love2d",
  clearBuildFolder = true,
  fileProcessors = {
    lua = build.luaProcessor,
    fnt = build.fntProcessor,
    aseprite = build.skipFile,
  },
  files = {
    -- essential playbit files for love2d
    { "playbit/conf.lua", "conf.lua" },
    { "playbit/playbit", "playbit" },
    { "playbit/playdate", "playdate" },
    { "playbit/json/json.lua", "json/json.lua" },
    { "playbit/fonts", "fonts" },
    -- project
    { "src/textures", "textures" },
    { "src/sounds", "sounds" },
    { "src/scripts", "scripts" },
    { "src/main.lua", "main.lua" },
    { "src/metadata.json", "pdxinfo",
      {
        json = { build.pdxinfoProcessor, { incrementBuildNumber = true } }
      }
    }
  },
})