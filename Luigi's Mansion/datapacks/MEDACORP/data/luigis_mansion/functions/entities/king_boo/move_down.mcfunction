execute store result score @s JumpHeight run data get entity @s Pos[1] 100
scoreboard players operation @s JumpHeight -= @s HomeY
teleport @s ~ ~ ~ ~ ~1
execute if predicate luigis_mansion:boo_up_down_chance run tag @s add move_up
tag @s[scores={JumpHeight=..-90}] add move_up_now
execute at @s[tag=move_up_now] run teleport @s ~ ~ ~ ~ 0
tag @s[tag=move_up_now] add move_up
tag @s remove move_up_now
execute if score #temp Move matches 1.. at @s run function luigis_mansion:entities/king_boo/move_forward