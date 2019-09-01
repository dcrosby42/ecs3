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
  nextlayerid = 5,
  nextobjectid = 11,
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
      name = "surface",
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
        284, 284, 284, 284, 284, 284, 284, 284, 284, 284,
        284, 284, 363, 324, 324, 324, 324, 324, 364, 284,
        284, 363, 243, 244, 245, 1, 1, 1, 283, 284,
        284, 403, 404, 284, 285, 1, 1, 1, 323, 364,
        284, 284, 284, 363, 325, 1, 1, 1, 1, 283,
        284, 284, 284, 285, 1, 1, 1, 1, 1, 283,
        284, 363, 324, 325, 1, 1, 1, 1, 1, 283,
        284, 285, 1, 1, 1, 1, 1, 1, 243, 404,
        284, 403, 244, 245, 1, 1, 1, 243, 404, 284,
        284, 284, 284, 403, 244, 244, 244, 404, 284, 284
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "stuff",
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
        0, 106, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 146, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 214, 215, 0, 0,
        0, 0, 0, 0, 0, 0, 254, 255, 0, 0,
        0, 0, 887, 888, 0, 0, 294, 295, 0, 0,
        0, 0, 927, 928, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 76, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      id = 4,
      name = "objects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 7,
          name = "garden",
          type = "portal",
          shape = "rectangle",
          x = 80,
          y = 128,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["targetMap"] = "southgarden",
            ["targetPortal"] = "main"
          }
        },
        {
          id = 8,
          name = "town",
          type = "portal",
          shape = "rectangle",
          x = 103,
          y = 83,
          width = 19,
          height = 12,
          rotation = 0,
          visible = true,
          properties = {
            ["targetMap"] = "kwerm",
            ["targetPortal"] = "south_entrance"
          }
        },
        {
          id = 9,
          name = "garden",
          type = "portal",
          shape = "rectangle",
          x = 17,
          y = 33,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["targetMap"] = "southgarden",
            ["targetPortal"] = "main"
          }
        },
        {
          id = 10,
          name = "cave",
          type = "portal",
          shape = "rectangle",
          x = 17,
          y = 33,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["targetMap"] = "cliffcave",
            ["targetPortal"] = "entrance"
          }
        }
      }
    }
  }
}
