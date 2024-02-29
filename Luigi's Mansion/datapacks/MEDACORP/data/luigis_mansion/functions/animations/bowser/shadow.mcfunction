teleport @s ~ ~ ~

execute store result storage luigis_mansion:data macro.x int 1 run data get entity @s Pos[0]
execute store result storage luigis_mansion:data macro.y int 1 run data get entity @s Pos[1]
execute store result storage luigis_mansion:data macro.z int 1 run data get entity @s Pos[2]
function luigis_mansion:animations/bowser/shadow_position with storage luigis_mansion:data macro