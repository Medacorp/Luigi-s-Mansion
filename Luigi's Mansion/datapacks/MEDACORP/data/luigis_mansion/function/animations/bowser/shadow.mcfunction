teleport @s ~ ~ ~

execute store result storage luigis_mansion:data macro.x double 0.01 run data get entity @s Pos[0] 100
execute store result storage luigis_mansion:data macro.y int 1 run data get entity @s Pos[1] 1
execute store result storage luigis_mansion:data macro.z double 0.01 run data get entity @s Pos[2] 100
function luigis_mansion:animations/bowser/shadow_position with storage luigis_mansion:data macro