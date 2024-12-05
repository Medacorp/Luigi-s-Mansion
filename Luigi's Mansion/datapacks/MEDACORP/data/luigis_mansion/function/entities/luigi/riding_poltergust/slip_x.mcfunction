execute if block ~0.304 ~ ~ #luigis_mansion:all_ignore if block ~0.304 ~1 ~ #luigis_mansion:all_ignore run tag @s add can_move_positive
execute if block ~-0.304 ~ ~ #luigis_mansion:all_ignore if block ~-0.304 ~1 ~ #luigis_mansion:all_ignore run tag @s add can_move_negative
execute if entity @s[scores={SlipX=1..},tag=can_move_positive] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~0.008 ~ ~"}
execute if entity @s[scores={SlipX=..-1},tag=can_move_negative] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-0.008 ~ ~"}
tag @s[scores={SlipX=1..},tag=!can_move_positive] add poltergust_wall_sound
tag @s[scores={SlipX=..-1},tag=!can_move_negative] add poltergust_wall_sound
tag @s[scores={SlipX=1..},tag=!can_move_positive] add x_stop
tag @s[scores={SlipX=..-1},tag=!can_move_negative] add x_stop
scoreboard players set @s[scores={SlipX=1..},tag=!can_move_positive] SlipX 0
scoreboard players set @s[scores={SlipX=..-1},tag=!can_move_negative] SlipX 0
tag @s remove can_move_positive
tag @s remove can_move_negative
scoreboard players remove @s[scores={SlipX=1..}] SlipX 1
scoreboard players add @s[scores={SlipX=..-1}] SlipX 1
execute unless score @s SlipX matches 0 at @s run function luigis_mansion:entities/luigi/riding_poltergust/slip_x