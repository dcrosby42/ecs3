-- Enable loading a dir as a package via ${package}/init.lua
package.path = package.path .. ";./?/init.lua"

require "root"
-- require "scratch"
-- require "ui_scratch"
