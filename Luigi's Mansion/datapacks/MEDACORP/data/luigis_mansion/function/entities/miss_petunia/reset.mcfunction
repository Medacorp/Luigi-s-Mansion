execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRotation
scoreboard players set @s ActionTime 0
function luigis_mansion:entities/miss_petunia/reset_mansion_specific with entity @s data.mansion
function luigis_mansion:entities/miss_petunia/save_stats