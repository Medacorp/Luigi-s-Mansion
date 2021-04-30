scoreboard players operation #temp Time = @s PathStep
scoreboard players operation #temp HomeRotX = @s HomeRotX
scoreboard players operation #temp HomeRotY = @s HomeRotY
scoreboard players operation #temp HomeX = @s HomeX
scoreboard players operation #temp HomeY = @s HomeY
scoreboard players operation #temp HomeZ = @s HomeZ
scoreboard players add @s Time 1
tag @s add me
execute as @e[type=minecraft:marker,tag=flashlight,tag=!me,scores={Time=1}] if score @s HomeRotX = #temp HomeRotX if score @s HomeRotY = #temp HomeRotY if score @s HomeX = #temp HomeX if score @s HomeY = #temp HomeY if score @s HomeZ = #temp HomeZ run tag @e[type=minecraft:marker,tag=me,limit=1] add ignore
tag @s remove me
execute if entity @s[scores={Time=1},tag=!ignore] run function luigis_mansion:entities/flashlight/set_light
execute if entity @s[scores={Time=2},tag=!ignore] run function luigis_mansion:entities/flashlight/remove_light
tag @s remove ignore
scoreboard players reset #temp Time
scoreboard players reset #temp HomeRotX
scoreboard players reset #temp HomeRotY
scoreboard players reset #temp HomeX
scoreboard players reset #temp HomeY
scoreboard players reset #temp HomeZ