local build = require("playbit.build")

build.build({ 
  assert = true,
  debug = true,
  platform = "love2d",
  output = "_love2d",
  fileProcessors = {
    lua = build.luaProcessor,
    fnt = build.fntProcessor,
    aseprite = build.asepriteProcessor,
  },
  files = {
    -- essential playbit files for love2d
    { "playbit/conf.lua", "conf.lua" },
    { "playbit/playbit", "playbit" },
    { "playbit/playdate", "playdate" },
    { "playbit/json/json.lua", "json/json.lua" },
    -- project
    { "src/fonts", "fonts" },
    { "src/textures", "textures" },
    { "src/sounds", "sounds" },
    { "src/main.lua", "main.lua" },
  },
})