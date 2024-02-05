execute store result score @s JumpHeight run data get entity @s Pos[1] 100
scoreboard players operation @s JumpHeight -= @s HomeY
teleport @s ~ ~ ~ ~ ~-1
execute if predicate luigis_mansion:boo_up_down_chance run tag @s remove move_up
tag @s[scores={JumpHeight=490..}] add move_down_now
execute at @s[tag=move_down_now] run teleport @s ~ ~ ~ ~ 0
tag @s[tag=move_down_now] remove move_up
tag @s remove move_down_now
execute if score #temp Move matches 1.. at @s run function luigis_mansion:old_entities/boolossus/move_forward