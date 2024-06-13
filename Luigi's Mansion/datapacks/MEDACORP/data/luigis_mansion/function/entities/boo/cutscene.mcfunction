execute unless entity @s[scores={HomeY=-2147483648..}] store result score @s HomeY run data get entity @s Pos[1] 100

scoreboard players add @s ActionTime 1
scoreboard players operation #temp Move = @s Move
execute if entity @s[scores={ActionTime=..9}] run teleport @s ~ ~0.2 ~
execute at @s[scores={ActionTime=10}] run teleport @s ~ ~ ~ ~ 0
execute at @s[scores={ActionTime=10..},tag=move_up] run function luigis_mansion:entities/boo/move/up
execute at @s[scores={ActionTime=10..},tag=!move_up] run function luigis_mansion:entities/boo/move/down
execute at @s[scores={Time=600..}] run function luigis_mansion:entities/boo/rotate_random
execute if entity @s[tag=wall] run function luigis_mansion:entities/boo/warp_effects
scoreboard players reset #temp Move