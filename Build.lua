-- premake5.lua
workspace "Reclipse"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "Reclipse-App"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group "Reclipse"
   include "Reclipse/Build-Reclipse.lua"
group ""

include "Reclipse-App/Build-Reclipse-App.lua"
