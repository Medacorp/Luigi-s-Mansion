execute store result score @s JumpHeight run data get entity @s Pos[1] 100
scoreboard players operation @s JumpHeight -= @s HomeY
teleport @s ~ ~0.1 ~
tag @s[scores={JumpHeight=320..}] remove move_up
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRot
execute if score #temp Move matches 1.. at @s rotated ~ 0 run function luigis_beta_mansion:entities/beta_shining_ghost/move_forward
execute positioned as @s run teleport @s ~ ~ ~ ~ ~