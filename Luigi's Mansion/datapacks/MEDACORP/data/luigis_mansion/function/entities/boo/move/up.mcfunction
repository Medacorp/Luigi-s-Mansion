execute store result score @s JumpHeight run data get entity @s Pos[1] 100
scoreboard players operation @s JumpHeight -= @s HomeY
teleport @s ~ ~ ~ ~ ~-1
execute if predicate luigis_mansion:boo/up_down_chance run tag @s remove move_up
tag @s[scores={JumpHeight=490..}] remove move_up
execute at @s[tag=!move_up] run teleport @s ~ ~ ~ ~ 0
execute if score #temp Move matches 1.. at @s run function luigis_mansion:entities/boo/move/forward