execute if block ~ ~ ~0.308 #luigis_mansion:all_ignore if block ~ ~1 ~0.308 #luigis_mansion:all_ignore run tag @s add can_move_positive
execute if block ~ ~ ~-0.304 #luigis_mansion:all_ignore if block ~ ~1 ~-0.308 #luigis_mansion:all_ignore run tag @s add can_move_negative
teleport @s[scores={SlipZ=1..},tag=can_move_positive] ~ ~ ~0.008
teleport @s[scores={SlipZ=..-1},tag=can_move_negative] ~ ~ ~-0.008
tag @s[scores={SlipZ=1..},tag=!can_move_positive] add poltergust_wall_sound
tag @s[scores={SlipZ=..-1},tag=!can_move_negative] add poltergust_wall_sound
tag @s[scores={SlipZ=1..},tag=!can_move_positive] add z_stop
tag @s[scores={SlipZ=..-1},tag=!can_move_negative] add z_stop
scoreboard players set @s[scores={SlipZ=1..},tag=!can_move_positive] SlipZ 0
scoreboard players set @s[scores={SlipZ=..-1},tag=!can_move_negative] SlipZ 0
tag @s remove can_move_positive
tag @s remove can_move_negative
scoreboard players remove @s[scores={SlipZ=1..}] SlipZ 1
scoreboard players add @s[scores={SlipZ=..-1}] SlipZ 1
execute unless score @s SlipZ matches 0 at @s run function luigis_mansion:entities/player/riding_poltergust/slip_z