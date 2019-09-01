return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.2.4",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 20,
  height = 10,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 3,
  nextobjectid = 2,
  properties = {},
  tilesets = {
    {
      name = "cave",
      firstgid = 1,
      filename = "cave.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 40,
      image = "cave.png",
      imagewidth = 640,
      imageheight = 400,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {
        {
          name = "Dirt",
          tile = 0,
          properties = {}
        },
        {
          name = "Void",
          tile = 212,
          properties = {}
        },
        {
          name = "Water",
          tile = 321,
          properties = {}
        }
      },
      tilecount = 1000,
      tiles = {
        {
          id = 0,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 1,
          terrain = { -1, -1, -1, 1 }
        },
        {
          id = 2,
          terrain = { -1, -1, 1, 1 }
        },
        {
          id = 3,
          terrain = { -1, -1, 1, -1 }
        },
        {
          id = 4,
          terrain = { 1, 1, 1, -1 }
        },
        {
          id = 5,
          terrain = { 1, 1, -1, 1 }
        },
        {
          id = 41,
          terrain = { -1, 1, -1, 1 }
        },
        {
          id = 42,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 43,
          terrain = { 1, -1, 1, -1 }
        },
        {
          id = 44,
          terrain = { 1, -1, 1, 1 }
        },
        {
          id = 45,
          terrain = { -1, 1, 1, 1 }
        },
        {
          id = 81,
          terrain = { -1, 1, -1, -1 }
        },
        {
          id = 82,
          terrain = { 1, 1, -1, -1 }
        },
        {
          id = 83,
          terrain = { 1, -1, -1, -1 }
        },
        {
          id = 171,
          terrain = { 0, 0, 0, 1 }
        },
        {
          id = 172,
          terrain = { 0, 0, 1, 1 }
        },
        {
          id = 173,
          terrain = { 0, 0, 1, 0 }
        },
        {
          id = 174,
          terrain = { 1, 1, 1, 0 }
        },
        {
          id = 175,
          terrain = { 1, 1, 0, 1 }
        },
        {
          id = 211,
          terrain = { 0, 1, 0, 1 }
        },
        {
          id = 212,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 213,
          terrain = { 1, 0, 1, 0 }
        },
        {
          id = 214,
          terrain = { 1, 0, 1, 1 }
        },
        {
          id = 215,
          terrain = { 0, 1, 1, 1 }
        },
        {
          id = 251,
          terrain = { 0, 1, 0, 0 }
        },
        {
          id = 252,
          terrain = { 1, 1, 0, 0 }
        },
        {
          id = 253,
          terrain = { 1, 0, 0, 0 }
        },
        {
          id = 254,
          terrain = { 0, 1, 1, 0 }
        },
        {
          id = 255,
          terrain = { 1, 0, 0, 1 }
        },
        {
          id = 280,
          terrain = { 0, 0, 0, 2 }
        },
        {
          id = 281,
          terrain = { 0, 0, 2, 2 }
        },
        {
          id = 282,
          terrain = { 0, 0, 2, 0 }
        },
        {
          id = 283,
          terrain = { 2, 2, 2, 0 }
        },
        {
          id = 284,
          terrain = { 2, 2, 0, 2 }
        },
        {
          id = 320,
          terrain = { 0, 2, 0, 2 }
        },
        {
          id = 321,
          terrain = { 2, 2, 2, 2 }
        },
        {
          id = 322,
          terrain = { 2, 0, 2, 0 }
        },
        {
          id = 323,
          terrain = { 2, 0, 2, 2 }
        },
        {
          id = 324,
          terrain = { 0, 2, 2, 2 }
        },
        {
          id = 360,
          terrain = { 0, 2, 0, 0 }
        },
        {
          id = 361,
          terrain = { 2, 2, 0, 0 }
        },
        {
          id = 362,
          terrain = { 2, 0, 0, 0 }
        },
        {
          id = 363,
          terrain = { 0, 2, 2, 0 }
        },
        {
          id = 364,
          terrain = { 2, 0, 0, 2 }
        },
        {
          id = 403,
          terrain = { -1, -1, -1, 0 }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 1,
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 20,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        175, 253, 253, 253, 253, 254, 1, 1, 1, 1, 1, 1, 252, 253, 253, 253, 253, 253, 253, 253,
        254, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        173, 174, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        6, 215, 173, 173, 174, 1, 1, 1, 1, 172, 173, 173, 173, 173, 173, 174, 1, 1, 1, 1,
        82, 83, 83, 6, 215, 173, 173, 173, 173, 216, 5, 83, 83, 83, 6, 215, 173, 174, 1, 1
      }
    },
    {
      type = "objectgroup",
      id = 2,
      name = "objects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 1,
          name = "main",
          type = "portal",
          shape = "rectangle",
          x = 0,
          y = 37,
          width = 15,
          height = 72,
          rotation = 0,
          visible = true,
          properties = {
            ["targetMap"] = "island",
            ["targetPortal"] = "cave"
          }
        }
      }
    }
  }
}
