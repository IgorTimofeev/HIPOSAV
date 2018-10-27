--        Programming&designed
--  ___  ____            _____ ______         
--  |  \/  (_)          /  __ \| ___ \        
--  | .  . |_ _ __   ___| /  \/| |_/ /        
--  | |\/| | | '_ \ / _ \ |    |    /         
--  | |  | | | | | |  __/ \__/\| |\ \         
--  \_|  |_/_|_____|\___|\____/\_| \_|        
--    ___    |  ___|                          
--   ( _ )   | |_ _ __ ___  _ __  _   _ _ __  
--   / _ \/\ |  _| '__/ _ \| '_ \| | | | '_ \ 
--  | (_>  < | | | | | (_) | | | | |_| | | | |
--   \___/\/ \_| |_|  \___/|_| |_|\__,_|_| |_|

-- благодарочка Фронуну от Майна

local fs = require("filesystem")
local event = require("event")
local component = require("component")
local computer = require("computer")
local gpu = component.gpu
local term = require("term")
local shell = require("shell")
local image = require("image")
local GUI = require("GUI")
local MineOSInterface = require("MineOSInterface")
local Version = "box N1"
local MineOSCore = require("MineOSCore")
XScr, YScr = gpu.getResolution()
fs.makeDirectory("/3dm/")

local logo = [[28140000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF FFD700▄FFCF00▄FFCF00▄FFA400▄FF7800▄FF7300▄FF7300▄D74800▄CF4D00▄A44D00▄A44D00▄A44800▄CF4800▄D74800▄FF7300▄FFA400▄FFCF00▄FFD700▄0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF FFCF00▄FFA400▄D7A400▄CF9F00▄CF7300▄CF7800▄A47800▄A47800▄737800▄737800▄780000 780000 780000 4D7800▄4D7800▄4D7800▄4D7800▄4D7800▄4D7800▄4D7800▄4D0000 4D0000 4D0000 4D0000 4D0000 4D0000 487800▄737800▄A47800▄A47300▄CF7300▄FFA400▄FFA400▄FFD400▄0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 6D0000 423D00▄733D00▄784200▄A44200▄A47300▄A40000 A40000 78A400▄78A400▄78A400▄78A400▄78A400▄78A900▄78A900▄78A900▄78A900▄78A900▄78A900▄78A900▄780000 780000 780000 780000 780000 780000 780000 780000 780000 780000 780000 78A400▄78A400▄78A900▄78A900▄A4A900▄D7D400▄0000FF 0000FF 0000FF 6D0000 3D0000 3D0000 3D0000 3D0000 3D0000 423D00▄734200▄A44800▄A97800▄D4A400▄D40000 D40000 D40000 D40000 D40000 D40000 D40000 D40000 D40000 A90000 A90000 A90000 A9A400▄A9A400▄A40000 A40000 A40000 A4A900▄A4A900▄A4A900▄A90000 A90000 A90000 A90000 A90000 D40000 0000FF 0000FF 0000FF 423D00▄3D3800▄3D0000 3D0000 3D0000 3D4200▄420000 420000 424700▄424700▄487300▄787300▄A47800▄D47800▄D4A400▄D7A900▄D4A900▄D4A900▄D4A900▄A9A400▄A90000 A90000 A90000 A4A900▄A40000 A40000 A40000 A9A400▄A9A400▄A9A400▄A90000 A90000 A90000 A90000 A90000 A90000 D40000 0000FF 0000FF 0000FF 3D0000 380000 3D0000 3D0000 3D4200▄420000 420000 424800▄487300▄730000 737800▄780000 780000 780000 780000 A40000 A90000 A90000 A90000 A40000 A90000 A90000 A90000 A90000 A40000 A40000 A40000 A40000 A40000 A40000 A40000 A40000 A9A400▄A90000 A90000 A9A400▄D40000 0000FF 0000FF 0000FF 3D0000 380000 3D0000 3D0000 420000 420000 424700▄487300▄737800▄780000 780000 780000 780000 780000 78A400▄A9A400▄A90000 A90000 A90000 A40000 A90000 A90000 A90000 A90000 A40000 A40000 A40000 A40000 A40000 A40000 A40000 A40000 A40000 A90000 A90000 A40000 D40000 0000FF 0000FF 0000FF 3D0000 3D0000 3D0000 3D4200▄420000 420000 487300▄730000 780000 780000 780000 780000 780000 A47800▄780000 780000 A47800▄A97800▄A9A400▄A40000 A90000 A90000 A90000 A9A400▄A40000 A47800▄780000 780000 780000 A47800▄A47800▄A40000 A40000 A40000 A9A400▄A40000 D40000 0000FF 0000FF 0000FF 3D0000 3D0000 3D0000 420000 420000 420000 730000 730000 780000 780000 780000 780000 780000 780000 780000 780000 780000 780000 780000 A47800▄A97800▄A90000 A9A400▄A40000 A47800▄780000 780000 780000 780000 780000 780000 A47800▄A40000 A40000 A40000 A40000 D40000 0000FF 0000FF 0000FF 3D6800▄3D0000 3D0000 420000 420000 420000 734800▄730000 780000 780000 780000 780000 780000 780000 780000 780000 780000 780000 780000 780000 780000 780000 780000 784800▄784800▄784800▄787300▄780000 780000 780000 780000 780000 780000 A47800▄A47800▄A47800▄D40000 0000FF 0000FF 0000FF 680000 3D0000 3D0000 420000 420000 420000 484700▄734800▄730000 730000 730000 780000 780000 780000 780000 780000 780000 787300▄784800▄734800▄480000 480000 480000 480000 480000 480000 480000 480000 480000 480000 480000 480000 480000 480000 480000 480000 CF0000 0000FF 0000FF 0000FF 680000 3D0000 3D0000 3D0000 420000 420000 420000 420000 420000 484200▄484200▄484300▄480000 484D00▄484D00▄484D00▄4D0000 4D0000 4D0000 4D0000 4D0000 4D0000 484D00▄484D00▄480000 480000 480000 480000 480000 480000 480000 480000 480000 480000 480000 480000 CF0000 0000FF 0000FF 0000FF 680000 3D3800▄3D3800▄3D0D00▄3D0D00▄3D1200▄3D1200▄120000 170000 171800▄430000 480000 480000 4D0000 4D0000 4D4800▄4D0000 4D0000 4D0000 4D0000 4D0000 4D4800▄4D4800▄4D0000 4D0000 4D0000 484D00▄480000 480000 184800▄430000 431800▄484300▄484300▄484300▄484300▄CF0000 0000FF 0000FF 0000FF 3DD700▄0D6D00▄120000 120000 120000 120000 120000 170000 170000 180000 430000 480000 480000 4D0000 4D4800▄480000 4D0000 4D0000 4D4800▄480000 480000 480000 480000 480000 480000 480000 480000 480000 480000 480000 480000 480000 480000 184800▄184800▄180000 CF0000 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 3DD700▄129E00▄171200▄171800▄171800▄180000 184300▄430000 430000 480000 480000 480000 480000 4D0000 4D0000 4D0000 484D00▄480000 480000 480000 480000 480000 480000 480000 480000 480000 480000 480000 480000 48A400▄48D700▄73FF00▄A4FF00▄0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 9EFF00▄17CF00▄434200▄430000 430000 430000 434800▄480000 480000 480000 480000 4D0000 4D0000 4D0000 4D0000 4D0000 4D0000 484D00▄484D00▄484D00▄484D00▄480000 480000 48A400▄48D400▄73FF00▄CFFF00▄0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 72FF00▄42D700▄436D00▄484300▄480000 480000 480000 430000 4D0000 4D0000 4D0000 4D0000 4D0000 4D0000 4D4800▄4DA400▄48D400▄73FF00▄CFFF00▄0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 6DFF00▄439F00▄484300▄484300▄430000 4D0000 524D00▄4D7300▄4DA400▄48D700▄78FF00▄CFFF00▄0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 9FFF00▄42FF00▄78FF00▄CFFF00▄0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF 0000FF ]]
logo = image.fromString(logo)

local kat = {
{"buttonbig", "Рычаг вкл|выкл (выдает сигнал редстоуна)"},
{"danger", "Знак опасности (Черный череп на желтом фоне)"},
{"oknosmall", "Окно маленькое (Можно закрывать жалюзи)"},
{"pushka", "Пушка старинная 17 век (Декор)"},
{"stolbeliy", "Белый стол с одной центральной ножкой (Как в столовой)"},
{"stulbeliy", "Белый стул, удобный, прочный, красивый."},
{"teledomofon", "Настенный телефон или домофон, белый."},
{"tribike", "Детский трехколесный велосипед, синий."},
{"urna", "Черная мусорная урна, внутри немного мусора."},
{"aclock", "Настенные аналоговые часы со стрелками."},
{"passdoor", "Кодовый дверной замок, уличный домофон (Декор)"},
{"kvakva", "Зеленая болотная лягушка."},
{"kolu4ka", "Колючая проволка на забор, спиральная (Декор)"},
{"Oskar", "Статуэтка `Оскар` лучшему игроку (Декор)"},
{"kotelok", "Котелок выживальщика над догорающим костром"},
}

local mainContainerXY = GUI.fullScreenContainer()
local xwd = mainContainerXY.width
local linewd = "_"

for i = 1,xwd - 60 do
 linewd = linewd.."_"
end 

local mainContainer, window = MineOSInterface.addWindow(GUI.titledWindow(1, 1, xwd, 46, "Katalog3d "..Version, true))

window:addChild(GUI.image(2, 10, logo))
window:addChild(GUI.text(10, 32, 0x004980, string.limit("Сборник готовых 3д моделей",40)))
window:addChild(GUI.text(12,34, 0x004980, string.limit("для печати на принтере",40)))
window:addChild(GUI.text(16, 36, 0x004980, string.limit("в формате 3dm",40)))
window:addChild(GUI.text(16,39, 0x004980, string.limit("Автор: MineCR",40)))
window:addChild(GUI.text(8, 41, 0x004980, string.limit("создано на проекте guild-bt.ru",40)))
window:addChild(GUI.text(13,5, 0x004980, string.limit("Для удобства работы",40)))
window:addChild(GUI.text(16,6, 0x004980, string.limit("с приложением",40)))
window:addChild(GUI.text(12, 7, 0x004980, string.limit("используйте разрешение",40)))
window:addChild(GUI.text(15, 8, 0x004980, string.limit("не менее 150х50",40)))
local x, y, width, horizontalSpace, verticalSpace = 45, 3, 10, 2, 0
for i = 1, #kat do
  window:addChild(GUI.text(x, y, 0xB62B00, string.limit(kat[i][1],width)))
  window:addChild(GUI.text(x+15, y, 0x696969, string.limit(kat[i][2],xwd- x-29)))
  window:addChild(GUI.text(x, y + 1, 0xB62B00, string.limit(linewd,xwd- width-5)))
  window:addChild(GUI.framedButton(xwd - 11, y-1, width, 3, 0x696969, 0x00B600, 0x880000, 0x880000, "Download")).onTouch = function()
    local file = kat[i][1] .. ".3dm"
   
      mainContainer:drawOnScreen()
        loadfile("/bin/wget.lua")("https://raw.githubusercontent.com/alexexe82/HIPOSAV/master/3dm/" .. file, "/3dm/" .. file, "-FQ")
    GUI.alert("Загрузка завершена! Файл находится по адресу /3dm/" .. file)
  
  end

  y =  y + verticalSpace + 3

end


mainContainer:drawOnScreen()

