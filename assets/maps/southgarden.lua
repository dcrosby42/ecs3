return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.2.4",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 10,
  height = 10,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 4,
  nextobjectid = 2,
  properties = {},
  tilesets = {
    {
      name = "Overworld",
      firstgid = 1,
      filename = "Overworld.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 40,
      image = "Overworld.png",
      imagewidth = 640,
      imageheight = 576,
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
          name = "Grass",
          tile = 0,
          properties = {}
        },
        {
          name = "Water",
          tile = 283,
          properties = {}
        },
        {
          name = "Path",
          tile = 161,
          properties = {}
        }
      },
      tilecount = 1440,
      tiles = {
        {
          id = 0,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 120,
          terrain = { 0, 0, 0, 2 }
        },
        {
          id = 121,
          terrain = { 0, 0, 2, 2 }
        },
        {
          id = 122,
          terrain = { 0, 0, 2, 0 }
        },
        {
          id = 160,
          terrain = { 0, 2, 0, 2 }
        },
        {
          id = 161,
          terrain = { 2, 2, 2, 2 }
        },
        {
          id = 162,
          terrain = { 2, 0, 2, 0 }
        },
        {
          id = 200,
          terrain = { 0, 2, 0, 0 }
        },
        {
          id = 201,
          terrain = { 2, 2, 0, 0 }
        },
        {
          id = 202,
          terrain = { 2, 0, 0, 0 }
        },
        {
          id = 240,
          terrain = { 2, 2, 2, -1 }
        },
        {
          id = 241,
          terrain = { 2, 2, -1, 2 }
        },
        {
          id = 242,
          terrain = { 0, 0, 0, 1 }
        },
        {
          id = 243,
          terrain = { 0, 0, 1, 1 }
        },
        {
          id = 244,
          terrain = { 0, 0, 1, 0 }
        },
        {
          id = 255,
          terrain = { 2, 2, 2, 1 }
        },
        {
          id = 256,
          terrain = { 2, 2, 1, 1 }
        },
        {
          id = 257,
          terrain = { 2, 2, 1, 2 }
        },
        {
          id = 280,
          terrain = { 2, -1, 2, 2 }
        },
        {
          id = 281,
          terrain = { -1, 2, 2, 2 }
        },
        {
          id = 282,
          terrain = { 0, 1, 0, 1 }
        },
        {
          id = 283,
          terrain = { 1, 1, 1, 1 },
          animation = {
            {
              tileid = 40,
              duration = 100
            },
            {
              tileid = 41,
              duration = 100
            },
            {
              tileid = 42,
              duration = 100
            },
            {
              tileid = 43,
              duration = 100
            },
            {
              tileid = 80,
              duration = 100
            },
            {
              tileid = 81,
              duration = 100
            },
            {
              tileid = 82,
              duration = 100
            },
            {
              tileid = 83,
              duration = 100
            }
          }
        },
        {
          id = 284,
          terrain = { 1, 0, 1, 0 }
        },
        {
          id = 295,
          terrain = { 2, 1, 2, 1 }
        },
        {
          id = 297,
          terrain = { 1, 2, 1, 2 }
        },
        {
          id = 322,
          terrain = { 0, 1, 0, 0 }
        },
        {
          id = 323,
          terrain = { 1, 1, 0, 0 }
        },
        {
          id = 324,
          terrain = { 1, 0, 0, 0 }
        },
        {
          id = 335,
          terrain = { 2, 1, 2, 2 }
        },
        {
          id = 336,
          terrain = { 1, 1, 2, 2 }
        },
        {
          id = 337,
          terrain = { 1, 2, 2, 2 }
        },
        {
          id = 362,
          terrain = { 1, 1, 1, 0 }
        },
        {
          id = 363,
          terrain = { 1, 1, 0, 1 }
        },
        {
          id = 375,
          terrain = { 1, 1, 1, 2 }
        },
        {
          id = 376,
          terrain = { 1, 1, 2, 1 }
        },
        {
          id = 402,
          terrain = { 1, 0, 1, 1 }
        },
        {
          id = 403,
          terrain = { 0, 1, 1, 1 }
        },
        {
          id = 415,
          terrain = { 1, 2, 1, 1 }
        },
        {
          id = 416,
          terrain = { 2, 1, 1, 1 }
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
      width = 10,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        121, 122, 123, 1, 121, 122, 122, 122, 122, 123,
        161, 162, 162, 162, 162, 162, 162, 162, 162, 163,
        161, 162, 162, 162, 162, 162, 162, 162, 162, 163,
        161, 162, 162, 162, 162, 162, 162, 162, 162, 163,
        161, 162, 162, 162, 162, 162, 162, 162, 162, 163,
        161, 162, 162, 162, 162, 162, 162, 162, 162, 163,
        162, 162, 162, 162, 162, 162, 162, 162, 162, 163,
        161, 162, 162, 162, 162, 162, 162, 162, 162, 203,
        161, 162, 162, 162, 162, 162, 162, 162, 162, 1,
        161, 162, 162, 162, 162, 162, 202, 202, 203, 1
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "Tile Layer 2",
      x = 0,
      y = 0,
      width = 10,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 383, 384, 385, 0, 0,
        0, 0, 0, 0, 0, 423, 424, 425, 0, 0,
        0, 0, 0, 0, 0, 463, 464, 465, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      id = 3,
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
          x = 13,
          y = 152,
          width = 82,
          height = 7,
          rotation = 0,
          visible = true,
          properties = {
            ["targetMap"] = "island",
            ["targetPortal"] = "garden"
          }
        }
      }
    }
  }
}
