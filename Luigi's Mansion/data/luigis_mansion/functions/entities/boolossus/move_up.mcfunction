execute store result score @s JumpHeight run data get entity @s Pos[1] 100
teleport @s ~ ~0.125 ~
tag @s[scores={JumpHeight=4550..}] remove move_up
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRot
execute if score #temp Move matches 1.. at @s run function luigis_mansion:entities/boo/move_forward
execute positioned as @s run teleport @s ~ ~ ~ ~ ~