execute if entity @s[tag=!no_ai] run function luigis_mansion:entities/furniture/ai with entity @s data
execute if entity @s[tag=!candle_flame,type=minecraft:item_display] run function luigis_mansion:entities/furniture/brightness_fix

execute if entity @s[nbt={data:{furniture_type:"door"}}] run function luigis_mansion:entities/furniture/door
execute if entity @s[nbt=!{data:{furniture_type:"door"}}] run function luigis_mansion:animations/furniture