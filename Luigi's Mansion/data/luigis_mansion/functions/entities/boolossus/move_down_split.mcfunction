execute store result score @s HomeY run data get entity @s Pos[1] 100
teleport @s ~ ~-0.125 ~
tag @s[tag=split,scores={HomeY=..4100}] add move_up
tag @s[tag=!split,scores={HomeY=..4300}] add move_up
execute store result score @s[tag=move_up] HomeRot run data get entity @s Rotation[0]
execute if entity @s[tag=!split] store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRot
execute if score #temp Move matches 1.. at @s run function luigis_mansion:entities/boo/move_forward_no_direction
execute positioned as @s run teleport @s ~ ~ ~ ~ ~