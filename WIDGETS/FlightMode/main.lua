---------------------------------------------------------------------------
-- The main part of the Lua widget.                                      --
--                                                                       --
-- Author:  Michael Sattler                                              --
-- Date:    2025-03-10                                                   --
-- Version: 1.0.0                                                        --
-- Source: https://github.com/Bastel-Bodo/EdgeTxWidgets                  --
-- Derived from: https://github.com/MadMonkey87/EdgeTX-Goodies           --
--                                                                       --
-- License: GPLv3                                                        --
--                                                                       --
-- This program is free software; you can redistribute it and/or modify  --
-- it under the terms of the GNU General Public License version 3 as     --
-- published by the Free Software Foundation.                            --
---------------------------------------------------------------------------

local name = "FlightMode"
local libGUI

function loadGUI()
  if not libGUI then
  	libGUI = loadScript("/WIDGETS/" .. name .. "/libgui.lua")
  end
  return libGUI()
end

local function create(zone, options)
  widget = loadScript("/WIDGETS/" .. name .. "/loadable.lua")(zone, options)
  widget.create(zone, options)
  return widget
end

local function refresh(widget, event, touchState)
  widget.refresh(event, touchState)
end

local function background(widget)
  widget.background()
end

local options = {
  { "Label", STRING , "FltMode" }
}

local function update(widget, options)
	widget.update(options)
end

return {
  name = name,
  create = create,
  refresh = refresh,
  background = background,
  options = options,
  update = update
}
