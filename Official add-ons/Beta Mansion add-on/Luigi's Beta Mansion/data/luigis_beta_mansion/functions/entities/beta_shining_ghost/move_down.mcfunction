teleport @s ~ ~-0.1 ~
execute unless block ~ ~0.2 ~ #luigis_mansion:ghosts_ignore run tag @s add move_up
execute store result score @s[tag=move_up] HomeY run data get entity @s Pos[1] 100
execute store result score @s[tag=move_up] HomeRot run data get entity @s Rotation[0]
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRot
execute if score #temp Move matches 1.. at @s rotated ~ 0 run function luigis_beta_mansion:entities/beta_shining_ghost/move_forward
execute positioned as @s run teleport @s ~ ~ ~ ~ ~