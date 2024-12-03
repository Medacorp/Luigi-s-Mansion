execute at @s[tag=stop_model] run summon minecraft:marker ~ ~ ~ {Tags:["camera_position","remove_from_existence"]}
execute at @s[tag=stop_model] run teleport @e[tag=camera_position,limit=1] ~ ~ ~ ~ ~
teleport @s ~ 0 ~ ~ ~
teleport @s ~ ~ ~ ~ ~
tag @s[tag=stop_model] add source_only
tag @s remove stop_model
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s ID
execute at @s[tag=source_only,tag=!camera,tag=!dead_player] run function luigis_mansion:animations/luigi with storage luigis_mansion:data macro
tag @s[tag=source_only] add stop_model
tag @s remove source_only
execute if entity @s[tag=stop_model] store result score @s ModelPositionX run data get entity @s Pos[0] 100
execute if entity @s[tag=stop_model] store result score @s ModelPositionY run data get entity @s Pos[1] 100
execute if entity @s[tag=stop_model] store result score @s ModelPositionZ run data get entity @s Pos[2] 100
execute if entity @s[tag=stop_model] store result score @s ModelRotationX run data get entity @s Rotation[1]
execute if entity @s[tag=stop_model] store result score @s ModelRotationY run data get entity @s Rotation[0]
execute if entity @s[tag=stop_model] at @e[tag=camera_position,limit=1] run teleport @s ~ ~ ~ ~ ~
kill @e[tag=camera_position,limit=1]
function luigis_mansion:main/update_last_position