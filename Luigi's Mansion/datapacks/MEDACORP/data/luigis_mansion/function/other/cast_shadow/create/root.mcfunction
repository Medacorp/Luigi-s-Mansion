summon minecraft:marker ~ ~ ~ {Tags:["light_position"]}
scoreboard players operation #temp LightX = @s LightX
scoreboard players operation #temp LightY = @s LightY
scoreboard players operation #temp LightZ = @s LightZ
execute store result score #temp PositionY run data get entity @s Pos[1] 10
function luigis_mansion:other/cast_shadow/create/offset_target
tag @s add me
execute as @e[tag=light_position,limit=1] run function luigis_mansion:other/cast_shadow/create/marker
tag @s remove me
execute store result entity @s Pos[1] double 0.1 run scoreboard players get #temp PositionY
scoreboard players reset #temp LightX
scoreboard players reset #temp LightY
scoreboard players reset #temp LightZ
scoreboard players reset #temp Time
scoreboard players reset #temp PositionY