execute unless entity @s[tag=!looking_at_map,tag=!death_animation,tag=!revive_animation] run tag @s remove riding_poltergust
tag @s[scores={AnimationProgress=1..},tag=!idle] remove riding_poltergust

execute unless score @s SlipX matches 0 at @s[tag=riding_poltergust] run function luigis_mansion:entities/player/riding_poltergust/slip_x
scoreboard players reset #temp Time
execute unless score @s SlipZ matches 0 at @s[tag=riding_poltergust] run function luigis_mansion:entities/player/riding_poltergust/slip_z
scoreboard players reset #temp Time

execute store result score @s SlipX run data get entity @s Pos[0] 100
execute store result score @s SlipZ run data get entity @s Pos[2] 100
scoreboard players operation @s SlipX -= @s PositionX
scoreboard players operation @s SlipZ -= @s PositionZ
scoreboard players reset #temp SlipX
scoreboard players reset #temp SlipZ
scoreboard players set @s[tag=x_stop] SlipX 0
scoreboard players set @s[tag=z_stop] SlipZ 0
scoreboard players set @s[tag=!riding_poltergust] SlipX 0
scoreboard players set @s[tag=!riding_poltergust] SlipZ 0
tag @s remove x_stop
tag @s remove z_stop