local DataLoader = require("dataloader")
local R = {}

local Images = {}
local Sounds = {}

function R.getImage(fname)
  local img = Images[fname]
  if not img then
    img = love.graphics.newImage(fname)
    Images[fname] = img
  end
  return img
end

-- Args:
--   fname:(optional) filename. If omitted, img MUST be given.
--   img: (optional) image object.  If nil, R.getImage will be used w fname param to get it.
--   rect: (optional) {x=,y=,w=,h=} rectangle defining a Quad. If omitted, Quad will be the whole img dimensions.
--
-- Pic:
--   filename string
--   image    Image
--   quad     Quad
--   rect     {x,y,w,h}
--   duration float (time in partial seconds)
--   sx       float (x scale)
--   sy       float (y scale)
function R.makePic(fname, img, rect, opts)
  rect = rect or {}
  opts = opts or {}

  if fname and not img then
    img = R.getImage(fname)
  end
  if not fname and not img then
    error("ResourceLoader.makePic() requires filename or image object, but both were nil")
  end

  local x, y, w, h
  if rect and rect.x then
    x = rect.x
    y = rect.y
    w = rect.w
    h = rect.h
  else
    x, y, w, h = unpack(rect)
  end
  if not x then
    x = 0
    y = 0
  end
  if w == nil then
    w = img:getWidth()
    h = img:getHeight()
  end

  local quad = love.graphics.newQuad(x, y, w, h, img:getDimensions())
  local pic = {
    filename = fname,
    rect = {x = x, y = y, w = w, h = h},
    image = img,
    quad = quad,
    duration = (opts.duration or 1 / 60),
    sx = (opts.sx or 1),
    sy = (opts.sy or 1)
  }
  return pic
end

-- Creates a func of t -> Pic
local function makeAnimFunc(anim)
  return function(t)
    t = t % anim.time
    local acc = 0
    for i, pic in ipairs(anim.pics) do
      acc = acc + pic.duration
      if t < acc then
        return pic
      end
    end
  end
end

-- Load animation(s) from the Aseprite export denoted by dir+name{.png,.json}
-- Anim
--   name    string
--   pics    List of Pics
--   time    Length of animation
--   func    f(t) -> Pic
function R.loadAsepriteAnims(dir, name)
  local anims = {}
  local img = DataLoader.loadFile(dir .. "/" .. name .. ".png")
  local layout = DataLoader.loadFile(dir .. "/" .. name .. ".json")
  -- frameTag 1-1 with an "anim"
  for _, ftag in ipairs(layout.meta.frameTags) do
    local pics = {}
    local totalT = 0
    for i = (1 + ftag.from), (1 + ftag.to) do
      local fr = layout.frames[i]
      local f = fr.frame
      local dur = fr.duration / 1000 -- fr.duration is in millis
      local pic = R.makePic(nil, img, {f.x, f.y, f.w, f.h}, {duration = dur})
      -- pic.duration_ms = fr.duration
      totalT = totalT + dur
      table.insert(pics, pic)
    end
    local anim = {
      name = ftag.name,
      pics = pics,
      time = totalT
    }
    anim.func = makeAnimFunc(anim)
    table.insert(anims, anim)
  end
  return anims
end

function R.getSoundData(fname)
  local sdata = Sounds[fname]
  if not sdata then
    sdata = love.sound.newSoundData(fname)
    Sounds[fname] = sdata
  end
  return sdata
end

function R.getFont(fname, size)
  -- TODO
  return nil
end

return R
