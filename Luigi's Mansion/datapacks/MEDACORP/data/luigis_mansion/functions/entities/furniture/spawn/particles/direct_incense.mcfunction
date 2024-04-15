execute store result score #temp4 Time run data get entity @s Pos[0] 100
execute store result score #temp5 Time run data get entity @s Pos[1] 100
execute store result score #temp6 Time run data get entity @s Pos[2] 100
$teleport @s ^ ^ ^$(power)
execute store result score #temp Time run data get entity @s Pos[0] 100
execute store result score #temp2 Time run data get entity @s Pos[1] 100
execute store result score #temp3 Time run data get entity @s Pos[2] 100
data modify storage luigis_mansion:data macro set value {x:0.0f,y:0.0f,z:0.0f}
execute store result storage luigis_mansion:data macro.x float 0.01 run scoreboard players operation #temp Time -= #temp4 Time
execute store result storage luigis_mansion:data macro.y float 0.01 run scoreboard players operation #temp2 Time -= #temp5 Time
execute store result storage luigis_mansion:data macro.z float 0.01 run scoreboard players operation #temp3 Time -= #temp6 Time
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
scoreboard players reset #temp4 Time
scoreboard players reset #temp5 Time
scoreboard players reset #temp6 Time
teleport @s ~ ~ ~
function luigis_mansion:entities/furniture/spawn/particles/incense_spawn with storage luigis_mansion:data macro