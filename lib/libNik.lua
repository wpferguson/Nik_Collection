--[[
  Nik Collection plugin library

  copyright (c) 2016 Bill Ferguson
  
]]

local dt = require "darktable"
local du = require "lib/dtutils"
local df = require "lib/dtutils.file"
local dp = require "lib/dtutils.processor"
require "lib/libPlugin"

local gettext = dt.gettext
-- Tell gettext where to find the .mo file translating messages for a particular domain
gettext.bindtextdomain("nik",dt.configuration.config_dir.."/lua/")

local function _(msgid)
    return gettext.dgettext("nik", msgid)
end

libNik = {}

--[[
  NAME
    libNik.nik_collection - process an image with nik collection tools

  SYNOPSIS
    libNik.nik_collection(image_table, pd)
      image_table - a table of images and exported image filenames to create the panorama from
      pd - plugin configuration data

  DESCRIPTION
    nik_collections takes the supplied images and passes that to Nik Collection software specified 
    in the plugin_data for processing.  On exit, the resulting image is imported into darktable 
    and grouped with the original image.

  RETURN VALUE
    none

  ERRORS


]]

function libNik.nik_collection(image_table, plugin_data)

  -- list of exported images 
  local img_list = dp.extract_image_list(image_table)

  dt.print(_("Launching " .. plugin_data.DtPluginName .. "..."))

  local nikStartCommand = plugin_data.DtPluginExecutablesRequired[1]
  if string.match(nikStartCommand, "$HOME") then
    nikStartCommand = string.sub(nikStartCommand, 6, #nikStartCommand)
    nikStartCommand = "'" .. os.getenv("HOME") .. nikStartCommand .. "'"
    nikStartCommand = "wine " .. nikStartCommand
  end
  nikStartCommand = nikStartCommand .. " " .. img_list
  
  dt.print_error(nikStartCommand)

  dt.control.execute(nikStartCommand)

  -- for each of the image, exported image pairs
  --   move the exported image into the directory with the original  
  --   then import the image into the database which will group it with the original
  --   and then copy over any tags other than darktable tags

  for image,exported_image in pairs(image_table) do

    local myimage_name = image.path .. "/" .. df.get_filename(exported_image)

    while df.check_if_file_exists(myimage_name) do
      myimage_name = df.filename_increment(myimage_name)
      -- limit to 99 more exports of the original export
      if string.match(df.get_basename(myimage_name), "_(d-)$") == "99" then 
        break 
      end
    end

    dt.print_error("moving " .. exported_image .. " to " .. myimage_name)
    result = df.file_move(exported_image, myimage_name)

    dt.print_error("importing file")
    local myimage = dt.database.import(myimage_name)

    myimage:group_with(image.group_leader)

    for _,tag in pairs(dt.tags.get_tags(image)) do 
      if not (string.sub(tag.name,1,9) == "darktable") then
        dt.print_error("attaching tag")
        dt.tags.attach(tag,myimage)
      end
    end
  end
end

--[[
  NAME
    libNik.nik_collection_hdr - process a set of images into an hdr image

  SYNOPSIS
    libNik.nik_collection_hdr(image_table, pd)
      image_table - a table of images and exported image filenames to create the panorama from
      pd - plugin configuration data

  DESCRIPTION
    nik_collection_hdr takes the supplied images and passes them to HDR Efex Pro 2 for processing.  On exit,
    the resulting image is imported into darktable.

  RETURN VALUE
    none

  ERRORS


]]

function libNik.nik_collection_hdr(image_table, plugin_data)

  -- list of exported images 
  local img_list = dp.extract_image_list(image_table)

  dt.print(_("Launching " .. plugin_data.DtPluginName .. "..."))

  local nikStartCommand = plugin_data.DtPluginExecutablesRequired[1]
  if string.match(nikStartCommand, "$HOME") then
    nikStartCommand = string.sub(nikStartCommand, 6, #nikStartCommand)
    nikStartCommand = "'" .. os.getenv("HOME") .. nikStartCommand .. "'"
    nikStartCommand = "wine " .. nikStartCommand
  end
  nikStartCommand = nikStartCommand .. " " .. img_list
  
  dt.print_error(nikStartCommand)

  dt.control.execute(nikStartCommand)

  -- for each of the image, exported image pairs
  --   move the exported image into the directory with the original  
  --   then import the image into the database which will group it with the original
  --   and then copy over any tags other than darktable tags

  for image,exported_image in pairs(image_table) do

    local myimage_name = image.path .. "/" .. df.get_filename(exported_image)

    while df.check_if_file_exists(myimage_name) do
      myimage_name = df.filename_increment(myimage_name)
      -- limit to 99 more exports of the original export
      if string.match(df.get_basename(myimage_name), "_(d-)$") == "99" then 
        break 
      end
    end

    dt.print_error("moving " .. exported_image .. " to " .. myimage_name)
    result = df.file_move(exported_image, myimage_name)

    dt.print_error("importing file")
    local myimage = dt.database.import(myimage_name)

    myimage:group_with(image.group_leader)

    for _,tag in pairs(dt.tags.get_tags(image)) do 
      if not (string.sub(tag.name,1,9) == "darktable") then
        dt.print_error("attaching tag")
        dt.tags.attach(tag,myimage)
      end
    end
  end
end

return libNik
