return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.2.4",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 20,
  height = 20,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 4,
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
        }
      }
    },
    {
      name = "character",
      firstgid = 1001,
      filename = "character.tsx",
      tilewidth = 16,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "character.png",
      imagewidth = 128,
      imageheight = 256,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 8
      },
      properties = {},
      terrains = {},
      tilecount = 64,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 1,
      name = "ground",
      x = 0,
      y = 0,
      width = 20,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322,
        322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322,
        322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322,
        362, 362, 362, 362, 362, 285, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322,
        1, 1, 1, 1, 1, 361, 362, 285, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322,
        1, 1, 1, 1, 1, 1, 1, 361, 285, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322,
        1, 1, 1, 1, 1, 1, 1, 1, 361, 362, 285, 322, 322, 322, 322, 322, 322, 322, 284, 362,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 321, 322, 322, 322, 322, 322, 284, 362, 363, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 361, 362, 285, 322, 322, 284, 363, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 361, 362, 362, 363, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "mid",
      x = 0,
      y = 0,
      width = 20,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 9, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 49, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369, 0, 0, 0, 0,
        0, 89, 0, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 368, 0, 0, 0, 0, 0,
        0, 10, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 290, 291, 0, 0, 0, 0,
        0, 50, 0, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 330, 331, 0, 0, 0, 0,
        0, 90, 0, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 371, 369, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 208, 209, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 166, 0, 0, 248, 249, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 167, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        122, 123, 122, 123, 124, 122, 122, 123, 124, 122, 122, 122, 122, 123, 122, 123, 122, 123, 124, 123,
        162, 163, 162, 163, 164, 162, 162, 163, 164, 162, 162, 162, 162, 163, 162, 163, 162, 163, 164, 163,
        202, 203, 202, 203, 204, 202, 202, 203, 204, 202, 202, 202, 202, 203, 202, 203, 202, 203, 204, 203
      }
    },
    {
      type = "objectgroup",
      id = 3,
      name = "plan",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 1,
          name = "p1 spawn",
          type = "spawn",
          shape = "rectangle",
          x = 191,
          y = 197,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 1001,
          visible = true,
          properties = {
            ["spawnId"] = "player1",
            ["spawnType"] = "player"
          }
        }
      }
    }
  }
}
