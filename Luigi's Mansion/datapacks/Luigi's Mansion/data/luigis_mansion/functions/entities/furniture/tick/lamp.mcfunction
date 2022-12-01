tag @s remove dark_room
execute if entity @s[tag=!dead,tag=!remove_from_existence] run function #luigis_mansion:room/dark_room
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @s add dark_room

execute store result score #temp Time run data get entity @s ArmorItems[3].tag.CustomModelData
execute if entity @s[tag=was_dark_room,tag=!dark_room] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players operation #temp Time += @s LampModel
execute if entity @s[tag=!was_dark_room,tag=dark_room] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players operation #temp Time -= @s LampModel
scoreboard players reset #temp Time

summon minecraft:marker ~ ~1.4 ~ {Tags:["location","remove_from_existence"]}
scoreboard players operation #temp Time = @s LampForward
scoreboard players operation #temp2 Time = @s LampUp
execute unless score #temp Time matches 0 as @e[tag=location,limit=1] positioned as @s run function luigis_mansion:entities/furniture/tick/spawn_contents/move_forward
execute unless score #temp2 Time matches 0 as @e[tag=location,limit=1] positioned as @s run function luigis_mansion:entities/furniture/tick/spawn_contents/move_up
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
execute positioned as @e[tag=location,limit=1] run function luigis_mansion:entities/furniture/tick/lamp_light
kill @e[tag=location,limit=1]

execute if entity @s[tag=falling] run function luigis_mansion:entities/furniture/tick/lamp_fall

tag @s[tag=dark_room] add was_dark_room
tag @s[tag=!dark_room] remove was_dark_room