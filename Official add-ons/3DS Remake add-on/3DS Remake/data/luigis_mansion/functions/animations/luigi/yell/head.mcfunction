execute if entity @s[tag=!gooigi_model] if score #mirrored Selected matches 0 run function luigis_mansion:animations/luigi/yell/normal/head
execute if entity @s[tag=!gooigi_model] if score #mirrored Selected matches 1 run function luigis_mansion:animations/luigi/yell/mirrored/head
execute if entity @s[tag=gooigi_model] run function 3ds_remake:animations/gooigi/wave/head