execute unless score @s SlipX matches 0 at @s run function luigis_mansion:entities/player/riding_poltergust/slip_x
scoreboard players reset #temp Time
execute unless score @s SlipZ matches 0 at @s run function luigis_mansion:entities/player/riding_poltergust/slip_z
scoreboard players reset #temp Time

execute store result score @s SlipX run data get entity @s Pos[0] 100
execute store result score @s SlipZ run data get entity @s Pos[2] 100
scoreboard players operation @s SlipX -= @s PositionX
scoreboard players operation @s SlipZ -= @s PositionZ
scoreboard players reset #temp SlipX
scoreboard players reset #temp SlipZ
scoreboard players set @s[tag=x_stop] SlipX 0
scoreboard players set @s[tag=z_stop] SlipZ 0
tag @s remove x_stop
tag @s remove z_stop