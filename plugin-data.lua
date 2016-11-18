--[[
  Nik collection plugin configuration data

  copyright (c) 2016 Bill Ferguson

]]
return {
  DtPlugins = {
    {
      DtPluginName = "Analog Efex Pro 2",
      DtPluginPreference = "analog_efex_pro_2",
      DtPluginDoc = {
        Sections = {"Name", "Usage", "License"},
        Name = "Analog Efex Pro 2",
        Usage = [[Activate the plugin.
                select an image or images for editing with Analog Efex Pro 2
                in the processor combobox select 'Analog Efex Pro 2'
                select the format and bit depth for the exported image
                Press Process
                Edit the image with Analog Efex Pro 2 then save the changes
                which will cause Analog Efex Pro 2 to exit
                The edited image will be imported and grouped with the original image]],
        License = "GPL Version 2",
      },
      DtVersionRequired = {"3.0.0","4.0.0"},
      DtPluginDataDir = nil,
      DtPluginExecutablesRequired = {
        "$HOME/.wine/drive_c/Program Files/Google/Nik Collection/Analog Efex Pro 2/Analog Efex Pro 2.exe",
      },
      DtPluginIsA = {
        processor = true,
        shortcut = false,
        action = false,
        storage = false,
        lib = false,
      },
      DtPluginInputFormats = {
        raw = false,
        jpg = false,
        png = false,
        tif = true,
      },
      DtPluginMinImages = 1,
      DtPluginProcessorWidget = nil,
      DtPluginActivate = {
        DtPluginRegisterProcessor = "plugins/Nik_Collection/nik_collection_processor_cmd.lua",
      },
      DtPluginDeactivate = {
          DtPluginUnregisterProcessor = nil
      },
    },
    {
      DtPluginName = "Color Efex Pro 4",
      DtPluginPreference = "color_efex_pro_4",
      DtPluginDoc = {
        Sections = {"Name", "Usage", "License"},
        Name = "Color Efex Pro 4",
        Usage = [[Activate the plugin.
                select an image or images for editing with Color Efex Pro 4
                in the processor combobox select 'Color Efex Pro 4'
                select the format and bit depth for the exported image
                Press Process
                Edit the image with Color Efex Pro 4 then save the changes
                which will cause Color Efex Pro 4 to exit.
                The edited image will be imported and grouped with the original image]],
        License = "GPL Version 2",
      },
      DtVersionRequired = {"3.0.0","4.0.0"},
      DtPluginDataDir = nil,
      DtPluginExecutablesRequired = {
        "$HOME/.wine/drive_c/Program Files/Google/Nik Collection/Color Efex Pro 4/Color Efex Pro 4.exe",
      },
      DtPluginIsA = {
        processor = true,
        shortcut = false,
        action = false,
        storage = false,
        lib = false,
      },
      DtPluginInputFormats = {
        raw = false,
        jpg = false,
        png = false,
        tif = true,
      },
      DtPluginMinImages = 1,
      DtPluginProcessorWidget = nil,
      DtPluginActivate = {
        DtPluginRegisterProcessor = "plugins/Nik_Collection/nik_collection_processor_cmd.lua",
      },
      DtPluginDeactivate = {
          DtPluginUnregisterProcessor = nil
      },
    },
    {
      DtPluginName = "Dfine 2",
      DtPluginPreference = "dfine_2",
      DtPluginDoc = {
        Sections = {"Name", "Usage", "License"},
        Name = "Dfine 2",
        Usage = [[Activate the plugin.
                select an image or images for editing with Dfine 2
                in the processor combobox select 'Dfine 2'
                select the format and bit depth for the exported image
                Press Process
                Edit the image with Dfine 2 then save the changes
                which will cause Dfine 2 to exit
                The edited image will be imported and grouped with the original image]],
        License = "GPL Version 2",
      },
      DtVersionRequired = {"3.0.0","4.0.0"},
      DtPluginDataDir = nil,
      DtPluginExecutablesRequired = {
        "$HOME/.wine/drive_c/Program Files/Google/Nik Collection/Dfine 2/Dfine2.exe",
      },
      DtPluginIsA = {
        processor = true,
        shortcut = false,
        action = false,
        storage = false,
        lib = false,
      },
      DtPluginInputFormats = {
        raw = false,
        jpg = false,
        png = false,
        tif = true,
      },
      DtPluginMinImages = 1,
      DtPluginProcessorWidget = nil,
      DtPluginActivate = {
        DtPluginRegisterProcessor = "plugins/Nik_Collection/nik_collection_processor_cmd.lua",
      },
      DtPluginDeactivate = {
          DtPluginUnregisterProcessor = nil
      },
    },
    {
      DtPluginName = "HDR Efex Pro 2",
      DtPluginPreference = "hdr_efex_pro_2",
      DtPluginDoc = {
        Sections = {"Name", "Usage", "License"},
        Name = "HDR Efex Pro 2",
        Usage = [[Activate the plugin.
                select an image or images for editing with HDR Efex Pro 2
                in the processor combobox select 'HDR Efex Pro 2'
                select the format and bit depth for the exported image
                Press Process
                Edit the image with HDR Efex Pro 2 then save the changes
                which will cause HDR Efex Pro 2 to exit.
                The edited image will be imported and grouped with the original image]],
        License = "GPL Version 2",
      },
      DtVersionRequired = {"3.0.0","4.0.0"},
      DtPluginDataDir = nil,
      DtPluginExecutablesRequired = {
        "$HOME/.wine/drive_c/Program Files/Google/Nik Collection/HDR Efex Pro 2/HDR Efex Pro 2.exe",
      },
      DtPluginIsA = {
        processor = true,
        shortcut = false,
        action = false,
        storage = false,
        lib = false,
      },
      DtPluginInputFormats = {
        raw = false,
        jpg = false,
        png = false,
        tif = true,
      },
      DtPluginMinImages = 2,
      DtPluginProcessorWidget = nil,
      DtPluginActivate = {
        DtPluginRegisterProcessor = "plugins/Nik_Collection/nik_collection_hdr_processor_cmd.lua",
      },
      DtPluginDeactivate = {
          DtPluginUnregisterProcessor = nil
      },
    },
    {
      DtPluginName = "Sharpener Pro 3 (Raw Presharpener)",
      DtPluginPreference = "sharpener_pro_3_pre",
      DtPluginDoc = {
        Sections = {"Name", "Usage", "License"},
        Name = "Sharpener Pro 3",
        Usage = [[Activate the plugin.
                select an image or images for editing with Sharpener Pro 3
                in the processor combobox select 'Sharpener Pro 3'
                select the format and bit depth for the exported image
                Press Process
                Edit the image with Sharpener Pro 3 then save the changes
                which will cause Sharpener Pro 3 to exit.
                The edited image will be imported and grouped with the original image]],
        License = "GPL Version 2",
      },
      DtVersionRequired = {"3.0.0","4.0.0"},
      DtPluginDataDir = nil,
      DtPluginExecutablesRequired = {
        "$HOME/.wine/drive_c/Program Files/Google/Nik Collection/Sharpener Pro 3/SHP3RPS.exe",
      },
      DtPluginIsA = {
        processor = true,
        shortcut = false,
        action = false,
        storage = false,
        lib = false,
      },
      DtPluginInputFormats = {
        raw = false,
        jpg = false,
        png = false,
        tif = true,
      },
      DtPluginMinImages = 1,
      DtPluginProcessorWidget = nil,
      DtPluginActivate = {
        DtPluginRegisterProcessor = "plugins/Nik_Collection/nik_collection_processor_cmd.lua",
      },
      DtPluginDeactivate = {
          DtPluginUnregisterProcessor = nil
      },
    },
    {
      DtPluginName = "Sharpener Pro 3 (Post Sharpener)",
      DtPluginPreference = "sharpener_pro_3_post",
      DtPluginDoc = {
        Sections = {"Name", "Usage", "License"},
        Name = "Sharpener Pro 3",
        Usage = [[Activate the plugin.
                select an image or images for editing with Sharpener Pro 3
                in the processor combobox select 'Sharpener Pro 3'
                select the format and bit depth for the exported image
                Press Process
                Edit the image with Sharpener Pro 3 then save the changes
                which will cause Sharpener Pro 3 to exit.
                The edited image will be imported and grouped with the original image]],
        License = "GPL Version 3",
      },
      DtVersionRequired = {"3.0.0","4.0.0"},
      DtPluginDataDir = nil,
      DtPluginExecutablesRequired = {
        "$HOME/.wine/drive_c/Program Files/Google/Nik Collection/Sharpener Pro 3/SHP3OS.exe",
      },
      DtPluginIsA = {
        processor = true,
        shortcut = false,
        action = false,
        storage = false,
        lib = false,
      },
      DtPluginInputFormats = {
        raw = false,
        jpg = false,
        png = false,
        tif = true,
      },
      DtPluginMinImages = 1,
      DtPluginProcessorWidget = nil,
      DtPluginActivate = {
        DtPluginRegisterProcessor = "plugins/Nik_Collection/nik_collection_processor_cmd.lua",
      },
      DtPluginDeactivate = {
          DtPluginUnregisterProcessor = nil
      },
    },
    {
      DtPluginName = "Silver Efex Pro 2",
      DtPluginPreference = "silver_efex_pro_2",
      DtPluginDoc = {
        Sections = {"Name", "Usage", "License"},
        Name = "Silver Efex Pro 2",
        Usage = [[Activate the plugin.
                select an image or images for editing with Silver Efex Pro 2
                in the processor combobox select 'Silver Efex Pro 2'
                select the format and bit depth for the exported image
                Press Process
                Edit the image with Silver Efex Pro 2 then save the changes
                which will cause Silver Efex Pro 2 to exit.
                The edited image will be imported and grouped with the original image]],
        License = "GPL Version 2",
      },
      DtVersionRequired = {"3.0.0","4.0.0"},
      DtPluginDataDir = nil,
      DtPluginExecutablesRequired = {
        "$HOME/.wine/drive_c/Program Files/Google/Nik Collection/Silver Efex Pro 2/Silver Efex Pro 2.exe",
      },
      DtPluginIsA = {
        processor = true,
        shortcut = false,
        action = false,
        storage = false,
        lib = false,
      },
      DtPluginInputFormats = {
        raw = false,
        jpg = false,
        png = false,
        tif = true,
      },
      DtPluginMinImages = 1,
      DtPluginProcessorWidget = nil,
      DtPluginActivate = {
        DtPluginRegisterProcessor = "plugins/Nik_Collection/nik_collection_processor_cmd.lua",
      },
      DtPluginDeactivate = {
          DtPluginUnregisterProcessor = nil
      },
    },
    {
      DtPluginName = "Viveza 2",
      DtPluginPreference = "viveza_2",
      DtPluginDoc = {
        Sections = {"Name", "Usage", "License"},
        Name = "Viveza 2",
        Usage = [[Activate the plugin.
                select an image or images for editing with Viveza 2
                in the processor combobox select 'Viveza 2'
                select the format and bit depth for the exported image
                Press Process
                Edit the image with Viveza 2 then save the changes
                which will cause Viveza 2 to exit
                The edited image will be imported and grouped with the original image]],
        License = "GPL Version 2",
      },
      DtVersionRequired = {"3.0.0","4.0.0"},
      DtPluginDataDir = nil,
      DtPluginExecutablesRequired = {
        "$HOME/.wine/drive_c/Program Files/Google/Nik Collection/Viveza 2/Viveza 2.exe",
      },
      DtPluginIsA = {
        processor = true,
        shortcut = false,
        action = false,
        storage = false,
        lib = false,
      },
      DtPluginInputFormats = {
        raw = false,
        jpg = false,
        png = false,
        tif = true,
      },
      DtPluginMinImages = 1,
      DtPluginProcessorWidget = nil,
      DtPluginActivate = {
        DtPluginRegisterProcessor = "plugins/Nik_Collection/nik_collection_processor_cmd.lua",
      },
      DtPluginDeactivate = {
          DtPluginUnregisterProcessor = nil
      },
    },
  },
}
